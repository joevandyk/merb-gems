#!/usr/bin/env ruby

gems = `gem list`.scan(/([\w\-_]+)\s*\(([.\d]+)\)/)
File.open("installed.txt", "w") do |f|
  gems.each { |n,v| f << "#{n} -v #{v}\n" }
end
