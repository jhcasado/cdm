# Maintainer: Javier Honorio Casado Fernandez
# Contributor: Jakub Klinkovský <kuba.klinkovsky@gmail.com>
# Contributor: Adlai Chandrasekhar <munchking@gmail.com>
# Contributor: Daniel J Griffiths <ghost1227@archlinux.us>
# Contributor: Mark Foxwell <fastfret79@archlinux.org.uk>

pkgname=cdm-simple-git
_pkgname="cdm-simple"
pkgver=1.0
pkgrel=1
pkgdesc="A simpler Console Display Manager version that use a common .xinitrc, supports default selection with timeout, doesn't depend on dialog/ncurses and doesn't clear the screen."
arch=('any')
url="https://github.com/jhcasado/cdm-simple"
license=('GPL')
makedepends=('tar')
depends=('bash')
provides=('cdm')
conflicts=('cdm')
backup=('etc/cdmrc')
source=('https://github.com/jhcasado/${pkgname}/archive/v${pkgver}.tar.gz')
md5sums=('1c8815e8312ea08fc7f9166d32866301')
epoch=1

prepare() {
  cd "$srcdir/$pkgname-$pkgver"

  # fix version
  sed -i "s:\(COMPTON_VERSION ?= \)git.*:\1v${pkgver}:" Makefile
}

pkgver() {
  cd "$_pkgname"
  git log -1 --format=format:%cd --date=short | sed 's|-|.|g'
}

package() {
  install -d ${pkgdir}/{usr/{bin,share/doc/cdm},etc/profile.d}

  cd "$srcdir/$_pkgname"
  install -Dm644 -T README.md "$pkgdir/usr/share/doc/cdm/README"

  cd "$srcdir/$_pkgname/src"
  install -Dm755 -t "$pkgdir/usr/bin" cdm cdm-xlaunch
  install -Dm644 -t "$pkgdir/etc" cdmrc
  install -Dm644 -t "$pkgdir/usr/share/doc/cdm" ../README.md cdm-profile.sh
  install -Dm755 -T cdm-profile.sh "$pkgdir/etc/profile.d/zzz-cdm-profile.sh"
}
