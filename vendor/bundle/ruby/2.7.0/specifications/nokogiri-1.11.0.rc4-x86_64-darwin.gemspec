# -*- encoding: utf-8 -*-
# stub: nokogiri 1.11.0.rc4 x86_64-darwin lib

Gem::Specification.new do |s|
  s.name = "nokogiri".freeze
  s.version = "1.11.0.rc4"
  s.platform = "x86_64-darwin".freeze

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/sparklemotion/nokogiri/issues", "changelog_uri" => "https://nokogiri.org/CHANGELOG.html", "documentation_uri" => "https://nokogiri.org/rdoc/index.html", "homepage_uri" => "https://nokogiri.org", "source_code_uri" => "https://github.com/sparklemotion/nokogiri" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mike Dalessio".freeze, "Aaron Patterson".freeze, "John Shahid".freeze, "Yoko Harada".freeze, "Akinori MUSHA".freeze, "Lars Kanis".freeze, "Tim Elliott".freeze]
  s.date = "2020-12-29"
  s.description = "Nokogiri (\u92F8) is an HTML, XML, SAX, and Reader parser.  Among\nNokogiri's many features is the ability to search documents via XPath\nor CSS3 selectors.".freeze
  s.email = "nokogiri-talk@googlegroups.com".freeze
  s.executables = ["nokogiri".freeze]
  s.extra_rdoc_files = ["LICENSE-DEPENDENCIES.md".freeze, "LICENSE.md".freeze, "README.md".freeze, "ext/nokogiri/html_document.c".freeze, "ext/nokogiri/html_element_description.c".freeze, "ext/nokogiri/html_entity_lookup.c".freeze, "ext/nokogiri/html_sax_parser_context.c".freeze, "ext/nokogiri/html_sax_push_parser.c".freeze, "ext/nokogiri/nokogiri.c".freeze, "ext/nokogiri/xml_attr.c".freeze, "ext/nokogiri/xml_attribute_decl.c".freeze, "ext/nokogiri/xml_cdata.c".freeze, "ext/nokogiri/xml_comment.c".freeze, "ext/nokogiri/xml_document.c".freeze, "ext/nokogiri/xml_document_fragment.c".freeze, "ext/nokogiri/xml_dtd.c".freeze, "ext/nokogiri/xml_element_content.c".freeze, "ext/nokogiri/xml_element_decl.c".freeze, "ext/nokogiri/xml_encoding_handler.c".freeze, "ext/nokogiri/xml_entity_decl.c".freeze, "ext/nokogiri/xml_entity_reference.c".freeze, "ext/nokogiri/xml_io.c".freeze, "ext/nokogiri/xml_libxml2_hacks.c".freeze, "ext/nokogiri/xml_namespace.c".freeze, "ext/nokogiri/xml_node.c".freeze, "ext/nokogiri/xml_node_set.c".freeze, "ext/nokogiri/xml_processing_instruction.c".freeze, "ext/nokogiri/xml_reader.c".freeze, "ext/nokogiri/xml_relax_ng.c".freeze, "ext/nokogiri/xml_sax_parser.c".freeze, "ext/nokogiri/xml_sax_parser_context.c".freeze, "ext/nokogiri/xml_sax_push_parser.c".freeze, "ext/nokogiri/xml_schema.c".freeze, "ext/nokogiri/xml_syntax_error.c".freeze, "ext/nokogiri/xml_text.c".freeze, "ext/nokogiri/xml_xpath_context.c".freeze, "ext/nokogiri/xslt_stylesheet.c".freeze]
  s.files = ["LICENSE-DEPENDENCIES.md".freeze, "LICENSE.md".freeze, "README.md".freeze, "bin/nokogiri".freeze, "ext/nokogiri/html_document.c".freeze, "ext/nokogiri/html_element_description.c".freeze, "ext/nokogiri/html_entity_lookup.c".freeze, "ext/nokogiri/html_sax_parser_context.c".freeze, "ext/nokogiri/html_sax_push_parser.c".freeze, "ext/nokogiri/nokogiri.c".freeze, "ext/nokogiri/xml_attr.c".freeze, "ext/nokogiri/xml_attribute_decl.c".freeze, "ext/nokogiri/xml_cdata.c".freeze, "ext/nokogiri/xml_comment.c".freeze, "ext/nokogiri/xml_document.c".freeze, "ext/nokogiri/xml_document_fragment.c".freeze, "ext/nokogiri/xml_dtd.c".freeze, "ext/nokogiri/xml_element_content.c".freeze, "ext/nokogiri/xml_element_decl.c".freeze, "ext/nokogiri/xml_encoding_handler.c".freeze, "ext/nokogiri/xml_entity_decl.c".freeze, "ext/nokogiri/xml_entity_reference.c".freeze, "ext/nokogiri/xml_io.c".freeze, "ext/nokogiri/xml_libxml2_hacks.c".freeze, "ext/nokogiri/xml_namespace.c".freeze, "ext/nokogiri/xml_node.c".freeze, "ext/nokogiri/xml_node_set.c".freeze, "ext/nokogiri/xml_processing_instruction.c".freeze, "ext/nokogiri/xml_reader.c".freeze, "ext/nokogiri/xml_relax_ng.c".freeze, "ext/nokogiri/xml_sax_parser.c".freeze, "ext/nokogiri/xml_sax_parser_context.c".freeze, "ext/nokogiri/xml_sax_push_parser.c".freeze, "ext/nokogiri/xml_schema.c".freeze, "ext/nokogiri/xml_syntax_error.c".freeze, "ext/nokogiri/xml_text.c".freeze, "ext/nokogiri/xml_xpath_context.c".freeze, "ext/nokogiri/xslt_stylesheet.c".freeze]
  s.homepage = "https://nokogiri.org".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--main".freeze, "README.md".freeze]
  s.required_ruby_version = Gem::Requirement.new([">= 2.5".freeze, "< 3.1.dev".freeze])
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Nokogiri (\u92F8) is an HTML, XML, SAX, and Reader parser".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<racc>.freeze, ["~> 1.4"])
    s.add_development_dependency(%q<concourse>.freeze, ["~> 0.41"])
    s.add_development_dependency(%q<hoe>.freeze, ["~> 3.22", ">= 3.22.1"])
    s.add_development_dependency(%q<hoe-bundler>.freeze, ["~> 1.2"])
    s.add_development_dependency(%q<hoe-debugging>.freeze, ["~> 2.0"])
    s.add_development_dependency(%q<hoe-gemspec>.freeze, ["~> 1.0"])
    s.add_development_dependency(%q<hoe-git>.freeze, ["~> 1.6"])
    s.add_development_dependency(%q<hoe-markdown>.freeze, ["~> 1.1"])
    s.add_development_dependency(%q<minitest>.freeze, ["~> 5.8"])
    s.add_development_dependency(%q<minitest-reporters>.freeze, ["~> 1.4"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rake-compiler>.freeze, ["~> 1.1"])
    s.add_development_dependency(%q<rake-compiler-dock>.freeze, ["~> 1.1"])
    s.add_development_dependency(%q<rexical>.freeze, ["~> 1.0.5"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.88"])
    s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.17.0"])
    s.add_development_dependency(%q<rdoc>.freeze, [">= 4.0", "< 7"])
  else
    s.add_dependency(%q<racc>.freeze, ["~> 1.4"])
    s.add_dependency(%q<concourse>.freeze, ["~> 0.41"])
    s.add_dependency(%q<hoe>.freeze, ["~> 3.22", ">= 3.22.1"])
    s.add_dependency(%q<hoe-bundler>.freeze, ["~> 1.2"])
    s.add_dependency(%q<hoe-debugging>.freeze, ["~> 2.0"])
    s.add_dependency(%q<hoe-gemspec>.freeze, ["~> 1.0"])
    s.add_dependency(%q<hoe-git>.freeze, ["~> 1.6"])
    s.add_dependency(%q<hoe-markdown>.freeze, ["~> 1.1"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.8"])
    s.add_dependency(%q<minitest-reporters>.freeze, ["~> 1.4"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rake-compiler>.freeze, ["~> 1.1"])
    s.add_dependency(%q<rake-compiler-dock>.freeze, ["~> 1.1"])
    s.add_dependency(%q<rexical>.freeze, ["~> 1.0.5"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.88"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.17.0"])
    s.add_dependency(%q<rdoc>.freeze, [">= 4.0", "< 7"])
  end
end
