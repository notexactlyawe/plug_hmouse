defmodule PlugHMouse.Mixfile do
  use Mix.Project

  def project do
    [app: :plug_hmouse,
     version: "0.0.2",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    []
  end

  defp deps do
    [
      {:plug, ">= 0.13.0"},
      {:poison, "~> 3.0"}
    ]
  end

  defp description do
    """
    HMAC for Plug applications using Plug.Conn and Plug.Parsers.

    Use custom parsers (same as Plug.Parsers) and custom response strategies, or
    simply stick to the default strategy to verify signed requests.
    """
  end

end
