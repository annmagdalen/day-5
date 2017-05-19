Rails.application.routes.draw do
root "cities#index"

get "cities" => "cities#index"
get "cities/new" => "cities#new", as: :new_city
get "cities/:id" => "cities#show", as: :city

post "cities" => "cities#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
