Rails.application.routes.draw do
  get "/graphql", to: "graphql#about"
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
