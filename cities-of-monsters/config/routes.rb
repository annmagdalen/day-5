Rails.application.routes.draw do
  resources :states
root "cities#index"

resources :cities

=begin
get "cities" => "cities#index"
get "cities/new" => "cities#new", as: :new_city
get "cities/:id" => "cities#show", as: :city

post "cities" => "cities#create"

get "cities/:id/edit" => "cities#edit", as: :edit_city

patch "cities/:id" => "cities#update"

delete "cities/:id" => "cities#destroy"
=end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
