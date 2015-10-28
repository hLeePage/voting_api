Rails.application.routes.draw do
    resources :candidates, except: [:new, :edit, :create, :update, :destroy]
    resources :voters, except: [:edit, :destroy]
    resources :votes, except:[:edit, :update, :new, :show]
end
