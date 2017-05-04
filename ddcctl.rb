# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

class Ddcctl < Formula
  desc "DDC monitor controls (brightness) for Mac OSX command line"
  homepage "https://github.com/kfix/ddcctl"
  url "https://github.com/kfix/ddcctl/archive/d11c3f4a63a090923b55ec93f363b381f2729d0c.zip"
  version "20170207"
  sha256 "ee4b8dedcd6265ea7846688836dfdf31386e953fb8d975d6d7a04546d71e2a7b"
  head "https://github.com/kfix/ddcctl.git"

  def install
    system "make"
    bin.install "ddcctl"
  end

  test do
   system "false"
  end
end
