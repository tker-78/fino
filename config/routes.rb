Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    # ログイン後のリダイレクトページを指定
    root 'staticpages#top'
  end
  
  resources :staticpages
  resources :fixed_expense
  resources :variable_expense
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Rails.application.routes.draw do
  #   devise_for :users, controllers: {
  #     sessions: 'users/sessions'
  #   }
  # end
end
