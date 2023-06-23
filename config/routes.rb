Rails.application.routes.draw do
  resources :teachers do
    resources :teacher_subjects, as: :subject
  end
  resources :subjects
  resources :classrooms

  root to: 'subjects#index'
end
