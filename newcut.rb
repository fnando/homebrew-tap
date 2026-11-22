# frozen_string_literal: true

class Newcut < Formula
  desc "Know which albums you have, which you don't, and what's new from the " \
       "artists in your music library."
  homepage "https://github.com/fnando/newcut"
  version "0.0.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/newcut/releases/download/v#{version}/newcut-aarch64-apple-darwin.tar.gz"
    sha256 "066f57b097ed6cad1241bbd1b8760e06b11263ebecc541606364bcf3681f0b27"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/newcut/releases/download/v#{version}/newcut-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8932e434b79ba1bb08dba4a31b667882dd698645c2d3c0a62c71afbaa91b5b28"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/newcut/releases/download/v#{version}/newcut-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "2c9478bffbc65049a0471b9077f43e6d3d33b4338f9d5829fc6a9a842245c60b"
  end

  def install
    bin.install "newcut"
  end

  test do
    system "#{bin}/newcut", "--version"
  end
end
