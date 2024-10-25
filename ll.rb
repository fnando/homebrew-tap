# frozen_string_literal: true

class Ll < Formula
  desc "A prettier terminal's ls command, with color and " \
       "https://www.nerdfonts.com/ icons."
  homepage "https://github.com/fnando/ll"
  version "0.0.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/ll/releases/download/v0.0.4/ll-aarch64-apple-darwin.tar.gz"
    sha256 "e46d741ca3523706797ebe6a62d9cd0bfd963c88a26c06e6315e519a11a7bf70"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fnando/ll/releases/download/v0.0.4/ll-x86_64-apple-darwin.tar.gz"
    sha256 "69878c0214773dce283407be801b5dcf99f0b900de38d48ccdb68824187d280d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/ll/releases/download/v0.0.4/ll-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "07b091d39e14234d7c6d463bb987c99bee5cc019f90226012eed889c190b91a7"
  end

  def install
    bin.install "ll"
  end

  test do
    system "#{bin}/ll", "--version"
  end
end
