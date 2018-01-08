Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'contacts#index'
  resources :contacts do
    get :failure, on: :collection
  end
  get	'contacts/:provider/contact_callback' => 'contacts#index', as: :gmail_contacts
end
