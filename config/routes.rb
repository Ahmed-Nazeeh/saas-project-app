Rails.application.routes.draw do
  
  resources :tenant do 
    resources :projects
  end
  resources :members
  root :to => "home#index"
  get 'home/index', as: :welcome

  
  # *MUST* come *BEFORE* devise's definitions (below)
  as :user do
    match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  end

  devise_for :users, :controllers => {
    :registrations => "philia/registrations",
    :confirmations => "confirmations",
    :sessions => "philia/sessions",
    :passwords => "philia/passwords",
  }


end
