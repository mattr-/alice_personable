defmodule AlicePersonable.Mixfile do
  use Mix.Project

  def project do
    [app: :alice_personable,
     version: "0.0.2",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
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
    [{:alice, "~> 0.3.0"}]
  end

  defp description do
    """
    A plugin for the Alice chat bot to make her seem a bit more human.
    """
  end

  defp package do
    [
      name: "alice_personable",
      files: ["README.md", "LICENSE", "lib", "mix.exs"],
      maintainers: ["Matt Rogers"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/mattr-/alice_personable"}
    ]
  end
end
