class Mxfw < Formula
  desc "Framework window manager for macOS"
  homepage "https://github.com/Sweets/mxfw"
  head "https://github.com/Sweets/mxfw.git", branch: "main"
  url "https://github.com/Sweets/mxfw/archive/refs/tags/0.1.20211028.tar.gz"
  sha256 "577d8971849a273a4a310ca2c5d9325b9fd219d5423592f5dfc5c1b09d26ec48"

  depends_on "meson"
  depends_on "lua"

  def install
    system "meson build"
    system "meson compile -C build"
    bin.install "#{buildpath}/build/src/mxfw"
  end
end
