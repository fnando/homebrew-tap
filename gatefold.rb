# frozen_string_literal: true

class Gatefold < Formula
  desc "A command-line tool that scans a folder of music files and backfills " \
       "missing metadata — lyrics, cover art, and artist images — without " \
       "overwriting anything you already have."
  homepage "https://github.com/fnando/gatefold"
  version "0.0.23"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/gatefold/releases/download/v#{version}/gatefold-aarch64-apple-darwin.tar.gz"
    sha256 "0ce7d133afd8ca793a7a3f8ea3a8e153240a25f86e405e2f1ab708484af95f28"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/gatefold/releases/download/v#{version}/gatefold-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8d92fa17d6d660071b70dfce5adb6efc02adcdd2a32b0882f9faebe79b5ddce4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/gatefold/releases/download/v#{version}/gatefold-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "42477fe51117f711df48373facdf3b69196647a852be96eade6026e60d301b5e"
  end

  def install
    bin.install "gatefold"
  end

  test do
    system "#{bin}/gatefold", "--version"
  end
end
