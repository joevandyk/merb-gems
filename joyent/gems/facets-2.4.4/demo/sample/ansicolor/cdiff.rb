#!/usr/bin/env ruby
#
## Little unix filter that colorizes diff output
#

require 'term/ansicolor'

include Term::ANSIColor

ARGF.each do |line|
  print(
    case line
    when /^\+/ then green { line }
    when /^-/ then red { line }
    when /^(@@|diff)/ then blue { line }
    else line
    end
  )
end
  # vim: set et sw=2 ts=2:
