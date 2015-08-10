Rails.application.routes.draw do
  namespace 'travel_guides' do
    resources :comments
    resources :posts
  end

  get 'travel-guides/posts/:id', to: 'travel_guides/posts#show', id: /.*/
end
