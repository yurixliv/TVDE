Tvde::Application.routes.draw do

  namespace :public, path: '/' do
    root to: "base#index", as: 'home'
    get '/escola-selecionada/(:code)', to: 'base#selected', as: 'base_selected'
    post '/escola-confirmada', to: 'base#confirmed', as: 'base_confirmed'
    get '/convide-escola-parceira', to: 'base#partner', as: 'base_partner'
    post '/escola-parceira-confirmada', to: 'base#partner_confirmed', as: 'base_partner_confirmed'
    get '/cadastro', to: 'base#sign_up', as: 'base_sign_up'
    post '/cadastro-confirmado', to: 'base#sign_up_confirmed', as: 'base_sign_up_confirmed'
    get '/check-namespace', to: 'base#check_namespace'
  end

end