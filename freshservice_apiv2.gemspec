Gem::Specification.new do |s|
  s.name        = 'freshservice_apiv2'
  s.version     = '0.1.1'
  s.executables = []
  s.summary     = "A simple way to access freshservice API's"
  s.description = "Wrapper for Freshservice API V2"
  s.author     = ["Rishabh Aditya"]
  s.email       = 'rishabh.aditya@hotmail.com'
  s.files       = ["lib/freshservice_apiv2.rb"]
  s.homepage    = 'https://github.com/rishabh91/freshservice_apiv2'
  s.license       = 'MIT'
  s.add_runtime_dependency 'rest-client', '~> 2.0.2', '>= 2.0.2'
end