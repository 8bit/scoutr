RoundtableReport::Application.routes.draw do
  
  constraints :subdomain => "oa" do
    resources :chapters
    resources :lodges
    
    root :to => 'lodges#index'
  end
  resources :programs
  resources :roundtables
  resources :divisions
  resources :districts 
  
  resources :councils do
    resources :divisions
  end

  constraints :subdomain => "commissioner" do
    root :to => 'roundtables#new'
    
    resources :districts do
      resources :roundtables
    end
    
  end
  
  root :to => 'councils#index'
end
