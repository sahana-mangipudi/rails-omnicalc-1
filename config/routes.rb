Rails.application.routes.draw do
  root "calculators#square_new"

  get "/square/new", to: "calculators#square_new"
  get "/square/results", to: "calculators#square_results"

  get "/square_root/new", to: "calculators#square_root"
  post "/square_root/results", to: "calculators#square_root_result"  

  get "/random/new", to: "calculators#random_new"
  post "/random", to: "calculators#random_result"

  get "/payment/new", to: "calculators#payment_new"
  post "/payment/result", to: "calculators#payment_result"
end
