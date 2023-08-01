#!/usr/bin/env ruby
regex=/hbt{2,5}n/
puts ARGV[0].scan(regex).join
