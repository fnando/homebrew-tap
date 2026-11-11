# frozen_string_literal: true

class Tidepool < Formula
  desc "tidepool keeps local copies of YouTube playlists in sync."
  homepage "https://github.com/fnando/tidepool"
  version "0.0.13"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/tidepool/releases/download/v#{version}/tidepool-aarch64-apple-darwin.tar.gz"
    sha256 "84335d50354c4ba95aa3e0ac84547410da20a309a1d611404ffd08f9c9aae76e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/tidepool/releases/download/v#{version}/tidepool-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "54d9b45861c2c2346b61462d6843c83b986749a510c75201ec215e9731fb427d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/tidepool/releases/download/v#{version}/tidepool-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "a74fcb445c88383aff8ad5c0682ff230de95bc5bdcc7ec664fc3980c4b944845"
  end

  def install
    bin.install "tidepool"
  end

  test do
    system "#{bin}/tidepool", "--version"
  end
end
