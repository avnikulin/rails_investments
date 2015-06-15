# -*- encoding: utf-8 -*-
# stub: bootstrap3_autocomplete_input 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "bootstrap3_autocomplete_input"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Max Ivak"]
  s.date = "2015-06-08"
  s.description = "Adds an input with autocomplete/typeahead compatible with Bootstrap 3."
  s.email = ["maxivak@gmail.com"]
  s.homepage = "https://github.com/maxivak/bootstrap3_autocomplete_input"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.7"
  s.summary = "Autocomplete/typeahead input ready to be used with Bootstrap 3 in Rails 4."

  s.installed_by_version = "2.4.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rails>, ["~> 4.1"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<simple_form>, ["~> 3.1"])
    else
      s.add_dependency(%q<rails>, ["~> 4.1"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<simple_form>, ["~> 3.1"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 4.1"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<simple_form>, ["~> 3.1"])
  end
end
