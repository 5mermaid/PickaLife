Rails.application.routes.draw do
  get 'experiences/index'
  get 'experiences/new'
  get 'experiences/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#home"
end
