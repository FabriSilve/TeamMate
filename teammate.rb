class Teammate < Formula
  desc "A script to create and share faster github pull requests in your team"
  homepage "https://fabrisilve.github.io/TeamMate/"
  url "https://github.com/FabriSilve/TeamMate/raw/master/teammate-1.3.tar.gz"
  sha256 "bdb9c7b1c4ddba3a0e20a26f605da1530d02e0ab290db10dccf932b7ab4d6387"
  version "1.3"

  depends_on "hub"
  depends_on "git"
  depends_on "curl"

  def install
    bin.install "teammate"
  end
end