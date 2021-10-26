Rails.application.routes.draw do
  get "/students" => "students#index"
  ### skills CRUD actions
  get "/skills" => "skills#index"
  get "/skills/:id" => "skills#show"
  post "/skills" => "skills#create"
  patch "/skills/:id" => "skills#upda†e"
  delete "/skills/:id" => "skills#destroy"
  ### projects index
  get "/projects" => "projects#index"
end
