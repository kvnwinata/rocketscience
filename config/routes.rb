Rocketscience::Application.routes.draw do
  
  root :to => 'home#index'

  match 'home' => 'home#index'
  match 'login' => 'users#login'
  match 'analyze' => 'analysis#analyze'

  match 'users' => 'home#index'

end
