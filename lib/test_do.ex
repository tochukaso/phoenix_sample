defmodule Test do

  def exec(do: f) do
    quote do
      unquote(f)
    end
  end

  @spec hello(String.t()) :: String.t()
  def hello(name) do
    "Hello, " <> name
  end

end

