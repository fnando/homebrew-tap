# frozen_string_literal: true

class Gatefold < Formula
  desc "A command-line tool that scans a folder of music files and backfills " \
       "missing metadata — lyrics, cover art, and artist images — without " \
       "overwriting anything you already have."
  homepage "https://github.com/fnando/gatefold"
  version "0.0.18"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/gatefold/releases/download/v#{version}/gatefold-aarch64-apple-darwin.tar.gz"
    sha256 "ab892bdc917c5431a6bacad24f06ff1d6492134073d64a7bbc5d27adaeafa2ce"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/gatefold/releases/download/v#{version}/gatefold-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "760762ca601cfe0157b7c1764a0342737e4a2a615cfc7b11d223ce111807e21c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/gatefold/releases/download/v#{version}/gatefold-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "0955d8a519ea5b62f721a3b78b075286652ef1465871b3d52cef6e890f3e4882"
  end

  def install
    bin.install "gatefold"
  end

  test do
    system "#{bin}/gatefold", "--version"
  end
end
