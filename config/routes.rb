Rails.application.routes.draw do
  get '/secrets', to: 'secrets#show', as: 'secrets'

  get '/', to: 'sessions#new', as: 'login'
  post '/', to: 'sessions#create'

  get '/welcome', to: 'sessions#welcome', as: 'welcome'

  post '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
