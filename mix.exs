defmodule Supervisorring.Mixfile do
  use Mix.Project

  def project do
    [ app: :supervisorring,
      version: "0.1.0",
      elixir: "~> 1.3",
      deps: [
        {:gen_serverring,
         git: "https://github.com/shopping-adventure/gen_serverring.git"}]]
  end

  def application do
    [ mod: {Supervisorring.App, []},
      applications: [:iex],
      env: [data_dir: "./data", gen_serverring_name: []]]
  end
end
