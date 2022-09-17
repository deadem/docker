cwd=$(pwd)
mkdir $cwd/repo

mkdir /tmp/repo >/dev/null 2>&1
cd /tmp/repo

git clone $(perl -e "\$x=\"$1\"; \$x=~s/\/pull\/.+//; print \$x;") .
git fetch origin $(perl -e "\$x=\"$1\"; \$x=~s/.*?\/(pull\/.+)/\$1\/head:merge_request/; print \$x;") && git checkout merge_request

cp -R . $cwd/repo

/bin/bash
rm -rf $cwd/repo
rm -rf /tmp/repo

#using: clone https://github.com/putiniyama/middle.messenger.praktikum.yandex/pull/1
