Rails.application.routes.draw do
  resources :punches
  resources :pay_periods
  resources :users
  get 'static_pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
  post 'add_punch', to: 'static_pages#add_punch'
end
