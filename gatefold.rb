# frozen_string_literal: true

class Gatefold < Formula
  desc "A command-line tool that scans a folder of music files and backfills " \
       "missing metadata — lyrics, cover art, and artist images — without " \
       "overwriting anything you already have."
  homepage "https://github.com/fnando/gatefold"
  version "0.0.17"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/gatefold/releases/download/v#{version}/gatefold-aarch64-apple-darwin.tar.gz"
    sha256 "d0b83493606f831159def0a6135cad5d77f088a9cfbc6f1b12bea8fbdb0ce83a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/gatefold/releases/download/v#{version}/gatefold-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1e6bea40ef43564e85d0ae57e73513ff59b90641035f9e89d937d84d25203e24"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/gatefold/releases/download/v#{version}/gatefold-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "ec3b94407e9b323146e7c23834a7dfb4566b186ae990ff7cafd4959912a0593e"
  end

  def install
    bin.install "gatefold"
  end

  test do
    system "#{bin}/gatefold", "--version"
  end
end
