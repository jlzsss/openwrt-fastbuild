#!/bin/bash

echo "=============================================="
svn co https://github.com/Lienol/openwrt/trunk/package/diy package/openwrt-packages/diy
rm -rf ./package/openwrt-packages/diy/luci-app-dockerman
rm -rf ./package/openwrt-packages/diy/OpenAppFilter
rm -rf ./package/lean/luci-theme-argon
rm -rf ./package/feeds/packages/libgd
rm -rf ./package/feeds/packages/php7
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-ssr-libev-server/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}
svn export --force https://github.com/project-lede/openwrt-app/branches/luci18/luci-app-autopoweroff package/luci-app-autopoweroff
svn export --force https://github.com/project-lede/openwrt-app/branches/luci18/luci-app-autoreboot package/luci-app-autoreboot
svn export --force https://github.com/project-lede/openwrt-app/branches/luci18/luci-app-autorepeater package/luci-app-autorepeater
svn export --force https://github.com/project-lede/openwrt-app/branches/luci18/luci-app-chinadns-ng package//luci-app-chinadns-ng
echo "=============================================="
