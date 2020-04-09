class Teammate < Formula
  desc "A script to create and share faster github pull requests in your team"
  homepage "https://fabrisilve.github.io/TeamMate/"
  url "https://github.com/FabriSilve/TeamMate/raw/master/teammate-1.4.1.tar.gz"
  sha256 "2391277392b3aafc4e00a6b32d5af973ffb4d6f1f4d5e2d71d120f3f4858ccad"
  version "1.4.1"

  depends_on "hub"
  depends_on "git"
  depends_on "curl"

  def install
    bin.install "teammate"
  end
end