#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo "src-git PWpackages https://github.com/xiaorouji/openwrt-passwall.git;packages" >> feeds.conf.default
echo "src-git PWluci https://github.com/xiaorouji/openwrt-passwall.git;luci" >> feeds.conf.default
echo 'src-git cnsilvan https://github.com/cnsilvan/luci-app-unblockneteasemusic'  >> feeds.conf.default
git clone https://github.com/mchome/openwrt-vlmcsd package/openwrt-vlmcsd
git clone https://github.com/mchome/luci-app-vlmcsd package/luci-app-vlmcsd
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/kuoruan/openwrt-upx.git package/openwrt-upx
# git clone https://github.com/jerrykuku/go-aliyundrive-webdav.git package/go-aliyundrive-webdav
# git clone https://github.com/jerrykuku/luci-app-go-aliyundrive-webdav.git package/luci-app-go-aliyundrive-webdav

