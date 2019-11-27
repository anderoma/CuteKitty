Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items 
<<<<<<< HEAD
	resources :users, only: [:show, :edit, :update]
	resources :contact, only: [:index]
	resources :chatons, only: [:index]
=======
  resources :cards, only:[:show]
>>>>>>> master
end
