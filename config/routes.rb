Rails.application.routes.draw do

  resources :matches
  resources :screenshots
  root 'screenshots#index'
  get '/*foo', to: redirect('/')

end
