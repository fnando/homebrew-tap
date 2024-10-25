# frozen_string_literal: true

class Ll < Formula
  desc "A prettier terminal's ls command, with color and " \
       "https://www.nerdfonts.com/ icons."
  homepage "https://github.com/fnando/ll"
  version "0.0.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/ll/releases/download/v0.0.2/ll-aarch64-apple-darwin.tar.gz"
    sha256 "5f8ed107a59d6dabe0ddc583af3311c2a9052d4b16733ecaa7f1e2e91f36845c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fnando/ll/releases/download/v0.0.2/ll-x86_64-apple-darwin.tar.gz"
    sha256 "81abaf6dfc90d38a1184699e0fb368d7f22a12a42999917b44fcf988769eb347"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/ll/releases/download/v0.0.2/ll-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d51464cb46fcc29c875b3bc01b3490546b27666f82b8b9031d928b5871286731"
  end

  def install
    bin.install "ll"
  end

  test do
    system "#{bin}/ll", "--version"
  end
end
