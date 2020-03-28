# Maintainer: Leo Yang <webmaster@raspii.tech>

pkgname=easyconnect
pkgver=7.6.3.0
pkgrel=5
pkgdesc="Support access to ssl vpn. With easyconect，you can secure and speed up connection to cooperate network at ease!"
arch=('x86_64')
url="http://www.sangfor.com.cn"
license=('custom')
makedepends=('meson'
		'ninja'
		'gobject-introspection')
install=${pkgname}.install
source=("http://download.sangfor.com.cn/download/product/sslvpn/pkg/linux_01/EasyConnect_x64.rpm"
        "http://ftp.gnome.org/pub/GNOME/sources/pango/1.43/pango-1.43.0.tar.xz")
md5sums=('4cd669961dd6a632c95b4eb743d60ab9'
        '2df040d3f6a4ed9bc316a70b35adcd8b')
build(){
	tar xf ${srcdir}/pango-1.43.0.tar.xz 
	cd pango-1.43.0
	rm -rf build
	meson . build && ninja -C build
}
package(){
	cp -r ${srcdir}/usr/. ${pkgdir}/usr
	cd pango-1.43.0
	DESTDIR=${pkgdir}"/usr/share/sangfor/EasyConnect/pango" ninja -C build install
	cd ${pkgdir}
	sed -i 's/Exec=/Exec=env LD_LIBRARY_PATH=\/usr\/share\/sangfor\/EasyConnect\/pango\/usr\/local\/lib /g' "${pkgdir}/usr/share/applications/EasyConnect.desktop"
	install -D -m644 "${pkgdir}/usr/share/sangfor/EasyConnect/LICENSES.chromium.html" "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
}
