# frozen_string_literal: true

class Newcut < Formula
  desc "Know which albums you have, which you don't, and what's new from the " \
       "artists in your music library."
  homepage "https://github.com/fnando/newcut"
  version "0.0.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/newcut/releases/download/v#{version}/newcut-aarch64-apple-darwin.tar.gz"
    sha256 "e787c9d6daf7861c7ceb5a01a7b5a0a4a9a972bfa24f3c0209fb337e48c3eb6b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/newcut/releases/download/v#{version}/newcut-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9ea9f0d37d7f56c788b4e2a9a9a6a8807ef2b40bf16e9cde2c42a8523f1d2061"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/newcut/releases/download/v#{version}/newcut-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "16249cee9656ce5a7a6dbbefa88c737d709f2302e1484be708a8868cb6ed8f43"
  end

  def install
    bin.install "newcut"
  end

  test do
    system "#{bin}/newcut", "--version"
  end
end
