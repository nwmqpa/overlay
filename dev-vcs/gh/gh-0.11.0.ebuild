EAPI=7

inherit eutils

DESCRIPTION="GitHub CLI"
HOMEPAGE="https://github.com/cli/cli"
SRC_URI="
	amd64? ( ${HOMEPAGE}/releases/download/v${PV}/gh_${PV}_linux_amd64.tar.gz -> ${P}-amd64.tar.gz )
	"
RESTRICT="mirror"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="
"

RDEPEND="${DEPEND}"

S="${WORKDIR}"

src_install(){
    cd "gh_${PV}_linux_amd64"
	dobin "bin/gh"
	insinto "/usr/share/licenses/${PN}"
	newins "LICENSE" "LICENSE"
    insinto "/usr/share/man/man1"
    doman "share/man/man1/*"
}

