class Teammate < Formula
  desc "A script to create and share faster github pull requests in your team"
  homepage "https://fabrisilve.github.io/TeamMate/"
  url "https://github.com/FabriSilve/TeamMate/raw/master/teammate.tar.gz"
  sha256 "9d57796623d63edce1e51f210d515f136f0661a7ea606e107702b8ef75adde8b"
  version "1.1"

  depends_on "hub"
  depends_on "git"
  depends_on "curl"

  def install
    bin.install "teammate"
  end
end