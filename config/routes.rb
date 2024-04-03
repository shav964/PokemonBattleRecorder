Rails.application.routes.draw do
  resources :pokemons do
    member do
      patch 'increment_victories' # PATCHメソッドでincrement_victoriesアクションを定義
      patch 'reset_victories'
    end
  end
end
