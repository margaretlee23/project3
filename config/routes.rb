#                   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       users/sessions#new
#             user_session POST   /users/sign_in(.:format)       users/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      users/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                    lists GET    /lists(.:format)               lists#index
#                          POST   /lists(.:format)               lists#create
#                 new_list GET    /lists/new(.:format)           lists#new
#                edit_list GET    /lists/:id/edit(.:format)      lists#edit
#                     list GET    /lists/:id(.:format)           lists#show
#                          PATCH  /lists/:id(.:format)           lists#update
#                          PUT    /lists/:id(.:format)           lists#update
#                          DELETE /lists/:id(.:format)           lists#destroy
#                favorites GET    /favorites(.:format)           favorites#index
#                          POST   /favorites(.:format)           favorites#create
#             new_favorite GET    /favorites/new(.:format)       favorites#new
#            edit_favorite GET    /favorites/:id/edit(.:format)  favorites#edit
#                 favorite GET    /favorites/:id(.:format)       favorites#show
#                          PATCH  /favorites/:id(.:format)       favorites#update
#                          PUT    /favorites/:id(.:format)       favorites#update
#                          DELETE /favorites/:id(.:format)       favorites#destroy
#               home_index GET    /home(.:format)                home#index
#                     home GET    /home/:id(.:format)            home#show
#                     root GET    /                              home#index

Rails.application.routes.draw do

  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  # Devise config
  # devise_for :users, :controllers => {:registrations => "registrations"}

  resources :lists
  resources :favorites

  
  # root to: '/im-a-new-user', "home#landing" as: "landing_page"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  resources :home, only: [:index, :show]
  # You can have the root of your site routed with "root"
  root to:'home#index'


  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
