Rails.application.routes.draw do
  resources :urls do
    resources :notes
  end
end
