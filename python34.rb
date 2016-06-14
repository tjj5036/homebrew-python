class Python34 < Formula
  desc "Interpreted, interactive, object-oriented programming language"
  homepage "https://www.python.org/"
  url "https://www.python.org/ftp/python/3.4.2/Python-3.4.2.tgz"
  version "3.4.2"
  sha256 "44a3c1ef1c7ca3e4fd25242af80ed72da941203cb4ed1a8c1b724d9078965dd8"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end

  def post_install
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.4"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.4-config"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.4m"
    (HOMEBREW_PREFIX/"bin").install_symlink bin/"python3.4m-config"
  end

end
