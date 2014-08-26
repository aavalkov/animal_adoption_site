Rails.application.routes.draw do
  match('animals', {via: :get,to: 'animals#index'})
  match('animals/:id', {via: :get,to: 'animals#show'})
end
