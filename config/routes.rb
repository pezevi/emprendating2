Rails.application.routes.draw do
  get 'creatives/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  resources :ideas do
    resources :idea_likes
  end

  root to: "ideas#index"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
