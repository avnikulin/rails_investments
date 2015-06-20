# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jquery-ui-bootstrap-rails/version"

Gem::Specification.new do |s|
  s.name        = "jquery-ui-bootstrap-rails"
  s.version     = Jquery::Ui::Bootstrap::Rails::VERSION
  s.authors     = ["Jaimie van Santen"]
  s.email       = ["rhoxus@gmail.com"]
  s.homepage    = "https://github.com/jaimie-van-santen/jquery-ui-bootstrap-rails"
  s.summary     = %q{bootstrap jquery-ui asset pipeline provider/wrapper}
  s.description = %q{This gem provides Twitter's Bootstrap jQuery-UI theme}

  s.rubyforge_project = "jquery-ui-bootstrap-rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end
