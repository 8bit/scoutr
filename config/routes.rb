RoundtableReport::Application.routes.draw do
  
  resources :programs
  resources :roundtables
  resources :divisions
    
  resources :councils do
    resources :divisions
  end

  constraints :subdomain => "commissioner" do
    root :to => 'roundtables#new'
    
    resources :districts do
      resources :roundtables
    end
    
  end

end
