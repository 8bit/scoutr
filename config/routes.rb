RoundtableReport::Application.routes.draw do
  
  resources :programs
  resources :roundtables
  resources :divisions
    
  resources :councils do
    resources :divisions
  end
  
  resources :districts do
    resources :roundtables
  end


  constraints(Subdomain) do
    match '/' => 'districts#show'
  end
  
  root :to => 'roundtables#new'

end
