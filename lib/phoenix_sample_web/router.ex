defmodule PhoenixSampleWeb.Router do
  use PhoenixSampleWeb, :router

  # :browser, :apiが選択できる
  pipeline :browser do
    # 受け入れるリクエストタイプ設定?
    plug :accepts, ["html"]
    # session維持を可能にする?
    plug :fetch_session
    # ?
    plug :fetch_flash
    # CSRFから守る？
    plug :protect_from_forgery
    # HTTP Headerに諸々セキュアな設定を挿入する?
    plug :put_secure_browser_headers
  end

  scope "/", PhoenixSampleWeb do
    # 処理するタイプを決定する? Virtual Host的な感じか
    pipe_through :browser

    get "/", PageController, :index
    get "/sample", PageController, :sample
  end

  def swagger_info do
    %{
      info: %{
        version: "1.0",
        title: "My App"
      }
    }
  end
end
