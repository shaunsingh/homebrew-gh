class Sodium < Formula
  desc "Framework window manager for macOS"
  homepage "https://github.com/Sweets/sodium"
  head "https://github.com/Sweets/sodium.git"
  url ""
  sha256 ""

  depends_on "lua"

  def install
    system "make"
    bin.install "#{buildpath}/sodium"
  end
end
