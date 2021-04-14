Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :projects, only: [:index, :create, :edit, :show, :update, :new] do
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
    resources :requests, only: [:new, :create, :edit, :update]
      get "join_request", to: "requests#join_request", as: "join_request"
    end
    get "components", to: "requests#components", as: "components"
    get "user_dashboard_requests", to: "requests#user_dashboard_requests", as: "user_dashboard_requests"
    get "outgoing_requests", to: "requests#outgoing_requests", as: "outgoing_requests"
    get "incoming_requests", to: "requests#incoming_requests", as: "incoming_requests"
    patch ":id/deny_requests",  to: "requests#deny_requests", as: "deny_requests"
    patch ":id/accept_requests",  to: "requests#accept_requests", as: "accept_requests"
    patch ":id/finished_status",  to: "projects#finished_status", as: "finished_status"
    patch ":id/idea_status",  to: "projects#idea_status", as: "idea_status"
    # patch "accept_requests", to: "requests#accept_requests", as: "accept_requests"
  # patch "deny_requests",  to: "requests#deny_requests", as: "deny_requests"
  resources :users do
    resources :skills, only: [:show, :edit, :create]
  end
end
