#!/usr/bin/env ruby
regex=/hb?t+n/
puts ARGV[0].scan(regex).join
