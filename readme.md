teeny tiny web
==============

everything you need to setup a website. really.

you might want to use [git hooks][1] for easy deployment.
if you want to test your site locally, get [lighttpd][2] and
run `./teenytinyweb.sh --run` from the root folder.

to add content, add folders, images and markdown files in `web/`.
to update theme or contents, run `./teenytinyweb.sh` with no arguments.

## dependencies

these binaries __must__ accessable from the $PATH provided by /usr/bin/env:

- [markdown][3]
- [sass][4]

  [1]: http://ryanflorence.com/deploying-websites-with-a-tiny-git-hook/
  [2]: http://www.lighttpd.net/
  [3]: http://daringfireball.net/projects/markdown/
  [4]: http://sass-lang.com/
