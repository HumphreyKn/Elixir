defmodule Blogger.MixProject do
  use Mix.Project

  def project do
    [
      app: :blogger,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :httpoison]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # Adding httpoison as a dependency
      {:httpoison, "~> 2.1"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end


defmodule Blogger do
  use HTTPoison

  def fetch_blog do
    url = "https://medium.com/podiihq/quick-connect-to-your-amazon-ec2-linux-instance-through-the-command-line-6c682960ef91"
    HTTPoison.get(url)
  end

  def list_uppercase(my_list) do
    Enum.map(my_list, &String.upcase/1)
  end

end
