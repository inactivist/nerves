defmodule Nerves.Mixfile do
  use Mix.Project

  def project do
    [app: :nerves,
     version: "0.1.0",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: []]
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
      {:exrm, github: "bitwalker/exrm", tag: "4c2b476aa25f35961abb783ba64433fe509fff82"}
    ]
  end

  defp description do
    """
    Nerves - Create firmware for embedded devices like Raspberry Pi and more
    """
  end

  defp package do
    [maintainers: ["Frank Hunleth", "Garth Hitchens", "Justin Schneck"],
     licenses: ["MIT"],
     links: %{"Github" => "https://github.com/nerves-project/nerves"}]
  end
end