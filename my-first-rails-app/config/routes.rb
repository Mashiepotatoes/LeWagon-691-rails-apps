Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  root to: "pages#home" # same as get "/"
  # verb "route" to "controller#method"
end
