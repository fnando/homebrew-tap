# frozen_string_literal: true

class Gatefold < Formula
  desc "A command-line tool that scans a folder of music files and backfills " \
       "missing metadata — lyrics, cover art, and artist images — without " \
       "overwriting anything you already have."
  homepage "https://github.com/fnando/gatefold"
  version "0.0.19"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/gatefold/releases/download/v#{version}/gatefold-aarch64-apple-darwin.tar.gz"
    sha256 "a6037877dd235dc7b371772a74169f800989b4a574ee689254e7104649f7e1b1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/gatefold/releases/download/v#{version}/gatefold-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dac8cccbde788d3a88833935fed51688bc339f23357ca299822b0589fede771b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/gatefold/releases/download/v#{version}/gatefold-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "5df55c3d35fc550ca47ad56d495eb8d186ca96fbc2f1217c935c4ce18573f301"
  end

  def install
    bin.install "gatefold"
  end

  test do
    system "#{bin}/gatefold", "--version"
  end
end
