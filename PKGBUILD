# Maintainer: Javier Honorio Casado Fernandez
# Contributor: Jakub Klinkovský <kuba.klinkovsky@gmail.com>
# Contributor: Adlai Chandrasekhar <munchking@gmail.com>
# Contributor: Daniel J Griffiths <ghost1227@archlinux.us>
# Contributor: Mark Foxwell <fastfret79@archlinux.org.uk>

pkgname=cdm-simple-git
_pkgname="cdm-simple"
pkgver=2013.09.10
pkgrel=1
pkgdesc="A simpler version of Console Display Manager (cdm-git) that use a common .xinitrc, doesn't use/depend from dialog/ncurses and doesn't clear the screen."
arch=('any')
url="https://github.com/jhcasado/cdm-simple"
license=('GPL')
makedepends=('git')
depends=('bash')
provides=('cdm')
conflicts=('cdm')
backup=('etc/cdmrc')
source=('git://github.com/jhcasado/cdm-simple.git')
md5sums=('SKIP')
epoch=1

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
