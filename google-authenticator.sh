#!/bin/sh

if [ "$USER" != "root" -a "$USER" != "ec2-user" ]; then
if [ ! -f "$HOME/.google_authenticator" ]; then
# 2018/03/12 いただいたコメントを反映し、初期化処理の前後のみトラップするよう修正しました
trap 'exit' SIGINT
echo "google-authenticator の初期設定を行います"
/usr/bin/google-authenticator -t -d -W -u -f
trap -- SIGINT
fi
fi
