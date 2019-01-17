Rails.application.routes.draw do
  resources :authors, only: [:show]
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  patch '/posts/:id', to: 'posts#edit'
  get 'posts/:id/post_data', to: 'posts#post_data'
end
