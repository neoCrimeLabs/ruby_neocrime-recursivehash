# Summary

This module allows automatic recursive creation of hashes within hashes.
It's merely an extension of core Hash and meant to be a drop-in replacement.

# Examples

## Regular Hash

    > regular = Hash.new
    => {}
    > regular['1']['2']['3'] = 'Testing'
    NoMethodError: undefined method `[]' for nil:NilClass
      from (irb):18
          from /usr/bin/irb:12:in `<main>'
    > regular
    => {}

## Recursive Hash

    > > require 'neocrime/recursivehash'
    => true
    > recursive = NeoCrime::RecursiveHash.new
    => {}
    > recursive['1']['2']['3'] = 'Testing'
    => "Testing"
    > recursive
    => {"1"=>{"2"=>{"3"=>"Testing"}}}

# Installation

    gem install neocrime-recursivehash

or add "neocrime-recursivehash" to your Gemfile

# License

This Source Code Form is subject to the terms of the Mozilla Public
License, v. 2.0. If a copy of the MPL was not distributed with this
file, You can obtain one at http://mozilla.org/MPL/2.0/.
