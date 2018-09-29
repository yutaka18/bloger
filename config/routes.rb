Rails.application.routes.draw do

  devise_for :users

    root 'blogers#index'
    get   'blogs'      =>  'blogers#index'
    get 'blogs/new' => 'blogers#new'     
    post 'blogs' => 'blogers#create'  
    get 'users/:id' => 'users#show'    
    delete 'blogs/:id' => 'blogers#destroy'  
    get 'blogs/:id/edit' => 'blogers#edit' 
    patch 'blogs/:id'  => 'blogers#update'
    get 'blogs/:id' => 'blogers#show'  



end
