Rails.application.routes.draw do
  get 'votes/index'

  get 'votes/create'

  get 'votes/destroy'

  get 'voters/create'

    resources :candidates #except: [:new, :edit, :create, :update, :destroy]
    resources :voters#, except: [:edit, :destroy]
    resources :votes#, except:[:edit, :update, :new, :show]
end
