Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "projects#index" 
  resources :projects, only: [:create, :edit, :show, :update, :new] do
    resources :requests, only: [:new, :create, :edit, :update]
      get ":id/join_request", to: "requests#join_request", as: "join_request"
  end
  get "outgoing_requests", to: "requests#outgoing_requests", as: "outgoing_requests"
  get "incoming_requests", to: "requests#incoming_requests", as: "incoming_requests"
  # patch "accept_requests", to: "requests#accept_requests", as: "accept_requests"
  # patch "deny_requests",  to: "requests#deny_requests", as: "deny_requests"
  resources :users
end
