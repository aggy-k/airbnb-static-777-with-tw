Rails.application.routes.draw do
  root to: 'flats#index'
  get 'flats/:id', to:'flats#show', as: "flat"
end
