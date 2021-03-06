defmodule ElixirWorkshop.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_workshop,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env())
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # Uncomment the following to add the Jason library to the project.
      # Run `mix deps.get` in the terminal to download the dependencies
      # {:jason, "~> 1.2"}
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/data"]
  defp elixirc_paths(_), do: ["lib"]
end
