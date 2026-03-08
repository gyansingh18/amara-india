Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root "pages#home"

  get "products", to: "pages#products", as: :products
  get "ai-tools", to: "pages#ai_tools", as: :ai_tools
  get "for-buyers", to: "pages#for_buyers", as: :for_buyers
  get "for-suppliers", to: "pages#for_suppliers", as: :for_suppliers
  get "about", to: "pages#about", as: :about
  get "blog", to: "pages#blog", as: :blog
  get "contact", to: "pages#contact", as: :contact
  get "login", to: "pages#login", as: :login
  get "signup", to: "pages#signup", as: :signup

  # AI tool landing pages
  get "ai-tools/supplier-finder", to: "pages#tool_supplier_finder", as: :tool_supplier_finder
  get "ai-tools/demand-analyzer", to: "pages#tool_demand_analyzer", as: :tool_demand_analyzer
  get "ai-tools/market-predictor", to: "pages#tool_market_predictor", as: :tool_market_predictor
  get "ai-tools/trade-intelligence", to: "pages#tool_trade_intelligence", as: :tool_trade_intelligence
  get "ai-tools/opportunity-scanner", to: "pages#tool_opportunity_scanner", as: :tool_opportunity_scanner

  # Supplier profile (sample)
  get "suppliers/:id", to: "pages#supplier", as: :supplier
end
