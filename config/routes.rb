Rails.application.routes.draw do
  resources :tasks do
    member do
      get :complete  # ใช้ GET method แทน PATCH
    end
  end
  root "tasks#index"
end