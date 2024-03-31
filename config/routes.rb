# Railsアプリケーションのルーティングを設定する
Rails.application.routes.draw do
  # /pokemonsに対するリソースルーティングを定義する
  resources :pokemons do
    # 個々のポケモンに対して、increment_victoriesアクションをPATCHメソッドで定義する
    member do
      patch 'increment_victories'
    end
  end
end