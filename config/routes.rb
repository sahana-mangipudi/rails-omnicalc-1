Rails.application.routes.draw do
  # Square routes
  get "/square/new", to: "square#new"
  get "/square/results", to: "square#results"

  # Square root routes
  get "/square_root/new", to: "square_root#new"
  post "/square_root", to: "square_root#calculate"

  # Random routes
  get "/random/new", to: "random#new"
  post "/random", to: "random#generate"

  # Payment routes
  get "/payment/new", to: "payment#new"
  post "/payment/result", to: "payment#calculate"
end
