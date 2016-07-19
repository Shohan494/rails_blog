Rails.application.routes.draw do
  get 'welcome/index'
 
  # this line tells that the root is now the created controller with the 'index' action
  root 'welcome#index'
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
