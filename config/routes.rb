Rails.application.routes.draw do

  resources :matches
  resources :screenshots
  root 'matches#index'
  get '/*foo', to: redirect('/')

end
