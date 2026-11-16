# frozen_string_literal: true

class Ll < Formula
  desc "A prettier terminal's ls command, with color and nerdfonts.com icons."
  homepage "https://github.com/fnando/ll"
  version "0.0.11"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/ll/releases/download/v#{version}/ll-aarch64-apple-darwin.tar.gz"
    sha256 "3ae3316596ecc7ae2b473096b7b86acf70c3e402bc78764a3d423ec2e1ada09a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/ll/releases/download/v#{version}/ll-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f558d109823ba5ca4f5185bc2f8f950f707153195b0ca6e552d61a528e88a17f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/ll/releases/download/v#{version}/ll-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "aff80f4f3288bc495a23dd3da187d08ce1fe7b238cc9be6e58e992971a762032"
  end

  def install
    bin.install "ll"
  end

  test do
    system "#{bin}/ll", "--version"
  end
end
