class Teammate < Formula
  desc "A script to create and share faster github pull requests in your team"
  homepage "https://fabrisilve.github.io/TeamMate/"
  url "https://github.com/FabriSilve/TeamMate/raw/master/teammate-1.4.tar.gz"
  sha256 "0a0534aa5af5182d3e0ed0904b5e5a0e8eecf758b1f4d54e73f9a5f4f4ca6f85"
  version "1.4"

  depends_on "hub"
  depends_on "git"
  depends_on "curl"

  def install
    bin.install "teammate"
  end
end