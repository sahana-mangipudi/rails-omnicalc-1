class CalculatorsController < ApplicationController
  def square_new
  end

  def square_results
    @the_num = params[:user_number].to_f
    @the_result = (@the_num ** 2).round(4) 
  end
  

  def square_root_new
  end

  def square_root_results
    @number = params[:number].to_f
    @result = Math.sqrt(@number).round(3) 
  end
  

  def random_new
  end

  def random_result
    min = params[:min].to_f
    max = params[:max].to_f
    @result = rand(min..max)
  end

  def payment_new
  end

  def payment_result
    apr = params[:apr].to_f / 100
    years = params[:years].to_i
    principal = params[:principal].to_f

    monthly_rate = apr / 12
    num_payments = years * 12
    monthly_payment = (principal * monthly_rate) / (1 - (1 + monthly_rate)**(-num_payments))

    @results = {
      monthly_payment: ActionController::Base.helpers.number_to_currency(monthly_payment),
      principal: ActionController::Base.helpers.number_to_currency(principal),
      apr: "#{(apr * 100).round(4)}%",
      years: years
    }
  end
end
