Gem::Specification.new do |s|
  s.platform     = Gem::Platform::RUBY
  s.name         = 'spree_shipping_csv'
  s.version      = '1.1.0'
  s.summary      = 'Export unfulfilled spree order data as a csv file'
  s.description  = ''
  s.required_ruby_version = '>= 1.9.2'

  s.author       = 'Oshin Karamian, Max Sharples, Patrick McElwee'
  s.email        = 'pmcelwee@gmail.com'
  s.homepage     = 'https://github.com/pmcelwee/spree_shipping_csv'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.has_rdoc = true

  s.add_dependency('spree_core', '~> 0.70.0')
  s.add_dependency('fastercsv')

end
