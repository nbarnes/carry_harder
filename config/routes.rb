Rails.application.routes.draw do

  resources :chassis
  resources :chasses
  resources :matches, except: [:edit, :update, :destroy] do
    member do
      get 'processed_images/:slice_name', to: 'matches#processed_images'
    end
  end
  resources :screenshots

  root 'matches#index'
  get '/*foo', to: redirect('/')

end
