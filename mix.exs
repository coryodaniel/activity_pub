defmodule ActivityPub.MixProject do
  use Mix.Project

  def project do
    [
      app: :activity_pub,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package(),
      description: "ActivityPub is a decentralized social networking protocol"
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
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp package do
    [
      maintainers: ["Cory O'Daniel"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/coryodaniel/activity_pub",
        "W3C" => "https://www.w3.org/TR/activitypub/"
      },
      files: ~w(mix.exs README.md lib) ++
             ~w(test) ++
             ~w(.formatter.exs)
    ]
  end

  defp docs do
    [
      main: "ActivityPub",
      source_ref: "v#{@version}",
      canonical: "http://hexdocs.pm/activity_pub",
      source_url: "https://github.com/coryodaniel/activity_pub"
      # logo: "",
      # extras: [],
      # groups_for_modules: []
    ]
  end
end
