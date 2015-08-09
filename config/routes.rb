Rails.application.routes.draw do

  root 'static#welcome'
  get '/*foo', to: redirect('/')

end
