#!/usr/bin/env ruby2.0
# = Summary
#
# This module allows automatic recursive creation of hashes within hashes.
# It's merely an extension of core Hash and meant to be a drop-in replacement.
#
# Author::    Michael Henry (https://github.com/neoCrimeLabs)
# Copyright:: Copyright (c) 2015 Michael Henry
# License::   Mozilla Public License, v2.0
#
# = Examples
#
# == Regular Hash
#
#     > regular = Hash.new
#     => {}
#     > regular['1']['2']['3'] = 'Testing'
#     NoMethodError: undefined method `[]' for nil:NilClass
#       from (irb):18
#           from /usr/bin/irb:12:in `<main>'
#     > regular
#     => {}
#
# == Recursive Hash
#
#     > > require 'neocrime/recursivehash'
#     => true
#     > recursive = NeoCrime::RecursiveHash.new
#     => {}
#     > recursive['1']['2']['3'] = 'Testing'
#     => "Testing"
#     > recursive
#     => {"1"=>{"2"=>{"3"=>"Testing"}}}
#
#--
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
# ++

module NeoCrime #:nodoc:
    class RecursiveHash < ::Hash #:nodoc:
        def initialize #:nodoc:
            super { |hash, key| hash[key] = NeoCrime::RecursiveHash.new }
        end
    end
end

