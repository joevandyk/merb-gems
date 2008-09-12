Gem::Specification.new do |s|
  s.name = %q{memcache-client}
  s.version = "1.5.0"

  s.required_rubygems_version = Gem::Requirement.new("> 0.0.0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eric Hodel", "Robert Cottrell"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDNjCCAh6gAwIBAgIBADANBgkqhkiG9w0BAQUFADBBMRAwDgYDVQQDDAdkcmJy\nYWluMRgwFgYKCZImiZPyLGQBGRYIc2VnbWVudDcxEzARBgoJkiaJk/IsZAEZFgNu\nZXQwHhcNMDcwODE0MDAwMjIzWhcNMDgwODEzMDAwMjIzWjBBMRAwDgYDVQQDDAdk\ncmJyYWluMRgwFgYKCZImiZPyLGQBGRYIc2VnbWVudDcxEzARBgoJkiaJk/IsZAEZ\nFgNuZXQwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDVZUNKmnp8LrkM\nbQd5ZrcTV1R7woai4clBLUjH3DL47r+f6d5dz+gJUegZ3RKWdSvOfaRmXFkr2+nv\nvc6uzcxk9w1uN5Z3w+BCeKtsUR8EtUhH8b26HDNGDeuoTX1gEgm4DacBh1/Ib+SQ\nPxLVkFnWiCekGvL7jzecw6UwADn49Ag4NxIvpN0ttsYCQFMDuqzdISjurbb3dZ2z\nOsaDqdW29c3Jed816kVhOzRZ2EC4BExPtEN6xZCwab6f9tzJT+Atea7PRFLm/T7t\nQFBPGC2XjPUXJxTyz+8PEDDb2PXeZwPSDIysq1tzB55A3rE1a5pLvnBfek5KjC25\n0wuuKuxlAgMBAAGjOTA3MAkGA1UdEwQCMAAwCwYDVR0PBAQDAgSwMB0GA1UdDgQW\nBBStuxfp/gfzqL+3k7tFe8gVU9zpvDANBgkqhkiG9w0BAQUFAAOCAQEAvnmUelUN\ns9f/VasT9mZV4tIP3sKi0uqyq9i7vtDgCNFw0BAKNxa6ybO1CrBBnjDMa4hvhrW8\nqCLkx7BFHGV/eWR3pdwcLAS8cLuEib75nuG1lbG2yIvGSYTyQ/oxbmuUAZxpavK2\n101OludXvBC9hpA4Qz3UhJYBdtT8TuztiFGLzhCJusjUD7I6Y+TrrTPkBGceVVyY\nhx8aJk+44+jvzgsTi4MyrRo4lAGsQxFa1f1IBuEgqNPdML31yGO0QKof+IqPiVNo\nHsCQoSWkgfQE0DHTgx+hWkF2d10+54I4aM9tIROeGACQemcj0IRf3v7Au8I+6PWl\n3E1oHz01aNcUFA==\n-----END CERTIFICATE-----\n"]
  s.date = %q{2007-08-13}
  s.description = %q{memcache-client is a client for Danga Interactive's memcached.}
  s.email = %q{drbrain@segment7.net}
  s.extra_rdoc_files = ["History.txt", "LICENSE.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "LICENSE.txt", "Manifest.txt", "README.txt", "Rakefile", "lib/memcache.rb", "lib/memcache_util.rb", "test/test_mem_cache.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://seattlerb.org/memcache-client}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new("> 0.0.0")
  s.rubyforge_project = %q{seattlerb}
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{A Ruby memcached client}
  s.test_files = ["test/test_mem_cache.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 1

    if current_version >= 3 then
      s.add_runtime_dependency(%q<ZenTest>, [">= 3.4.2"])
      s.add_runtime_dependency(%q<hoe>, [">= 1.3.0"])
    else
      s.add_dependency(%q<ZenTest>, [">= 3.4.2"])
      s.add_dependency(%q<hoe>, [">= 1.3.0"])
    end
  else
    s.add_dependency(%q<ZenTest>, [">= 3.4.2"])
    s.add_dependency(%q<hoe>, [">= 1.3.0"])
  end
end
