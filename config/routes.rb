Rails.application.routes.draw do

  root 'static#home'
  get '/work', to: 'static#work', as: :work
  get '/about', to: 'static#about', as: :about
  get '/contact', to: 'static#contact', as: :contact
  post '/contact', to: 'static#send_message', as: :send_message

end
