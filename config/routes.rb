Rails.application.routes.draw do
  resources :bills do
    match '/scrape', to: 'bills#scrape', via: :post, on: :collection
  end

  root to: 'bills#index'
end