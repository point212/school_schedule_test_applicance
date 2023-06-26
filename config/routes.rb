Rails.application.routes.draw do
  resources :students
  resources :sections
  resources :teachers do
    resources :teacher_subjects, as: :subject
  end
  resources :subjects
  resources :classrooms

  root to: 'subjects#index'
end
