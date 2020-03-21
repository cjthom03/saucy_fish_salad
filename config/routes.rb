Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '*page', to: 'root#index', constraints: ->(request) do
    !request.xhr? && request.format.html?
  end

  root to: 'root#index'
end
