Rails.application.routes.draw do
  root 'staticpages#top'
  get 'staticpages/top', to: 'staticpages#top'
  get 'staticpages/about', to: 'staticpages#about'
  get 'staticpages/contact', to: 'staticpages#contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  Rails.application.routes.draw do
    devise_for :users, controllers: {
      sessions: 'users/sessions'
    }
  end
end
