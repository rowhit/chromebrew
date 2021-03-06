require 'package'

class Patchutils < Package
  description 'Patchutils is a small collection of programs that operate on patch files.'
  homepage 'http://cyberelk.net/tim/patchutils/'
  version '0.3.4'
  source_url 'http://cyberelk.net/tim/data/patchutils/stable/patchutils-0.3.4.tar.xz'
  source_sha256 'cf55d4db83ead41188f5b6be16f60f6b76a87d5db1c42f5459d596e81dabe876'

  def self.build
    system './configure --prefix=/usr/local'
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end

  def self.check
    system "make", "check"
  end
end
