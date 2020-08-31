# Nano Syntax Highlighting for Batch-file Shell Scripts.

*\* This file is currently included within the popular repo [Improved Nano Syntax Highlighting Files](https://github.com/scopatz/nanorc/blob/master/batch.nanorc)!!*

## Features

- A big list of cmd commands extracted from [SS64](https://ss64.com/nt/).
  - 40 native commands + 151 common commands.
  - For judging whether a command is 'common', I used the highlighting of Github and Sublime as a reference.
- Conformed to the color-coding convention as of [sh.nanorc](https://git.savannah.gnu.org/cgit/nano.git/tree/syntax/sh.nanorc) and many others.
- Detect the syntax from the `@ECHO OFF` header automatically.
- Comment out a line with `::` automatically when keybinding (default: `M-3`) been pressed. 


## Screenshot

<img src="/res/scnshot.png" width=600>


## References

- [nanorc (5) - Linux Man Page](https://www.systutorials.com/docs/linux/man/5-nanorc/)

- [Windows CMD - SS64](https://ss64.com/nt/)

- [Windows Commands - Microsoft Docs](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/for)

- [mitchell486/nanorc/bat.nanorc](https://github.com/mitchell486/nanorc)
