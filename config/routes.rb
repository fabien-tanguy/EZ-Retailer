Adw::Application.routes.draw do
 
  
 
  devise_for :admins

  namespace :admin do  
     resources :photos
     resources :activities, :promos, :focus,  :only => [:edit, :update]
     get "/", :to => "home#index", :as => "index"
     
     #promos
     post "promo-upload-to-link-with", :to => "promos#upload_to_link_with", :as => "upload_to_link"       
     post "promos-activate-photo", :to => "promos#activate_photo"       

     #focus
     post "focus-upload-to-link-with", :to => "focus#upload_to_link_with", :as => "upload_to_link"       
     post "focus-activate-photo", :to => "focus#activate_photo"       
     
  end 
  
  
  # front-end pages 
  get "promo", :to => "home#promo", :as => "promo"
  get "focus", :to => "home#focus", :as => "focus"
  get "notre-activite", :to => "home#activities", :as => "activity"
  get "plan-horaires", :to => "home#map", :as => "map"
  get "contact", :to => "home#contact", :as => "contact"
      

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
