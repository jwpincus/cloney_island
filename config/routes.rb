Rails.application.routes.draw do
  root 'home#index'

  get '/signup',    to: "users#new"
  get '/login',     to: "sessions#new"
  get '/logout',    to: "sessions#destroy"
  get '/confirmation', to: "confirmation#show"

  namespace :users, as: :user, path: 'users' do
    get '/:user_id/projects', to: "projects#index"
  end
  resources :users, only: [:new, :create, :index]

  resources :categories, only: [:index, :show]
  resources :rewards, only: [:index, :create, :new]
  resources :projects, only: [:index, :show, :edit, :new, :create]

  namespace :projects do
    get '/:project_id/rewards', to: "rewards#index", as: "rewards"
  end

  get '/checkout/:reward_id', to: "payments#new", as: "checkout"


  resources :sessions, only: [:new, :create, :destroy] do
    post :authorization, on: :collection
  end
  resources :payments, only: [:create]


  get '/statistics', to: 'statistics#index'

  resources :charts, only: [] do
    collection do
      get 'donations_by_date'
    end
  end

  namespace :api, defaults: {format: :json} do
		namespace :v1 do
			namespace :projects do
				get "/most_funded", to: "most_funded#index"
			end
      namespace :users do
        get "/search", to: "users_search#show"
      end
		end
	end

  mount ActionCable.server => '/cable'

  resources :chatrooms, only: [:new, :create, :show, :index]
  resources :messages, only: [:new, :create]
end
