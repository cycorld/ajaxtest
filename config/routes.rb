Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :comments, only: [:index, :new, :create] do
        collection do
            get :search
        end
    end
    root 'comments#index'
end
