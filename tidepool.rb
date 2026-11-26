# frozen_string_literal: true

class Tidepool < Formula
  desc "tidepool keeps local copies of YouTube playlists in sync."
  homepage "https://github.com/fnando/tidepool"
  version "0.0.15"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/tidepool/releases/download/v#{version}/tidepool-aarch64-apple-darwin.tar.gz"
    sha256 "57116d154bad860d069db2fff1d02219e2e27fa1e815b099fc1998fbb961dda5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/tidepool/releases/download/v#{version}/tidepool-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dde8221bad64e729b34c51665254607bfd9f6a1f49122dda092fbbd747e4e797"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/tidepool/releases/download/v#{version}/tidepool-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "f84b5c08538a5e6dccf709d3fb3e948e440ee33970f3f7d0516d50d9d90a8c1d"
  end

  def install
    bin.install "tidepool"
  end

  test do
    system "#{bin}/tidepool", "--version"
  end
end
