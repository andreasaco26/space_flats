# Rails.application.routes.draw do
#   devise_for :users
#   root to: 'pages#home'
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#   resources :flats do
#     resources :bookings, only: [:index, :show, :new, :create, :destroy]
#   end

# end

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :flats do
    # collection do
    #   #write my rute here
    #       #we wrtie top because we want the top restaurant
    #   get :myflats
    # end
    resources :bookings, only: [ :new, :create]
  end
  resources :bookings, only: [:index, :show, :destroy, :edit, :update] do
    collection do
      get :confirmation
    end
  end
end
