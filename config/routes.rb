Rails.application.routes.draw do

  root 'static#front_page'
  get '/*foo', to: redirect('/')

end
