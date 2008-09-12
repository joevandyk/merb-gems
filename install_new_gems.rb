#!/usr/bin/env ruby

if ARGV[0].nil?
  puts "specify osx, joyent, or something"
  exit
end

`cat installed.txt | xargs -t -L 1 gem install -i #{ARGV[0]} --no-rdoc --no-ri`
