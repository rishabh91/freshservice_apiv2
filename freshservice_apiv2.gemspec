Gem::Specification.new do |s|
  s.name        = 'freshservice_apiv2'
  s.version     = '1.0'
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.summary     = "A simple way to access freshservice API's"
  s.description = "Wrapper for Freshservice API V2"
  s.authors     = ["Rishabh Aditya"]
  s.email       = 'rishabh.aditya@hotmail.com'
  s.files       = [ "lib/freshervice_apiv2.rb",
                    "lib/tickets.rb"
                    ]
  s.require_paths = ["lib"]
  s.homepage    = 'https://github.com/rishabh91/freshservice_apiv2'
  s.license       = 'MIT'
  s.add_runtime_dependency 'rest-client'
  s.add_runtime_dependency 'json'
end