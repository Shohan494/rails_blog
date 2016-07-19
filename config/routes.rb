Rails.application.routes.draw do
  #get 'welcome/index'
  
  # declare a standard REST resource.
  # it has defined routes for all the standard RESTful actions
   resources :articles
  # this line tells that the root is now the created controller with the 'index' action
  root 'welcome#index'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
