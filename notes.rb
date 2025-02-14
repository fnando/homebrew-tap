# frozen_string_literal: true

class Notes < Formula
  desc "Display notes like TODO and FIXME"
  homepage "https://github.com/fnando/notes"
  version "0.0.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/fnando/notes/releases/download/v#{version}/notes-aarch64-apple-darwin.tar.gz"
    sha256 "cb41e689ef9c194c6d4673b5942b35ada2ff805db4d39bbeb00e7e6b5aa5e89c"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/fnando/notes/releases/download/v#{version}/notes-x86_64-apple-darwin.tar.gz"
    sha256 "93ba93ac7a2f93486bcf82dc4af7af23216f389d54395b16e49db507677d677e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/fnando/notes/releases/download/v#{version}/notes-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ba42685ab5dfd19d735ef472a513e150f6b8461f63107608cec360738b301f5a"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/fnando/notes/releases/download/v#{version}/notes-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
  end

  def install
    bin.install "notes"
  end

  test do
    system "#{bin}/notes", "--version"
  end
end
