AutoolPerusal::Engine.routes.draw do
  resources :perusals
  
  root 'perusals#index'
end
