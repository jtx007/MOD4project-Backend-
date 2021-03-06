Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :playlists, except: [:new, :edit]
      resources :songs, except: [:new, :edit]
      resources :users
      resources :terms
      resources :moods
    end
  end
end
