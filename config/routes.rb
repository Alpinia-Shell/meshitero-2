Rails.application.routes.draw do
  devise_for :users
  get 'about' => "homes#about", as:'about'
  root to: 'homes#top'
  resources :post_images, only:[:new, :index, :create, :show, :destroy]
  resources :users, only:[:show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
