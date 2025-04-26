# frozen_string_literal: true

class OpEnv < Formula
  desc "A command-line tool to retrieve secrets from 1Password, with custom " \
       "output to several formats. Depends on 1Password's own `op` command."
  homepage "https://github.com/fnando/op-env"
  version "0.0.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/op-env/releases/download/v#{version}/op-env-aarch64-apple-darwin.tar.gz"
    sha256 "408c79a2d0f121cf2856d06c8cca66c0cfc66ab2378dc9ceca2095fae29a9d3c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fnando/op-env/releases/download/v#{version}/op-env-x86_64-apple-darwin.tar.gz"
    sha256 "69661074b877a56901e700e3060a6a54c7f2a571eaa3bb3856dddd9e59ffa31f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/op-env/releases/download/v#{version}/op-env-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "892ffa02e90277717b881a663f514e1676d44a5b92a9247a826aead68b3212c2"
  end

  def install
    bin.install "op-env"
  end

  test do
    system "#{bin}/op-env", "--version"
  end
end
