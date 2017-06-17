# -*- encoding: utf-8 -*-
# stub: activeadmin 0.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "activeadmin".freeze
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Greg Bell".freeze]
  s.date = "2012-12-06"
  s.description = "The administration framework for Ruby on Rails.".freeze
  s.email = ["gregdbell@gmail.com".freeze]
  s.homepage = "http://activeadmin.info".freeze
  s.rubygems_version = "2.6.12".freeze
  s.summary = "The administration framework for Ruby on Rails.".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 3.0.0"])
      s.add_runtime_dependency(%q<jquery-rails>.freeze, [">= 1.0.0"])
      s.add_runtime_dependency(%q<bourbon>.freeze, [">= 1.0.0"])
      s.add_runtime_dependency(%q<meta_search>.freeze, [">= 0.9.2"])
      s.add_runtime_dependency(%q<devise>.freeze, [">= 1.1.2"])
      s.add_runtime_dependency(%q<formtastic>.freeze, [">= 2.0.0"])
      s.add_runtime_dependency(%q<inherited_resources>.freeze, [">= 1.3.1"])
      s.add_runtime_dependency(%q<kaminari>.freeze, [">= 0.13.0"])
      s.add_runtime_dependency(%q<sass>.freeze, [">= 3.1.0"])
      s.add_runtime_dependency(%q<fastercsv>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<arbre>.freeze, [">= 1.0.1"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<jquery-rails>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<bourbon>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<meta_search>.freeze, [">= 0.9.2"])
      s.add_dependency(%q<devise>.freeze, [">= 1.1.2"])
      s.add_dependency(%q<formtastic>.freeze, [">= 2.0.0"])
      s.add_dependency(%q<inherited_resources>.freeze, [">= 1.3.1"])
      s.add_dependency(%q<kaminari>.freeze, [">= 0.13.0"])
      s.add_dependency(%q<sass>.freeze, [">= 3.1.0"])
      s.add_dependency(%q<fastercsv>.freeze, [">= 0"])
      s.add_dependency(%q<arbre>.freeze, [">= 1.0.1"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<jquery-rails>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<bourbon>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<meta_search>.freeze, [">= 0.9.2"])
    s.add_dependency(%q<devise>.freeze, [">= 1.1.2"])
    s.add_dependency(%q<formtastic>.freeze, [">= 2.0.0"])
    s.add_dependency(%q<inherited_resources>.freeze, [">= 1.3.1"])
    s.add_dependency(%q<kaminari>.freeze, [">= 0.13.0"])
    s.add_dependency(%q<sass>.freeze, [">= 3.1.0"])
    s.add_dependency(%q<fastercsv>.freeze, [">= 0"])
    s.add_dependency(%q<arbre>.freeze, [">= 1.0.1"])
  end
end
