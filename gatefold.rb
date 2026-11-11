# frozen_string_literal: true

class Gatefold < Formula
  desc "A command-line tool that scans a folder of music files and backfills " \
       "missing metadata — lyrics, cover art, and artist images — without " \
       "overwriting anything you already have."
  homepage "https://github.com/fnando/gatefold"
  version "0.0.10"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/gatefold/releases/download/v#{version}/gatefold-aarch64-apple-darwin.tar.gz"
    sha256 "3b297e438bb7ab14f6bc36f555775ebb8aaad89922bec94cfe67ccd1c8b1ef78"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/gatefold/releases/download/v#{version}/gatefold-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "6cd6d4f86e93f8ac504d9a0f693554da9d3da5ad87a25ba42fb91bd653f2f8e9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/gatefold/releases/download/v#{version}/gatefold-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "269b8786d57f6925923f1f973c3938bcd15ec0bfca87db6e9d9deaf697c0be62"
  end

  def install
    bin.install "gatefold"
  end

  test do
    system "#{bin}/gatefold", "--version"
  end
end
