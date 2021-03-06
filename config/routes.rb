
Rails.application.routes.draw do
  
  root 'static_pages#home'
 
  get 'static_pages/about'
  get 'static_pages/services'
  get 'static_pages/faq'
  get 'static_pages/contact'
  
  
  get 'about' => 'static_pages#about'
  get 'services' => 'static_pages#services'
  get 'faq' => 'static_pages#faq'
  get 'contact' => 'static_pages#contact'
  
 

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, at: '/store'
          # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


