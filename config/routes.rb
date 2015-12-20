Rails.application.routes.draw do

  get "/admin" => "clearance/sessions#new", as: "sign_in"
  delete "/sign-out" => "clearance/sessions#destroy", as: "sign_out"
  resource :session, controller: "clearance/sessions", only: [:create]

  root 'static#home'
  get '/work', to: 'static#work', as: :work
  get '/about', to: 'static#about', as: :about
  get '/contact', to: 'static#contact', as: :contact
  post '/contact', to: 'static#send_message', as: :send_message

  resources :projects, except: :show

end
