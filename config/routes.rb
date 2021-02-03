Rails.application.routes.draw do
  resources :employees
  resources :people
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/welcome'
  resources :newusers
  get 'book/add'
  get 'book/delete'
  get 'book/destroy'
  get 'book/edit'
  get 'book/update'
  get 'book/search'
  get 'book/save'
  get 'book/list'
  get 'book/show'
  get 'book/create'
  get 'book/new'
  get 'book/dummy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get 'second/index'
 # get 'second/hello'
  get 'user/create'
  get 'user/register'
  get 'user/login'
  get 'first/welcome'
  get 'first/login'
  root 'first#welcome'
  get "/first",to:"first#welcome"
  get 'display/hello'
  match ':controller(/:action(/:id(.:format)))',:via =>[:get,:post]

  #get 'home/index'
  #root 'home#index'
  #resources :users
  #resources:employees
  #resources :sessions, only: [:new, :create, :destroy]
  #get 'login', to: 'sessions#new', as: 'login'
  #get 'logout', to: 'sessions#destroy', as: 'logout'
  #get 'welcome', to: 'sessions#welcome', as: 'welcome'

#get 'display/register'
end
