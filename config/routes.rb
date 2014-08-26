Rails.application.routes.draw do
  match('animals', {via: :get, to: 'animals#index'})
  match('animals/new', {via: :get, to: 'animals#new'})
  match('animals/:id', {via: :get, to: 'animals#show'})
end
