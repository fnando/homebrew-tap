# frozen_string_literal: true

class Ll < Formula
  desc "A prettier terminal's ls command, with color and " \
       "https://www.nerdfonts.com/ icons."
  homepage "https://github.com/fnando/ll"
  version "0.0.9"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/ll/releases/download/v#{version}/ll-aarch64-apple-darwin.tar.gz"
    sha256 "cc57d15c431160d602e2f194711d582695c6e7439793b39c48121da64ec06dba"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fnando/ll/releases/download/v#{version}/ll-x86_64-apple-darwin.tar.gz"
    sha256 "c624a4bcc6f6e7eba4ec3d9fcc848af1f1ded33310a6c43bbeee17ea1fbacd1c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/ll/releases/download/v#{version}/ll-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d0f3e0044b4434379c800437b6488ac67f3765fda4f72a32716de56bd8abea61"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/ll/releases/download/v#{version}/ll-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "afed087a74607493f1435944d14720808549c9e861ad408178778c659201e6cf"
  end

  def install
    bin.install "ll"
  end

  test do
    system "#{bin}/ll", "--version"
  end
end
