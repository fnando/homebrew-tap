# frozen_string_literal: true

class Notes < Formula
  desc "A command-line tool to display markers like TODO and FIXME."
  homepage "https://github.com/fnando/notes"
  version "0.0.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/notes/releases/download/v#{version}/notes-aarch64-apple-darwin.tar.gz"
    sha256 "969937504ae6f1756b7361c2aae5058a104b044c3cf065d44c9a673d28f64919"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/notes/releases/download/v#{version}/notes-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ddb15b8060f2ee599113d45fcb4b61d2cfc3bc38dad72650b25ee9d9044b5d9c"
  end

  def install
    bin.install "notes"
  end

  test do
    system "#{bin}/notes", "--version"
  end
end
