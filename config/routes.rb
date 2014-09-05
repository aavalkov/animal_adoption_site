Rails.application.routes.draw do
  match('/', {via: :get, to: 'animals#index'})
  match('animals', {via: :get, to: 'animals#index'})
  match('animals', {via: :post, to: 'animals#create'})
  match('animals/new', {via: :get, to: 'animals#new'})
  match('animals/:id', {via: :get, to: 'animals#show'})
  match('animals/:id/edit', {via: :get, to: 'animals#edit'})
  match('animals/:id', {via: [:patch,:put], to: 'animals#update'})
  match('animals/:id', {via: :delete, to: 'animals#destroy'})

  match('traits', {via: :post, to: 'traits#create'})
  match('traits', {via: :get, to: 'traits#new'})
  match('traits/:id', {via: :get, to: 'traits#show'})
  match('traits/:id/edit', {via: :get, to: 'traits#edit'})
  match('traits/:id', {via: [:patch, :put], to: 'traits#update'})
  match('traits/:id', {via: :delete, to: 'traits#destroy'})
end
