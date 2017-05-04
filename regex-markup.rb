# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula

class RegexMarkup < Formula
  desc "regex-markup performs regular expression-based text markup according to used-defined rules"
  homepage "http://www.nongnu.org/regex-markup/"
  url "http://savannah.nongnu.org/download/regex-markup/regex-markup-0.10.0.tar.gz"
  sha256 "879f0af7622c1eb2d1b7c5f7d0ec53ea96fd48b05bc4f4c17542a2ea17fafba5"

  patch do
    url "https://raw.githubusercontent.com/erikpearson/homebrew-tap/master/regex-markup-0.10.0.patch"
    sha256 "a5eb5a0f8e77c2a1db2b75a72a2c0b4c8a3c6e8a2a55ec0aa8556684d5501eb7"
  end

  def install
    ENV["LC_ALL"] = "en_US.UTF-8"
    ENV.append "CFLAGS", "--std=gnu89" if ENV.compiler == :clang
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--prefix=#{prefix}", 
                          "--mandir=#{man}"
    system "make", "install"
  end

  test do
    system "false"
  end
end
