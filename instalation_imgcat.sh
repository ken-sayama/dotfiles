#!/usr/local/bin/bash

# シェルスクリプトを記述するファイル名
file_name=imgcat

# curlでシェルスクリプトを取得
set=$(curl https://raw.githubusercontent.com/gnachman/iTerm2/master/tests/imgcat)

# ファイル生成
add_file_imgcat=$(touch /usr/local/bin/$file_name)

# 生成したファイルにシェルスクリプトを書き込む
import_file_imgcat=$(echo $set >> /usr/local/bin/$file_name)

# 生成したファイルに権限を付与
chmod_file_imgcat=$(chmod +x /usr/local/bin/$file_name)

# 以下で実行を順次行っていく
echo $set
echo $add_file_imgcat
echo $import_file_imgcat
echo $chmod_file_imgcat
