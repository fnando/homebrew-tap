# frozen_string_literal: true

class OpEnv < Formula
  desc "A command-line tool to retrieve secrets from 1Password, with custom " \
       "output to several formats. Depends on 1Password's own `op` command."
  homepage "https://github.com/fnando/op-env"
  version "0.0.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/op-env/releases/download/v#{version}/op-env-aarch64-apple-darwin.tar.gz"
    sha256 "67d1f9d997a1f736a17b8b7743e4a63bb56261dc6728c8fbec2b50794c506d81"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fnando/op-env/releases/download/v#{version}/op-env-x86_64-apple-darwin.tar.gz"
    sha256 "50f643911506ab6d901087899f5c6a5080810e35893ee848fb582805f12a3583"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/op-env/releases/download/v#{version}/op-env-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "5430955edbc4ba8887272fd89e1fb4898e23997add4adfa8281f2cd86bbcae2e"
  end

  def install
    bin.install "op-env"
  end

  test do
    system "#{bin}/op-env", "--version"
  end
end
