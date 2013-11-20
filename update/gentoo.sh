#! /bin/bash
#if you don't have eix, get it. Its way better then the default emerge search.
# and it integrates layman rysincing in one command.
echo "rsyncing" #is alwasy a good idea
eix-sync

echo "updating evrything and keep on going updating"
emerge --update --newuse --deep --with-bdeps=y --keep-going=y @world

echo "cleaning dependicies"
emerge --depclean
revdep-rebuild

echo "merging config files"
etc-update
