Rails.application.routes.draw do
  match('animals', {via: :get,to: 'animals#index'})
end
