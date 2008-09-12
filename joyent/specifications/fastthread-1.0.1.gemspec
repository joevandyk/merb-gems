Gem::Specification.new do |s|
  s.name = %q{fastthread}
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["MenTaLguY <mental@rydia.net>"]
  s.date = %q{2007-10-26}
  s.description = %q{Optimized replacement for thread.rb primitives}
  s.email = %q{}
  s.extensions = ["ext/fastthread/extconf.rb"]
  s.files = ["test/test_queue.rb", "test/test_mutex.rb", "test/test_condvar.rb", "test/test_all.rb", "setup.rb", "Manifest", "ext/fastthread/fastthread.c", "ext/fastthread/extconf.rb", "CHANGELOG", "fastthread.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{}
  s.require_paths = ["lib", "ext"]
  s.rubyforge_project = %q{mongrel}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Optimized replacement for thread.rb primitives}
  s.test_files = ["test/test_all.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
    else
    end
  else
  end
end
