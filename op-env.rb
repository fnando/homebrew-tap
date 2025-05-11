# frozen_string_literal: true

class OpEnv < Formula
  desc "A command-line tool to retrieve secrets from 1Password, with custom " \
       "output to several formats. Depends on 1Password's own `op` command."
  homepage "https://github.com/fnando/op-env"
  version "0.0.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/op-env/releases/download/v#{version}/op-env-aarch64-apple-darwin.tar.gz"
    sha256 "e73fe5684938697ba6754bfc976f5b20940c3b3d251a65818eef729adeb38b05"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fnando/op-env/releases/download/v#{version}/op-env-x86_64-apple-darwin.tar.gz"
    sha256 "76d2f747ffdbaeda596c95a68a89660c194ca38ae248e2924b94685ad55d26e6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/op-env/releases/download/v#{version}/op-env-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e630454a30d1a2e707ecd94fa14ed992d5f7b80869dbddce3f9e10ed833d6e58"
  end

  def install
    bin.install "op-env"
  end

  test do
    system "#{bin}/op-env", "--version"
  end
end
