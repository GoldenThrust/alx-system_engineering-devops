#!/usr/bin/env ruby
regex=/[A-Z]/
puts ARGV[0].scan(regex).join
