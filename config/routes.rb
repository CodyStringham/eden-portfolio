Rails.application.routes.draw do

  root 'static#home'
  get '/work', to: 'static#work', as: :work

end
