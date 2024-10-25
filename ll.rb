# frozen_string_literal: true

class Ll < Formula
  desc "A prettier terminal's ls command, with color and " \
       "https://www.nerdfonts.com/ icons."
  homepage "https://github.com/fnando/ll"
  version "0.0.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/ll/releases/download/v0.0.3/ll-aarch64-apple-darwin.tar.gz"
    sha256 "eca13dab994f7658918bca046e893182a098b5c8ccb1fadc6ad35b5d739aaffe"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fnando/ll/releases/download/v0.0.3/ll-x86_64-apple-darwin.tar.gz"
    sha256 "649bd5e59cdf149c715f3324de70b1a42ba4f0ed257454b9231556ab9a029ede"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/ll/releases/download/v0.0.3/ll-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ea30523a2183a67268c7b4242102fff6ef5dfa3437ca9c498dbc20a06051587e"
  end

  def install
    bin.install "ll"
  end

  test do
    system "#{bin}/ll", "--version"
  end
end
