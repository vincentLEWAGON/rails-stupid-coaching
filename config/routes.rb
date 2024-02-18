Rails.application.routes.draw do

  root to: "questions#ask" # je mets la page d'accueil sur la page ask

  get "up" => "rails/health#show", as: :rails_health_check # je mets la page de santé sur la page up
  get "ask", to: "questions#ask" # je créé la route ask sur la route ask
  get "test", to: "questions#answer" # je créé la page answer sur la route test

end
