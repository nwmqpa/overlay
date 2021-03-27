EAPI=7
inherit font

DESCRIPTION="JetBrains Mono – the free and open-source typeface for developers "
HOMEPAGE="https://jetbrains.com/mono"
SRC_URI="https://download-cf.jetbrains.com/fonts/JetBrainsMono-${PV}.zip"

LICENSE="OFL-1.1"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
DEPEND="app-arch/unzip"

S=${WORKDIR}/fonts/ttf
FONT_SUFFIX="ttf"
