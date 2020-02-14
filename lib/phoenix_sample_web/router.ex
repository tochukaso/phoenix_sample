defmodule PhoenixSampleWeb.Router do
  use PhoenixSampleWeb, :router

  pipeline :browser do # :browser, :apiが選択できる
    plug :accepts, ["html"] #受け入れるリクエストタイプ設定?
    plug :fetch_session # session維持を可能にする?
    plug :fetch_flash # ?
    plug :protect_from_forgery #CSRFから守る？
    plug :put_secure_browser_headers #HTTP Headerに諸々セキュアな設定を挿入する?
  end

  scope "/", PhoenixSampleWeb do
    pipe_through :browser # 処理するタイプを決定する? Virtual Host的な感じか

    get "/", PageController, :index
    get "/sample", PageController, :sample
  end
end

