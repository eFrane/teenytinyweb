#!/usr/bin/env /bin/sh
# teenytinyweb, for more info see readme.md"

# markdown content
for file in `ls web | grep -E ".+\.md"`
do
  markdown web/$file > temp;
  cat theme/theme.html|sed -e "s/__TITLE/`basename $file .md`/" -e "/__CONTENT/ r temp" -e "/__CONTENT/d" >  web/`basename $file .md`.html
done
rm temp

# init theme
if [ -d theme/assets ]
then
  cp -r theme/assets web/
fi

sass theme/theme.scss > web/theme.css

# run lighttpd?
if [ $# -eq 1 -a "$1" = "--run" ]
then
  lighttpd -D -f lighttpd.config
fi
