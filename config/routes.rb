RoundtableReport::Application.routes.draw do
  
  resources :programs

  resources :councils do
    resources :divisions
  end
  
  resources :divisions
  
  resources :districts do
    resources :roundtables
  end
  resources :roundtables

  constraints(Subdomain) do
    match '/' => 'districts#show'
  end
  
  root :to => 'roundtables#new'

end
