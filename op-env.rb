# frozen_string_literal: true

class OpEnv < Formula
  desc "A command-line tool to retrieve secrets from 1Password, with custom " \
       "output to several formats. Depends on 1Password's own `op` command."
  homepage "https://github.com/fnando/op-env"
  version "0.0.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/op-env/releases/download/v#{version}/op-env-aarch64-apple-darwin.tar.gz"
    sha256 "27b894c24cb44e0ca58dfdd5a9a09918686de05c395cb216fe6a239be9a7ce85"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fnando/op-env/releases/download/v#{version}/op-env-x86_64-apple-darwin.tar.gz"
    sha256 "f79fb195dc5a312077a75fb51dc3ac81ee403228da232be7c3f2b5839b4a4b1b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/op-env/releases/download/v#{version}/op-env-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "509ee50814909d3f8ec738376e84937a88ed3ae361f113f3994a3530ef37a477"
  end

  def install
    bin.install "op-env"
  end

  test do
    system "#{bin}/op-env", "--version"
  end
end
