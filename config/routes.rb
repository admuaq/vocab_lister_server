Rails.application.routes.draw do
  resources :card_collections
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :card
  resources :collection, only: [:create, :index, :destroy]

  get 'collection/:name' => 'collection#show'
  put 'collection/' => 'collection#update'

end
