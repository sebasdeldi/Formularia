Rails.application.routes.draw do
  devise_for :users
  root 'forms#index'
  resources :forms
  post 'forms/new'
  post 'forms/show', as: 'questions_answers'


  post '/forms/4', to: "pages#info"
  post '/forms/38', to: "pages#info"
  post '/forms/0', to: "pages#info"
  post '/forms/9195', to: "pages#info"
  post '/forms/878', to: "pages#info"
  post '/forms/879', to: "pages#info"
  post '/forms/76', to: "pages#info"
  post '/forms/73800971', to: "pages#info"
  post '/forms/6514', to: "pages#info"
  post '/forms/11035', to: "pages#info"
  post '/forms/932', to: "pages#info"
  post '/forms/16', to: "pages#info"
  post '/forms/601', to: "pages#info"
  post '/forms/266', to: "pages#info"
  post '/forms/42', to: "pages#info"
  post '/forms/65', to: "pages#info"





  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
