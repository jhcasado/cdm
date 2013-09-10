# Maintainer: Javier Honorio Casado Fernandez
# Contributor: Jakub Klinkovský <kuba.klinkovsky@gmail.com>
# Contributor: Adlai Chandrasekhar <munchking@gmail.com>
# Contributor: Daniel J Griffiths <ghost1227@archlinux.us>
# Contributor: Mark Foxwell <fastfret79@archlinux.org.uk>

pkgname=cdm-xinitrc-noclear-git
_pkgname="cdm"
pkgver=2013.09.10
pkgrel=1
pkgdesc="Simple Console Display Manager using ~/.xinitrc and without clear the screen"
arch=('any')
url="https://github.com/jhcasado/cdm-xinitrc-noclear"
license=('GPL')
makedepends=('git')
depends=('xorg-xinit' 'xorg-xdpyinfo' 'kbd')
provides=('cdm')
conflicts=('cdm')
backup=('etc/cdmrc' '~/.xinitrc')
source=('https://github.com/jhcasado/cdm-xinitrc-noclear.git')
md5sums=('SKIP')
epoch=1

pkgver() {
  cd "$_pkgname"
  git log -1 --format=format:%cd --date=short | sed 's|-|.|g'
}

package() {
  install -d ${pkgdir}/{usr/{bin,share/{doc/cdm,cdm/themes}},etc/profile.d}

  cd "$srcdir/$_pkgname"
  install -Dm644 -T README.md "$pkgdir/usr/share/doc/cdm/README"

  cd "$srcdir/$_pkgname/src"
  install -Dm755 -t "$pkgdir/usr/bin" cdm cdm-xlaunch
  install -Dm644 -t "$pkgdir/etc" cdmrc
  install -Dm644 -t "$pkgdir/usr/share/doc/cdm" README.md src/cdm-profile.sh
  install -Dm755 -T cdm-profile.sh "$pkgdir/etc/profile.d/zzz-cdm-profile.sh"
}

# vim:set ts=2 sw=2 et:
