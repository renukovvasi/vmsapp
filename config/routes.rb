Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  root 'users#login'
  #root 'login#login'
  get 'login/login' => 'login#login'
  resources :timesheet do
    
  end
  match 'timesheet/export' => 'timesheet#export', :via => :get
  resources :associates
  resources :hrmsdata do
    collection do
      post :import
    end
  end
end
