# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do # /api/data
    resources :users, only: [:show]

    resource :genres, only: [:show]
    resource :locations, only: [:show]

    namespace :events do
      resources :location, only: [:show]
      resources :genre, only: [:show]
    end

    namespace :talent_profiles do
      resources :location, only: [:show]
      resources :genre, only: [:show]
    end

    resources :messages, except: [:update, :destroy]
    resources :events, except: [:destroy]
    resources :registrations, only: [:create, :destroy]
    resources :talent_profiles, except: [:destroy]
    resources :gigs, only: [:create, :update]
  end

  get '*path', to: "static_pages#fallback_index_html", constraints: ->(request) do
    !request.xhr? && request.format.html?
  end
end
