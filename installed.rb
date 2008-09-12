#!/usr/bin/env ruby

gems = `gem list`.scan(/([\w\-_]+)\s*\(([.\d]+)\)/)
gems.each { |n,v| puts "#{n} -v #{v}" }

