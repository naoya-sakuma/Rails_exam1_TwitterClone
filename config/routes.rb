Rails.application.routes.draw do
  resources :mussitations do
    collection do
      post :confirm
    end
  end
end
