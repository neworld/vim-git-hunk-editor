Very small plugin to easily stage lines.
A plugin takes care of range line.

![example](assets/tty.gif)

### Instalation

#### Arch linux

Use favourite Aur package manager.
For example:

```
yay -S vim-git-hunk-editor
```

#### [pathogen.vim](https://github.com/tpope/vim-pathogen)

```
cd ~/.vim/bundle
git clone git://github.com/neworld/vim-git-hunk-editor.git
```

#### Manually

```
git clone git://github.com/neworld/vim-git-hunk-editor.git
cp vim-git-hunk-editor/plugin/git-hunk-editor.vim ~/.vim/plugin/
```

or use makefile:

```
git clone git://github.com/neworld/vim-git-hunk-editor.git
cd vim-git-hunk-editor
makefile install
```

### Usage

Add key binding to .vimrc

```
nnoremap <F5> :HunkLineToggle<CR>
```

### License

```
MIT License

Copyright (c) 2018 Andrius Semionovas

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
