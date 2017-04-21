Rails.application.routes.draw do
  get 'rooms/show'

  devise_for :students,controllers: {
	  sessions:      'students/sessions',
	  passwords:     'students/passwords',
	  registrations: 'students/registrations'
	}
  devise_for :companies, controllers: {
  sessions:      'companies/sessions',
  passwords:     'companies/passwords',
  registrations: 'companies/registrations'
}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#top"
  get '/students/mypage' => 'students#my_page'
  get '/companies/mypage' => 'companies#my_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/students/search' => 'students#search'
  get '/students' => 'students#index'  
  # get '/students/posts/new' => 'posts#new'
  # post '/students/posts' => 'posts#create'
  # get '/posts/new' => 'posts#new'
  # post '/posts' => 'posts#create'

  resources :posts
  get 'rooms/show' => 'rooms#show'

  mount ActionCable.server => '/cable'

end
