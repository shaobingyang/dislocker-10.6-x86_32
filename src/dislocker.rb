#
# this brew file *must* be called 'dislocker.rb' to match the Formula
#

require "formula"

class Dislocker < Formula
  homepage "https://github.com/Aorimn/dislocker"
  url "https://github.com/kenneyhe/dislocker-10.6-x86_32/archive/master.tar.gz"
  sha1 "f6a26d5e8724668afd04214933e7cef4f589787c"
  version "0.4"

  depends_on "polarssl"
  depends_on "osxfuse"

  def install
    system "make -C src fuse"
    system "make -C src install INSTALL_PATH=#{prefix}/ MAN_PATH=#{prefix}/"
  end
end
