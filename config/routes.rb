Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      #nested so can only access the events route through categories
      resources :categories do
        resources :events
      end
    end
  end
end
