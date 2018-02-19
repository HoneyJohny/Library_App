Rails.application.routes.draw do
  get 'welcome/index'
 
  resources :articles do 
	member do
        	get 'assign_student'
        end
  end
  resources :articlestuds#plural
  
  root 'welcome#index'
end