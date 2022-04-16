Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :tasks

  # créer un tâche (2 requêtes)
  get "tasks/new" => "tasks#new"
  post "tasks" =>  "tasks#create"

 # lire tous les taches
  # index est une convetion
  get 'tasks'=> "tasks#index"

  # lire un tâche
  # show est une convetion
  get 'tasks/:id' => "tasks#show", as: :task
    # get "restaurants/:id" => "restaurants#show"

  # editer un restaurant (2 requêtes)
  get "tasks/:id/edit" => "tasks#edit", as: :taskedit
  patch "tasks/:id" => "tasks#update"

  # supprimer un restaurant
  # destry car delete est un verb http
  delete "tasks/:id" => "tasks#destroy"

end
