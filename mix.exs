defmodule Egndf.Mixfile do
  use Mix.Project

  @version "0.3.0"

  def project do
    [app: :egndf,
     version: @version,
     elixir: "~> 1.5",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :poison, :httpoison, :confex]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:httpoison, "~> 0.13.0"},
      {:poison, "~> 3.1"},
      {:confex, "~> 3.2"},
      {:dogma, ">= 0.1.12", runtime: false},
      {:credo, ">= 0.8.1", runtime: false},
      {:ex_doc, ">= 0.0.0", runtime: false}
    ]
  end

  defp description do
    """
    Simple Elixir client for open-source decision engine Gandalf https://gndf.io/.
    """
  end

  defp package do
    [# These are the default files included in the package
     name: :egndf,
     files: ["lib", "mix.exs", "README.md", "LICENSE.md"],
     maintainers: ["Pavel Vesnin", "Nebo #15"],
     licenses: ["MIT"],
     links: %{"GitHub" => "https://github.com/Nebo15/egndf",
              "Docs" => "http://docs.gandalf4.apiary.io/"}]
  end
end
