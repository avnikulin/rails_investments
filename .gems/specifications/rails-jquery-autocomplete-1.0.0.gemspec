# -*- encoding: utf-8 -*-
# stub: rails-jquery-autocomplete 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-jquery-autocomplete"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["David Padilla", "Joiey Seeley", "Sundus Yousuf"]
  s.date = "2015-01-20"
  s.description = "Use jQuery's autocomplete plugin with Rails 4+."
  s.email = "david.padilla@crowdint.com joiey.seeley@gmail.com sundusahmedyousuf@gmail.com"
  s.homepage = "http://github.com/crowdint/rails-jquery-autocomplete"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.7"
  s.summary = "Use jQuery's autocomplete plugin with Rails 4+."

  s.installed_by_version = "2.4.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 4.0"])
      s.add_development_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_development_dependency(%q<mongoid>, [">= 2.0.0"])
      s.add_development_dependency(%q<mongo_mapper>, [">= 0.9"])
      s.add_development_dependency(%q<mongo>, ["~> 1.6.2"])
      s.add_development_dependency(%q<bson_ext>, ["~> 1.6.2"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-test>, [">= 0"])
      s.add_development_dependency(%q<test-unit>, ["~> 2.2.0"])
      s.add_development_dependency(%q<shoulda>, ["~> 3.0.1"])
      s.add_development_dependency(%q<uglifier>, [">= 0"])
      s.add_development_dependency(%q<rr>, [">= 0"])
      s.add_development_dependency(%q<simple_form>, ["~> 1.5"])
    else
      s.add_dependency(%q<rails>, [">= 4.0"])
      s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
      s.add_dependency(%q<mongoid>, [">= 2.0.0"])
      s.add_dependency(%q<mongo_mapper>, [">= 0.9"])
      s.add_dependency(%q<mongo>, ["~> 1.6.2"])
      s.add_dependency(%q<bson_ext>, ["~> 1.6.2"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-test>, [">= 0"])
      s.add_dependency(%q<test-unit>, ["~> 2.2.0"])
      s.add_dependency(%q<shoulda>, ["~> 3.0.1"])
      s.add_dependency(%q<uglifier>, [">= 0"])
      s.add_dependency(%q<rr>, [">= 0"])
      s.add_dependency(%q<simple_form>, ["~> 1.5"])
    end
  else
    s.add_dependency(%q<rails>, [">= 4.0"])
    s.add_dependency(%q<sqlite3-ruby>, [">= 0"])
    s.add_dependency(%q<mongoid>, [">= 2.0.0"])
    s.add_dependency(%q<mongo_mapper>, [">= 0.9"])
    s.add_dependency(%q<mongo>, ["~> 1.6.2"])
    s.add_dependency(%q<bson_ext>, ["~> 1.6.2"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-test>, [">= 0"])
    s.add_dependency(%q<test-unit>, ["~> 2.2.0"])
    s.add_dependency(%q<shoulda>, ["~> 3.0.1"])
    s.add_dependency(%q<uglifier>, [">= 0"])
    s.add_dependency(%q<rr>, [">= 0"])
    s.add_dependency(%q<simple_form>, ["~> 1.5"])
  end
end
