# frozen_string_literal: true

class Ll < Formula
  desc "A prettier terminal's ls command, with color and " \
       "https://www.nerdfonts.com/ icons."
  homepage "https://github.com/fnando/ll"
  version "0.0.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/ll/releases/download/v0.0.5/ll-aarch64-apple-darwin.tar.gz"
    sha256 "90c9fa398b24a3020a0bd4fee87978094302c92905acf57b6d5a033f0f23dcfe"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fnando/ll/releases/download/v0.0.5/ll-x86_64-apple-darwin.tar.gz"
    sha256 "a7af40fb3382c55fa16f613450a3e33549d08406b1bbc78a08b21720f1206bd6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/ll/releases/download/v0.0.5/ll-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c822b073123688e7f25174cc3ba3848cc69c69a32e081baee55ac7a2431baa92"
  end

  def install
    bin.install "ll"
  end

  test do
    system "#{bin}/ll", "--version"
  end
end
