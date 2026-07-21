# frozen_string_literal: true

class Dotshell < Formula
  desc "A command-line tool to start shell sessions with loaded .env files."
  homepage "https://github.com/fnando/dotshell"
  version "0.0.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/dotshell/releases/download/v#{version}/dotshell-aarch64-apple-darwin.tar.gz"
    sha256 "5e4e8735869974bf088afc44b15cec8519b1496d63d85edc8a1521e2c7759108"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fnando/dotshell/releases/download/v#{version}/dotshell-x86_64-apple-darwin.tar.gz"
    sha256 "4921c301456d0a836f2866a4b5b2e8752958c5c281d67a16f5d3d25e70f06f92"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/dotshell/releases/download/v#{version}/dotshell-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "fd7505261a7663af187af16aaa78c673b17d1a77668b985cfb469fdd779cf764"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/dotshell/releases/download/v#{version}/dotshell-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "ecf078595e78474eded8171b1fd8272c1ba32d1fdcab77cee144a3cb4da616ab"
  end

  def install
    bin.install "dotshell"
  end

  test do
    system "#{bin}/dotshell", "--version"
  end
end
