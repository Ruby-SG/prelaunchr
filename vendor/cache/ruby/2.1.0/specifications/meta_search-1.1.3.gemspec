# -*- encoding: utf-8 -*-
# stub: meta_search 1.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "meta_search".freeze
  s.version = "1.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ernie Miller".freeze]
  s.date = "2012-02-02"
  s.description = "\n      Allows simple search forms to be created against an AR3 model\n      and its associations, has useful view helpers for sort links\n      and multiparameter fields as well.\n    ".freeze
  s.email = "ernie@metautonomo.us".freeze
  s.extra_rdoc_files = ["LICENSE".freeze, "README.rdoc".freeze]
  s.files = ["LICENSE".freeze, "README.rdoc".freeze]
  s.homepage = "http://metautonomo.us/projects/metasearch/".freeze
  s.post_install_message = "\n*** Thanks for installing MetaSearch! ***\nBe sure to check out http://metautonomo.us/projects/metasearch/ for a\nwalkthrough of MetaSearch's features, and click the donate button if\nyou're feeling especially appreciative. It'd help me justify this\n\"open source\" stuff to my lovely wife. :)\n\n".freeze
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Object-based searching (and more) for simply creating search forms.".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, ["~> 3.1"])
      s.add_runtime_dependency(%q<activesupport>.freeze, ["~> 3.1"])
      s.add_runtime_dependency(%q<polyamorous>.freeze, ["~> 0.5.0"])
      s.add_runtime_dependency(%q<actionpack>.freeze, ["~> 3.1"])
      s.add_development_dependency(%q<shoulda>.freeze, ["~> 2.11"])
    else
      s.add_dependency(%q<activerecord>.freeze, ["~> 3.1"])
      s.add_dependency(%q<activesupport>.freeze, ["~> 3.1"])
      s.add_dependency(%q<polyamorous>.freeze, ["~> 0.5.0"])
      s.add_dependency(%q<actionpack>.freeze, ["~> 3.1"])
      s.add_dependency(%q<shoulda>.freeze, ["~> 2.11"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, ["~> 3.1"])
    s.add_dependency(%q<activesupport>.freeze, ["~> 3.1"])
    s.add_dependency(%q<polyamorous>.freeze, ["~> 0.5.0"])
    s.add_dependency(%q<actionpack>.freeze, ["~> 3.1"])
    s.add_dependency(%q<shoulda>.freeze, ["~> 2.11"])
  end
end
