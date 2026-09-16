# frozen_string_literal: true

class Dotshell < Formula
  desc "A command-line tool to start shell sessions with loaded .env files."
  homepage "https://github.com/fnando/dotshell"
  version "0.0.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/dotshell/releases/download/v#{version}/dotshell-aarch64-apple-darwin.tar.gz"
    sha256 "08b5dd7ba066e81af97f266964995b539428337c71cb962bf10b44bfe2620034"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fnando/dotshell/releases/download/v#{version}/dotshell-x86_64-apple-darwin.tar.gz"
    sha256 "1f4546214cb62d3a24bc8f6aa2b02059ffede593c87d3088238c03ba47461046"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/dotshell/releases/download/v#{version}/dotshell-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d7d7b3392a09efbdc8476b454d14b79d6c4e0e61d3ee51f4530134a3b701e3b1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/dotshell/releases/download/v#{version}/dotshell-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "ea2274bdc9329c92dbf68a1882f1d2c131be1e9a5fd6d10bf585e9bac54bfe63"
  end

  def install
    bin.install "dotshell"
  end

  test do
    system "#{bin}/dotshell", "--version"
  end
end
