Rails.application.routes.draw do
    resources :candidate, :voter, :vote
    
end
