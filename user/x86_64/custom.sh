#!/bin/bash

echo "=============================================="
svn co https://github.com/Lienol/openwrt/trunk/package/diy package/openwrt-packages/diy
rm -rf ./package/openwrt-packages/diy/luci-app-dockerman
rm -rf ./package/openwrt-packages/diy/OpenAppFilter
rm -rf ./package/lean/luci-theme-argon
rm -rf ./package/feeds/garypang/bpytop
rm -rf ./package/feeds/garypang/luci-app-dockerman
rm -rf ./package/feeds/garypang/compressed-memory
rm -rf ./package/feeds/garypang/luci-app-compressed-memory
rm -rf ./package/feeds/garypang/luci-app-qosv4
rm -rf ./package/feeds/garypang/luci-app-speederv2
rm -rf ./package/feeds/garypang/luci-app-sysuh3c
rm -rf ./package/feeds/garypang/luci-app-vssr
rm -rf ./package/feeds/garypang/sub-web
rm -rf ./package/feeds/garypang/luci-app-filebrowser
rm -rf ./package/feeds/garypang/luci-app-k3screenctrl
rm -rf ./package/feeds/garypang/luci-app-scutclient
rm -rf ./package/feeds/garypang/luci-app-ssr-libev-server
rm -rf ./package/feeds/garypang/luci-app-phtunnel
rm -rf ./package/feeds/packages/libgd
rm -rf ./package/feeds/packages/php7
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}
echo "=============================================="
