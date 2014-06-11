BaseApp::Application.routes.draw do

  resources :filled_surveys

  resources :surveys do
    member do
      get :fill
    end
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get "pages/index"

  get "/admin" => "admin/base#index", :as => "admin"

  namespace "admin" do

    resources :users

  end

  root :to => "pages#index"

end
