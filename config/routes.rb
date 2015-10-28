Rails.application.routes.draw do
    resources :candidate, except: [:new, :edit, :create, :update, :destroy]
    resources :voter, except: [:edit, :destroy]
    resources :vote, except:[:edit, :update, :new, :show]
end
