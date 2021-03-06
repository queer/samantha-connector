defmodule Connector.Mixfile do
  use Mix.Project

  def project do
    [
      app: :connector,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Connector.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:lace, github: "queer/lace"},
      {:plug, "~> 1.4"},
      {:cowboy, "~> 1.1"},
      {:poison, "~> 3.1"},
      {:mutex, "~> 1.0.0"},
    ]
  end
end
