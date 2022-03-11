Rails.application.routes.draw do
  
  namespace 'api' do
    resources :bills
  end

  resources :bills do
    match '/scrape', to: 'bills#scrape', via: :post, on: :collection
  end

  root to: 'bills#index'
end