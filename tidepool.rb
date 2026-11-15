# frozen_string_literal: true

class Tidepool < Formula
  desc "tidepool keeps local copies of YouTube playlists in sync."
  homepage "https://github.com/fnando/tidepool"
  version "0.0.14"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/tidepool/releases/download/v#{version}/tidepool-aarch64-apple-darwin.tar.gz"
    sha256 "cd1ab2fe6d2579b75ca95660ed37de9b303aca36b5207f17322489df3a4b7d9f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/tidepool/releases/download/v#{version}/tidepool-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2c78e31e0979e625bca964481906b390f5c20151e5608a6ede6e2ebb6343c369"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/tidepool/releases/download/v#{version}/tidepool-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "aef020383e1af6793131cb9b715ccdda8e7616c72ea9106f9ac79e4de3259bb7"
  end

  def install
    bin.install "tidepool"
  end

  test do
    system "#{bin}/tidepool", "--version"
  end
end
