class Sodium < Formula
  desc "Framework window manager for macOS"
  homepage "https://github.com/Sweets/sodium"
  head "https://github.com/Sweets/sodium.git"
  url "https://github.com/Sweets/sodium/archive/refs/tags/v0.1-alpha.tar.gz"
  sha256 "8e8d3a33f636f05de7809c2f1d47dbed3a3c470f068c0fe11a80f430b46943f6"

  depends_on "lua"

  def install
    system "make"
    bin.install "#{buildpath}/sodium"
  end
end
