Rails.application.routes.draw do
  root "pages#home"

  get "update_counter", to: "pages#update_counter"
end
