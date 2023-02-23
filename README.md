# scsnowman

This LaTeX package provides a command `\scsnowman`, which can display many
variants of snowman ("yukidaruma" in Japanese).
This package utilizes TikZ for drawing snowman.

The package is maintained on GitHub:
https://github.com/aminophen/scsnowman

## Samples

![sample-01](http://img.f.hatena.ne.jp/images/fotolife/a/acetaminophen/20151213/20151213003442.png)

![sample-02](http://img.f.hatena.ne.jp/images/fotolife/a/acetaminophen/20151213/20151213004819.png)

![sample-03](http://img.f.hatena.ne.jp/images/fotolife/a/acetaminophen/20151213/20151213011831.png)

## Requirements

This package requires "tikz" package.

## Installation

Deploy the files in an appropriate place under the TEXMF tree.

        * scsnowman.sty, sctkzsym-base.sty, scsnowman-normal.def
               => $TEXMF/tex/latex/scsnowman
        * scsnowman.{tex,pdf}, scsnowman-sample.{tex,pdf}
               => $TEXMF/doc/latex/scsnowman

Then, execute mktexlsr.

## License

This package is distributed under the BSD 2-Clause License.
See [LICENSE](./LICENSE).

## Version History

 - 2015-12-13 Version 0.1
    - First commit
 - 2015-12-19 Version 0.2
    - Trivial fix
 - 2016-08-06 Version 0.3
    - Add new command `\makeqedsnowman`
 - 2016-08-06 Version 0.4
    - Add new command `\makeitemsnowman`
 - 2016-08-07 Version 0.5
    - Add new command `\scsnowmandefault`
 - 2016-08-07 Version 0.5a
    - Add "init" option; fix default for qed/item
 - 2016-08-08 Version 0.6
    - Add new variant "buttons"
 - 2016-08-08 Version 0.7
    - Add new variant "mouthshape"
 - 2016-08-08 Version 0.8
    - Add new variant "sweat", new command `\makedocumentsnowman`
 - 2016-12-22 Version 1.0
    - First CTAN release
 - 2017-01-22 Version 1.1
    - Add new key "adjustbaseline" (Thanks: @doraTeX)
 - 2017-08-08 Version 1.2
    - Default color reacts to surrounding text color
    - Support Japanese vertical writing
    - Add new key "shape", new command `\usescsnowmanlibrary`
 - 2017-11-25 Version 1.2a
    - Fix a bug in scaling with "adjustbaseline" (Thanks: @zr-tex8r)
 - 2018-01-05 Version 1.2b
    - A Happy New Year!
    - Add new keys "mikan" and "leaf" (Thanks: @k16shikano)
    - Stopped loading amsthm package by default
 - 2018-01-15 Version 1.2c
    - Add a new key "broom" (Thanks: @zr-tex8r)
 - 2018-06-07 Version 1.2d
    - Add new keys "nose" and "note"
    - Add a new command `\scsnowmannumeral`
 - 2019-08-12 Version 1.2e
    - Fix a bug of possible infinite loop
 - 2020-10-10 Version 1.3a
    - Update for new LaTeX with shipout hook
 - 2023-02-14 Version 1.3b
    - Fix a bug of upTeX engine detection
 - 2023-02-23 Version 1.3c
    - Another bug fix of engine detection

--------------------
Copyright (c) 2015-2023 Hironobu Yamashita
http://acetaminophen.hatenablog.com/
