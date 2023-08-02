#!/usr/bin/env ruby
regex=/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/
puts ARGV[0].scan(regex).join(",")
