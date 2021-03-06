# Rails.application.routes.draw do
  
#   resources :user_projects
#   resources :artifacts
#   resources :tenants do 
#     resources :projects do 
#       get 'users' , on: :member 
#       put 'add_user', on: member 
#     end
#   end
#   resources :members
#   root :to => "home#index"
#   get 'home/index', as: :welcome

  
#   # *MUST* come *BEFORE* devise's definitions (below)
#   as :user do
#     match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
#   end

#   devise_for :users, :controllers => {
#     :registrations => "registrations",
#     :confirmations => "confirmations",
#     :sessions => "philia/sessions",
#     :passwords => "philia/passwords",
#   }
# match '/plan/edit' => 'tenants#edit', via: :get, as: :edit_plan
# match '/plan/update' => 'tenants#update', via: [:put, :patch], as: :update_plan

# end

Rails.application.routes.draw do

  resources :user_projects
  resources :artifacts
  resources :tenants do
    resources :projects do
      get 'users', on: :member 
      put 'add_user', on: :member 
    end
  end
   resources :members
      root :to => "home#index"
      get 'home/index', as: :welcome
    
  # *MUST* come *BEFORE* devise's definitions (below)
  as :user do   
    match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  end

  devise_for :users, :controllers => { 
    :registrations => "registrations",
    :confirmations => "confirmations",
    :sessions => "philia/sessions", 
    :passwords => "philia/passwords", 
  }
  
  match '/plan/edit' => 'tenants#edit', via: :get, as: :edit_plan
  match '/plan/update' => 'tenants#update', via: [:put, :patch], as: :update_plan


end