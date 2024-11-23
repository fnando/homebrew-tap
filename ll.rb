# frozen_string_literal: true

class Ll < Formula
  desc "A prettier terminal's ls command, with color and " \
       "https://www.nerdfonts.com/ icons."
  homepage "https://github.com/fnando/ll"
  version "0.0.10"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/ll/releases/download/v#{version}/ll-aarch64-apple-darwin.tar.gz"
    sha256 "9630caf8d73a8d7b8e19e9bf3883e0b24d6cd663c968876345c8967818a7d905"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fnando/ll/releases/download/v#{version}/ll-x86_64-apple-darwin.tar.gz"
    sha256 "6b493ca8b362443f1f7df27c16ac6e665e416a7d9977aff717ffda45e9d0a86c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/ll/releases/download/v#{version}/ll-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8a4e2e87fc01154dc481d05cc5b926a411b8ef17f6729a41878535d9e1110c60"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/ll/releases/download/v#{version}/ll-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "69e2ea5f5b99539189e8de8ba235ebcce237d91bb0903995c6b646668d4880e6"
  end

  def install
    bin.install "ll"
  end

  test do
    system "#{bin}/ll", "--version"
  end
end
