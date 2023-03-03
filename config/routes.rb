Rails.application.routes.draw do
  devise_for :users, controllers: {
            registrations: "devise/registrations",
            sessions: "devise/sessions",
          }

  namespace :user do
    root "home#index"
  end

  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
