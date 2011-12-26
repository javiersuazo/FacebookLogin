Sociallogin::Application.routes.draw do  


	match 'users/:id/collects/new' => "collects#new" , :as => :collects
	match 'users/:id/collects/create' => "collects#create" , :as => :collect
#	match 'users/:id/collects/index' => "collects#index" , :as => :collects
	match 'users/:user_id/collects/:id' => "collects#show" , :as => :collect
	match 'users/:user_id/collects/:id/edit' => "collects#edit" , :as => :collect
	resources :users
#	resources :users do 
#		resources :collects do 
#			resources :pictures
#		end
#	end 


	root :to => 'welcome#index'
	get "welcome/index"
	get "welcome/home"
#	resources :albums

	
	match '/auth/:provider/callback', :to => 'session#create_social', :as => 'social_login'
  match 'logout' => 'session#destroy', :as => 'logout'
  	
  	
  	
end
