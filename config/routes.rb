# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do # /api/data
    resources :users, only: [:show] do
      resources :messages, only: [:index, :show, :create]
    end
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

    resources :events, only: [:index, :new, :create, :show, :edit, :update, :destroy]

    resources :registrations, only: [:create, :destroy]
    resources :talent_profiles, only: [:index, :new, :create, :show, :edit, :update]
    resources :gigs, only: [:create, :update]
  end

  # get '*path', to: 'static_pages#fallback_index_html', constraints: lambda { |request|
  #   !request.xhr? && request.format.html?
  # }
end
