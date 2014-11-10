Rails.application.routes.draw do

  resources :seguimientos

  devise_for :users
  resources :personas

  resources :adopcions
  # get '/adopcions/new/:id' => 'adopcions#new'

  get '/adopcions/new/:id' => 'adopcions#new', as: 'nuevo_adop'
  get '/seguimientos/new/:id' => 'seguimientos#new', as: 'nuevo_seguimiento'

  resources :rescates

  resources :voluntario_mascota

  resources :hogar_temporals

  resources :voluntarios
  resources :noticia
  resources :mascota
  resources :voluntario_temporals
  resources :veterinaria
  get "welcome/lista_usuario" => 'welcome#lista_usuario', :as  => 'lista_usuario'
  get "welcome/perfil"
  get "welcome/lista_usuarios/eliminar" => "welcome#eliminar"
  get "welcome/lista_usuarios/habilitarlo" => "welcome#habilitarlo"
  get "welcome/lista_usuarios/desactivarlo" => "welcome#desactivarlo"
  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index'

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
