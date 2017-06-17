# -*- encoding: utf-8 -*-
# stub: formtastic 2.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "formtastic".freeze
  s.version = "2.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Justin French".freeze]
  s.date = "2012-06-06"
  s.description = "A Rails form builder plugin/gem with semantically rich and accessible markup".freeze
  s.email = ["justin@indent.com.au".freeze]
  s.extra_rdoc_files = ["README.textile".freeze]
  s.files = ["README.textile".freeze]
  s.homepage = "http://github.com/justinfrench/formtastic".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "2.6.12".freeze
  s.summary = "A Rails form builder plugin/gem with semantically rich and accessible markup".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionpack>.freeze, [">= 3.0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 2.8.0"])
      s.add_development_dependency(%q<rspec_tag_matchers>.freeze, [">= 1.0.0"])
      s.add_development_dependency(%q<hpricot>.freeze, ["~> 0.8.3"])
      s.add_development_dependency(%q<BlueCloth>.freeze, [">= 0"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.6"])
      s.add_development_dependency(%q<rcov>.freeze, ["~> 0.9.9"])
      s.add_development_dependency(%q<colored>.freeze, [">= 0"])
      s.add_development_dependency(%q<tzinfo>.freeze, [">= 0"])
      s.add_development_dependency(%q<ammeter>.freeze, ["~> 0.2.5"])
      s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<actionpack>.freeze, [">= 3.0"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 2.8.0"])
      s.add_dependency(%q<rspec_tag_matchers>.freeze, [">= 1.0.0"])
      s.add_dependency(%q<hpricot>.freeze, ["~> 0.8.3"])
      s.add_dependency(%q<BlueCloth>.freeze, [">= 0"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.6"])
      s.add_dependency(%q<rcov>.freeze, ["~> 0.9.9"])
      s.add_dependency(%q<colored>.freeze, [">= 0"])
      s.add_dependency(%q<tzinfo>.freeze, [">= 0"])
      s.add_dependency(%q<ammeter>.freeze, ["~> 0.2.5"])
      s.add_dependency(%q<appraisal>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<actionpack>.freeze, [">= 3.0"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 2.8.0"])
    s.add_dependency(%q<rspec_tag_matchers>.freeze, [">= 1.0.0"])
    s.add_dependency(%q<hpricot>.freeze, ["~> 0.8.3"])
    s.add_dependency(%q<BlueCloth>.freeze, [">= 0"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.6"])
    s.add_dependency(%q<rcov>.freeze, ["~> 0.9.9"])
    s.add_dependency(%q<colored>.freeze, [">= 0"])
    s.add_dependency(%q<tzinfo>.freeze, [">= 0"])
    s.add_dependency(%q<ammeter>.freeze, ["~> 0.2.5"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
