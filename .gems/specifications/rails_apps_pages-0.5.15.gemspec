# -*- encoding: utf-8 -*-
# stub: rails_apps_pages 0.5.15 ruby lib

Gem::Specification.new do |s|
  s.name = "rails_apps_pages"
  s.version = "0.5.15"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Daniel Kehoe"]
  s.date = "2014-09-15"
  s.description = "A utility gem to use during development. Generates controllers, views, and routing."
  s.email = ["daniel@danielkehoe.com"]
  s.homepage = ""
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "Add pages to a Rails application, including controllers, views, and routing."

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
