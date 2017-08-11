# -*- encoding: utf-8 -*-
# stub: mini_exiftool 2.8.1 ruby lib
#
# This file is automatically generated by rim.
# PLEASE DO NOT EDIT IT DIRECTLY!
# Change instead the values in Rim.setup in Rakefile.

Gem::Specification.new do |s|
  s.name = "mini_exiftool".freeze
  s.version = "2.8.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jan Friedrich".freeze]
  s.date = "2017-08-11"
  s.description = "This library is a wrapper for the ExifTool command-line application\n(http://www.sno.phy.queensu.ca/~phil/exiftool) written by Phil Harvey.\nIt provides the full power of ExifTool to Ruby: reading and writing of\nEXIF-data, IPTC-data and XMP-data.\n".freeze
  s.email = "janfri26@gmail.com".freeze
  s.files = ["COPYING".freeze, "Changelog".freeze, "README.md".freeze, "Rakefile".freeze, "Tutorial.md".freeze, "examples/copy_icc_profile.rb".freeze, "examples/external_photo.rb".freeze, "examples/print_portraits.rb".freeze, "examples/shift_time.rb".freeze, "examples/show_speedup_with_fast_option.rb".freeze, "lib/mini_exiftool.rb".freeze, "test/data".freeze, "test/data/Bad_PreviewIFD.jpg".freeze, "test/data/Canon.jpg".freeze, "test/data/INFORMATION".freeze, "test/data/invalid_byte_sequence_in_utf8.json".freeze, "test/data/invalid_rational.json".freeze, "test/data/test.jpg".freeze, "test/data/test.jpg.json".freeze, "test/data/test_coordinates.jpg".freeze, "test/data/test_encodings.jpg".freeze, "test/data/test_special_dates.jpg".freeze, "test/helpers_for_test.rb".freeze, "test/test_bad_preview_ifd.rb".freeze, "test/test_class_methods.rb".freeze, "test/test_composite.rb".freeze, "test/test_copy_tags_from.rb".freeze, "test/test_dumping.rb".freeze, "test/test_encodings.rb".freeze, "test/test_filename_access.rb".freeze, "test/test_from_hash.rb".freeze, "test/test_invalid_byte_sequence_in_utf8.rb".freeze, "test/test_invalid_rational.rb".freeze, "test/test_io.rb".freeze, "test/test_pstore.rb".freeze, "test/test_read.rb".freeze, "test/test_read_coordinates.rb".freeze, "test/test_read_numerical.rb".freeze, "test/test_save.rb".freeze, "test/test_special.rb".freeze, "test/test_special_dates.rb".freeze, "test/test_write.rb".freeze]
  s.homepage = "https://github.com/janfri/mini_exiftool".freeze
  s.licenses = ["LGPL-2.1".freeze]
  s.post_install_message = "+-----------------------------------------------------------------------+\n| Please ensure you have installed exiftool at least version 7.65       |\n| and it's found in your PATH (Try \"exiftool -ver\" on your commandline).|\n| For more details see                                                  |\n| http://www.sno.phy.queensu.ca/~phil/exiftool/install.html             |\n| You need also Ruby 1.9 or higher.                                     |\n| If you need support for Ruby 1.8 or exiftool prior 7.65 install       |\n| mini_exiftool version < 2.0.0.                                        |\n+-----------------------------------------------------------------------+\n".freeze
  s.rubygems_version = "2.6.12".freeze
  s.summary = "This library is a wrapper for the ExifTool command-line application (http://www.sno.phy.queensu.ca/~phil/exiftool).".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rim>.freeze, ["~> 2.9"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<regtest>.freeze, [">= 0"])
      s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rim>.freeze, ["~> 2.9"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<regtest>.freeze, [">= 0"])
      s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rim>.freeze, ["~> 2.9"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<regtest>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
  end
end
