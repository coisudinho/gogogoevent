Rails.application.routes.draw do

	devise_for :users, path: "",
		path_names: {
			sign_in: "login",
			sign_out: "logout"
		},
		controllers: {
			registrations: "registrations"
		}

	resources :events

	root to: "events#index"

	match "*path", to: redirect("/"), via: :all

end
