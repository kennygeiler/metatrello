Rails.application.routes.draw do
  resources :urls do
    resources :notes
  end


root to: 'urls#new'

end

