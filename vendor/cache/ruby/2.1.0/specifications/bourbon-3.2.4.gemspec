# -*- encoding: utf-8 -*-
# stub: bourbon 3.2.4 ruby lib

Gem::Specification.new do |s|
  s.name = "bourbon".freeze
  s.version = "3.2.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Phil LaPier".freeze, "Chad Mazzola".freeze, "Matt Jankowski".freeze, "Nick Quaranto".freeze, "Jeremy Raines".freeze, "Mike Burns".freeze, "Andres Mejia".freeze, "Travis Haynes".freeze, "Chris Lloyd".freeze, "Gabe Berke-Williams".freeze, "J. Edward Dewyea".freeze, "Reda Lemeden".freeze, "Kyle Fiedler".freeze]
  s.date = "2015-01-16"
  s.description = "Bourbon provides a comprehensive framework of\nsass mixins that are designed to be as vanilla as possible. Meaning they\nshould not deter from the original CSS syntax. The mixins contain vendor\nspecific prefixes for all CSS3 properties for support amongst modern\nbrowsers. The prefixes also ensure graceful degradation for older browsers\nthat support only CSS3 prefixed properties.\n".freeze
  s.email = ["support@thoughtbot.com".freeze]
  s.executables = ["bourbon".freeze]
  s.files = ["bin/bourbon".freeze]
  s.homepage = "https://github.com/thoughtbot/bourbon".freeze
  s.licenses = ["MIT".freeze]
  s.rubyforge_project = "bourbon".freeze
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Bourbon Sass Mixins using SCSS syntax.".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sass>.freeze, ["~> 3.2"])
      s.add_runtime_dependency(%q<thor>.freeze, [">= 0"])
      s.add_development_dependency(%q<aruba>.freeze, ["~> 0.4"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<sass>.freeze, ["~> 3.2"])
      s.add_dependency(%q<thor>.freeze, [">= 0"])
      s.add_dependency(%q<aruba>.freeze, ["~> 0.4"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<sass>.freeze, ["~> 3.2"])
    s.add_dependency(%q<thor>.freeze, [">= 0"])
    s.add_dependency(%q<aruba>.freeze, ["~> 0.4"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
