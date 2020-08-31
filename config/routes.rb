Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :articles
    end
  end

  namespace :api do
    namespace :v1 do
      resources :journals
    end
  end

  namespace :api do
    namespace :v1 do
      resources :users
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end

  namespace :api do
    namespace :v1 do
      resources :logs
    end
  end

  namespace :api do
    namespace :v1 do
      resources :moods
    end
  end

  namespace :api do
    namespace :v1 do
      resources :favorites
    end
  end
    
end
