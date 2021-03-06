Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/tasks", to: "tasks#index"

  # get '/tasks/new', to: 'tasks#new'
  # get "/tasks/:id", to: "tasks#show", as: :task
  # post '/tasks', to: 'tasks#create'

  # get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch '/tasks/:id', to: 'tasks#update'

  # delete '/tasks/:id', to: 'tasks#destroy'

  resources :tasks #, only: [:show, :new, :create, :index, :destroy, :edit]



#   Prefix Verb   URI Pattern                     Controller#Action
#   restaurants GET    /restaurants(.:format)          restaurants#index
#               POST   /restaurants(.:format)          restaurants#create
# new_restaurant GET    /restaurants/new(.:format)      restaurants#new
# edit_restaurant GET    /restaurants/:id/edit(.:format) restaurants#edit
#    restaurant GET    /restaurants/:id(.:format)      restaurants#show
#               PATCH  /restaurants/:id(.:format)      restaurants#update
#               DELETE /restaurants/:id(.:format)      restaurants#destroy

end
