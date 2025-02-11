class SquareController < ApplicationController
  def new
    render :new
  end

  def results
    @the_num = params.fetch("user_number").to_f
    @the_result = (@the_num**2).round(2)
    render :results
  end
end

class SquareRootController < ApplicationController
  def new
    render :square_root
  end

  def calculate
    number = params[:number].to_f
    @result = Math.sqrt(number)
    render :square_result
  end
end
class RandomController < ApplicationController
  def new
    render :random
  end

  def generate
    min = params[:min].to_f
    max = params[:max].to_f
    @result = rand(min..max)
    render :result
  end
end
class PaymentController < ApplicationController
  include Helpers

  def new
    render :payment
  end

  def calculate
    apr = params[:apr].to_f / 100
    years = params[:years].to_i
    principal = params[:principal].to_f

    monthly_rate = apr / 12
    num_payments = years * 12
    monthly_payment = (principal * monthly_rate) / (1 - (1 + monthly_rate)**(-num_payments))

    @results = {
      monthly_payment: format_currency(monthly_payment),
      principal: format_currency(principal),
      apr: "#{(apr * 100).round(4)}%",
      years: years
    }

    render :result
  end
end
