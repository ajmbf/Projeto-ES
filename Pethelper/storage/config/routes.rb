Rails.application.routes.draw do
  

  get 'forms/new'

  get 'casa_abrigos/new'

  get 'animals/new'

  get 'sessions/new'

get 'funcionarios/new'
get  '/signup'  => 'funcionarios#new'
post '/signup'  => 'funcionarios#create'

get '/newcasa' => 'casa_abrigos#new'
post 'newcasa' => 'casa_abrigos#create'
get 'casaindex' => 'casa_abrigos#list'
post 'editcasa' =>  'casa_abrigos#edit'
post 'deletecasa' => 'casa_abrigos#destroy'
get 'meuabrigo'   => 'casa_abrigos#meuabrigo'



get 'newmanager' => 'funcionarios#newmanager'
post 'newmanager' => 'funcionarios#createmanager'
get 'managerindex' => 'funcionarios#index'
post 'deletemanager' => 'funcionarios#destroy'
get 'funcionarioindex' => 'funcionarios#indexf'



get '/formlist' => 'forms#index'

get 'newanimal' => 'animals#new' 
post 'newanimal' => 'animals#create'

post 'newpost' => 'forms#create'

get    '/login',   to: 'sessions#new'
post   '/login',   to: 'sessions#create'
delete '/logout',  to: 'sessions#destroy'

post 'finalizar' =>'forms#finalizar'



root 'static_pages#home'
get 'roots' => 'static_pages#home'

resources :funcionarios
resources :animals
resources :casa_abrigos
resources :forms
end
