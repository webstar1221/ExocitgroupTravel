Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: "homes#index"
  get '/tour/:id' , to: "homes#tour", as: :tour_details
  resources :inquiries
  get '/all_tours', to: "homes#all_tours", as: :all_tours
  get '/search', to: "homes#search", as: :search
  get '/filter', to: "homes#filter", as: :filter
  get '/pages/:id', to: "homes#pages", as: :pages
  get '/leavemessage', to: "homes#leavemessage", as: :leavemessage

  devise_for :admin_user, path: 'admin/', controllers: {
    unlocks: 'devise/unlocks',
    passwords: 'devise/passwords',
    sessions: 'admin/sessions',
  }

  devise_scope :admin_user do
      namespace :admin do
        resources :users, only: %i[edit show update]
        resources :countries
        resources :regions
        resources :tours
        resources :pages
        resources :inquiries
        resources :trip_ideas
      end
    unauthenticated do
      # root 'devise/sessions#new', as: :unauthenticated_root
    end
  end    
end

