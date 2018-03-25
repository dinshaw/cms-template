Rails.application.routes.draw do
  devise_for :users

  ActiveAdmin.routes(self)

  root to: "home#index"

  resources :cms_pages, only: :show, path: :pages
  resources :inquiries
end
