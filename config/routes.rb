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
  ###
  get "/experiences" => "experiences#index"
  get "/experiences/:id" => "experiences#show"
  post "experiences" => "experiences#create"
  patch "experiences/:id" => "experiences#update"
  delete "experiences/:id" => "experiences#destroy"
  ###
  get "/educations" => "educations#index"
  get "/educations/:id" => "educations#show"
  post "educations" => "educations#create"
  patch "educations/:id" => "educations#update"
  delete "educations/:id" => "educations#destroy"
end
