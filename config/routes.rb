Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  scope :api, defaults: { format: :json } do
    resources :recipes, only: [] do
      collection { get :random }
    end
  end

  get '*page', to: 'root#index', constraints: ->(request) do
    !request.xhr? && request.format.html?
  end

  root to: 'root#index'
end
