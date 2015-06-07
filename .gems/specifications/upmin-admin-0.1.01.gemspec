# -*- encoding: utf-8 -*-
# stub: upmin-admin 0.1.01 ruby lib

Gem::Specification.new do |s|
  s.name = "upmin-admin"
  s.version = "0.1.01"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Jon Calhoun", "Shane Calhoun"]
  s.date = "2014-10-13"
  s.description = "Customizable admin dashboards generated with only a few lines of code."
  s.email = ["support@upmin.com"]
  s.homepage = "https://www.upmin.com/admin-rails"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.7"
  s.summary = "Quick and Easy Admin Dashboards"

  s.installed_by_version = "2.4.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 0"])
      s.add_runtime_dependency(%q<haml>, [">= 3.0.0"])
      s.add_runtime_dependency(%q<jquery-rails>, [">= 0"])
      s.add_runtime_dependency(%q<sass-rails>, [">= 0"])
      s.add_runtime_dependency(%q<kaminari>, [">= 0"])
      s.add_runtime_dependency(%q<ransack>, [">= 0"])
      s.add_development_dependency(%q<capybara>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<factory_girl_rails>, [">= 0"])
      s.add_development_dependency(%q<launchy>, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<haml>, [">= 3.0.0"])
      s.add_dependency(%q<jquery-rails>, [">= 0"])
      s.add_dependency(%q<sass-rails>, [">= 0"])
      s.add_dependency(%q<kaminari>, [">= 0"])
      s.add_dependency(%q<ransack>, [">= 0"])
      s.add_dependency(%q<capybara>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<factory_girl_rails>, [">= 0"])
      s.add_dependency(%q<launchy>, [">= 0"])
      s.add_dependency(%q<database_cleaner>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<haml>, [">= 3.0.0"])
    s.add_dependency(%q<jquery-rails>, [">= 0"])
    s.add_dependency(%q<sass-rails>, [">= 0"])
    s.add_dependency(%q<kaminari>, [">= 0"])
    s.add_dependency(%q<ransack>, [">= 0"])
    s.add_dependency(%q<capybara>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<factory_girl_rails>, [">= 0"])
    s.add_dependency(%q<launchy>, [">= 0"])
    s.add_dependency(%q<database_cleaner>, [">= 0"])
  end
end
