RoundtableReport::Application.routes.draw do
  resources :programs
  resources :roundtables
  resources :divisions
  resources :districts 
  
  resources :councils do
    resources :divisions
  end

  # Routes for OA
  constraints :subdomain => "oa" do
    resources :chapters
    resources :lodges do
      resources :chapters
    end
    
    root :to => 'lodges#index'
  end
  constraints :subdomain => "commissioner" do
    root :to => 'roundtables#new'
    
    resources :districts do
      resources :roundtables
    end
    
  end
  
  root :to => 'councils#index'
end
