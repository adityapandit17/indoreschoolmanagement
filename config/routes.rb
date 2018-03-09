 Rails.application.routes.draw do
  resources :classstudents
      root'creatives#index'
      devise_for :student, controllers: {
        sessions: 'student/sessions',
        registrations: 'student/registrations'
      }

    end
