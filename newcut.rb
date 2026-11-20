# frozen_string_literal: true

class Newcut < Formula
  desc "Know which albums you have, which you don't, and what's new from the " \
       "artists in your music library."
  homepage "https://github.com/fnando/newcut"
  version "0.0.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/newcut/releases/download/v#{version}/newcut-aarch64-apple-darwin.tar.gz"
    sha256 "0563ad6e4096764cb95628fde5f869fa570c58466f1130968ab2aad07267b5c1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/newcut/releases/download/v#{version}/newcut-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "68888dd349d82edba71f42b106921c732eb1586a6c20651c4e03a3654ab9dd04"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/newcut/releases/download/v#{version}/newcut-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "cdab3f0ce67bcbbc460dc4e96e86385cab87a8acfcbbe76cbf36481cc96a44f2"
  end

  def install
    bin.install "newcut"
  end

  test do
    system "#{bin}/newcut", "--version"
  end
end
