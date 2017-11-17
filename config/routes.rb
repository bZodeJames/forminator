Rails.application.routes.draw do

  get 'contact-me', to: 'messages#new', as: 'new_message'
  post 'contact-me', to: 'messages#create', as: 'create_message'

  get 'estimate', to: 'estimates#new', as: 'new_estimates'
  post 'estimate', to: 'estimates#create', as: 'create_estimates'
  
end