class Mxfw < Formula
  desc "Framework window manager for macOS"
  homepage "https://github.com/Sweets/mxfw"
  head "https://github.com/Sweets/mxfw.git", branch: "main"
  url "https://github.com/Sweets/mxfw/archive/refs/tags/0.1.20211028.tar.gz"
  sha256 "665bf7c85d790670a424f0e6a74299c55f7ef4cb9cc308a075d3833f6d5c1368"

  depends_on "meson"
  depends_on "lua"

  def install
    system "meson build"
    system "meson compile -C build"
    bin.install "#{buildpath}/build/src/mxfw"
  end
end
