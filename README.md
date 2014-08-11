# unite-go-imports

## Requirements

- [vim-jp/go-vim](http://github.com/vim-jp/go-vim) or [fatih/vim-go](http://github.com/fatih/vim-go) or other provider of drop command.
- [ToQoz/goimps](http://github.com/ToQoz/goimps)
	`go get github.com/ToQoz/goimps`
	Add `set rtp+=$GOPATH/src/github.com/ToQoz/goimps/misc/vim` to your vimrc

## Installation

### with NeoBundle

Add `NeoBundle 'ToQoz/unite-go-imports'`

### with Vundle

Add `Bundle 'ToQoz/unite-go-imports'`

## Configuration

If you want to use custom godrop/goimport command that is not :GoDrop/:GoImport nor :Drop/:Import.

```
g:godrop_command = "CustomeGoDrop"
g:goimport_command = "CustomeGoImport"
```

## Usage

```
:Unite go/import
:Unite go/drop
```
