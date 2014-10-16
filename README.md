Vim Aerospike config file Highlighting
======================================

Introduction
------------

This plugin enables syntax highlighting for Aerospike configuration (aerospike.conf) file in the vim editor.


Install
-------

syntax/aerospike.vim copy to your .vim/syntax directory.

Add your .vimrc

        au BufNewFile,BufRead aerospike.conf      set filetype=aerospikeconfig


