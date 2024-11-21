# frozen_string_literal: true

class Ll < Formula
  desc "A prettier terminal's ls command, with color and " \
       "https://www.nerdfonts.com/ icons."
  homepage "https://github.com/fnando/ll"
  version "0.0.8"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/ll/releases/download/v#{version}/ll-aarch64-apple-darwin.tar.gz"
    sha256 "993f1a8da65c1e72c36d525efadcfa69679bb1d8d2347a5ec531e29d3ec57784"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fnando/ll/releases/download/v#{version}/ll-x86_64-apple-darwin.tar.gz"
    sha256 "fe1da7f0ce1ce56843b89ddf0c852ea95e53d0f4af862271a9d598b222b55bed"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/ll/releases/download/v#{version}/ll-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3df4e7aa9b835de3c92d2547953379004c9342e0b3d823b69885cef3bc1b71f6"
  end

  def install
    bin.install "ll"
  end

  test do
    system "#{bin}/ll", "--version"
  end
end
