#!/usr/bin/env ruby

output = `gem list`
command = ""

output.each_line do |line|
  next unless line =~ /\A\w/
  line =~ /\A([\w\-_]+)\s*\(([.\d]+)\)/
  gem, version = $1, $2
  command += "#{gem} -v #{version} "
end

puts command

# OUTPUTS
# abstract -v 1.0.0 builder -v 2.1.2 cgi_multipart_eof_fix -v 2.5.0 daemons -v 1.0.10 diff-lcs -v 1.1.2 english -v 0.2.0 erubis -v 2.6.2 extlib -v 0.9.6 facets -v 2.4.4 fastthread -v 1.0.1 fiveruns-memcache-client -v 1.5.0.3 gem_plugin -v 0.2.3 haml -v 2.0.3 highline -v 1.4.0 hoe -v 1.7.0 hpricot -v 0.6.161 json_pure -v 1.1.3 libxml-ruby -v 0.8.3 mailfactory -v 1.4.0 merb -v 0.9.6 merb-action-args -v 0.9.6 merb-assets -v 0.9.6 merb-builder -v 0.9.6 merb-cache -v 0.9.6 merb-core -v 0.9.6 merb-gen -v 0.9.6 merb-haml -v 0.9.6 merb-jquery -v 0.9.6 merb-mailer -v 0.9.6 merb-more -v 0.9.6 merb-parts -v 0.9.6 merb-slices -v 0.9.6 mime-types -v 1.15 mongrel -v 1.1.5 ParseTree -v 2.2.0 rack -v 0.4.0 rake -v 0.8.2 rspec -v 1.1.4 ruby2ruby -v 1.1.9 rubyforge -v 1.0.0 RubyInline -v 3.7.0 templater -v 0.2 

