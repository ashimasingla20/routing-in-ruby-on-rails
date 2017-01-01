Rails.application.routes.draw do

 root 'beer#index'
 get 'beer' => 'beer#index'

  get 'beer/:beer_type' => 'beer#show'

  # get 'beer' => 'beer#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
