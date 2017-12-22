defmodule InfluxEcto.Mixfile do
  use Mix.Project

  def project do
    [
      app: :influx_ecto,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ecto, "~> 2.0.0"},
      {:instream, "~> 0.17"}
    ]
  end
end
