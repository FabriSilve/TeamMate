class Teammate < Formula
  desc "A script to create and share faster github pull requests in your team"
  homepage "https://fabrisilve.github.io/TeamMate/"
  url "https://github.com/FabriSilve/TeamMate/raw/master/teammate-1.2.tar.gz"
  sha256 "cc546fd8a5bf8e6815a0f0b86d503f0839cc0d1a7be60716c60d2a5538e9c868"
  version "1.2"

  depends_on "hub"
  depends_on "git"
  depends_on "curl"

  def install
    bin.install "teammate"
  end
end