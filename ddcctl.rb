# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

# steps:
# - at url for zip of latest commit, 
# - run brew install, 
# - note the actual SHA from the error message and add it
# - rerun brew install

class Ddcctl < Formula
  desc "DDC monitor controls (brightness) for Mac OSX command line"
  homepage "https://github.com/kfix/ddcctl"
  url "https://github.com/kfix/ddcctl/archive/4818757471369543e2734ea0080fbacd37a3794b.zip"
  version "20181207"
  sha256 "a7bf83d6ba922dba499a9e6aab508b4c279155f1f0a078c6a37ac8248c9adac6"
  head "https://github.com/kfix/ddcctl.git"

  def install
    system "make"
    bin.install "ddcctl"
  end

  test do
   system "false"
  end
end
