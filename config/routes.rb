Rails.application.routes.draw do
    resources :candidates, except: [:new, :edit]
    resources :voters, except: [:edit, :new]
    resources :votes, except:[:edit, :new]
end
