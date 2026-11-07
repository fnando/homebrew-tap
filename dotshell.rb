# frozen_string_literal: true

class Dotshell < Formula
  desc "A command-line tool to start shell sessions with loaded .env files."
  homepage "https://github.com/fnando/dotshell"
  version "0.0.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/dotshell/releases/download/v#{version}/dotshell-aarch64-apple-darwin.tar.gz"
    sha256 "774cafb87b0e27370e22784aaf0fc36068cafcc8316d6d0e9323b833ffd09cb9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/dotshell/releases/download/v#{version}/dotshell-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "329a92958214471b30d5a1f705bbb9e4eb2f46836cf2d7b953666608acef4391"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/dotshell/releases/download/v#{version}/dotshell-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "1e27648fbc12e7f7726bfec2ebd0f652d06d462885d9d8b77d3f859695c2c05d"
  end

  def install
    bin.install "dotshell"
  end

  test do
    system "#{bin}/dotshell", "--version"
  end
end
