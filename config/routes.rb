Rails.application.routes.draw do
  resources :add_userid_to_comments
  resources :add_userid_to_posts
  resources :comments
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
