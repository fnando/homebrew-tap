# frozen_string_literal: true

class Ll < Formula
  desc "A prettier terminal's ls command, with color and " \
       "https://www.nerdfonts.com/ icons."
  homepage "https://github.com/fnando/ll"
  version "0.0.6"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/ll/releases/download/v#{version}/ll-aarch64-apple-darwin.tar.gz"
    sha256 "ce08553750031924c86bce1ddc8f3b4a092a9ac33f1af9cfa34835b01926a9f0"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fnando/ll/releases/download/v#{version}/ll-x86_64-apple-darwin.tar.gz"
    sha256 "2f584c113f0594544df89c87f7722dbd37ebf90130d8f93c6d99431d61fef697"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/ll/releases/download/v#{version}/ll-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7245ccbd4f472daf6d7b4c911283e627379e6b6eecd6576b19eae35cb9777f59"
  end

  def install
    bin.install "ll"
  end

  test do
    system "#{bin}/ll", "--version"
  end
end
