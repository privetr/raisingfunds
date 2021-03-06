Rails.application.routes.draw do
  devise_for :users

  scope "(:locale)", :locale => /en|fr|vi/ do
    root :to => 'welcome#index'
    get "page/index"

    # static pages
    get '/diagonale-des-fous' => 'welcome#diagonale', :as =>'url_diagonale'
    get '/diagonale-des-fous-gallery' => 'welcome#gallerydiagonale', :as =>'url_gallerydiagonale'
    get '/nicolas-privet' => 'welcome#nicolasprivet', :as =>'url_nicolasprivet'
    get '/nicolas-privet-gallery' => 'welcome#gallerynicolasprivet', :as =>'url_gallerynicolasprivet'
    get '/association' => 'welcome#association', :as =>'url_association'
    get '/sponsors' => 'welcome#sponsors', :as =>'url_sponsors'
    get '/read_before_donation' => 'welcome#readbeforedonation', :as =>'url_read_before_donation'
    get '/contacts' => 'welcome#contacts', :as =>'url_contacts'
    get '/admin_site_nico' => 'welcome#adminsitenico', :as =>'url_adminsitenico'
    get '/list_donations' => 'welcome#listdonations', :as =>'url_list_donations'
  end

  #get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  resources :funds

  
  #match '/search' => 'search#search', :as => 'search'

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
