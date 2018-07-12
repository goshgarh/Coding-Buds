Rails.application.routes.draw do
  devise_for :admins, controllers: {
    registrations: 'admins/registrations',
   sessions: 'admins/sessions'
}
root 'home#index'
resources :admins, :comments, :languages
resources :lessons do
   collection do
       get 'search'
   end
end
    

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
