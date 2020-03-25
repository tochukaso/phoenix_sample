defmodule PhoenixSampleWeb.PageController do
  @moduledoc """
  初めから存在するコントローラー
  sampleページへのアクセスを追加する
  """

  use PhoenixSampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  @doc """
  sampleページを返却する
  """
  @doc since: "1.0.0"
  def sample(conn, _params) do
    render(conn, "sample.html")
  end
end
