# -- encoding: utf-8 --
require 'helpers_for_test'

class TestCustomTags < TestCase

  include TempfileTest

  def setup
    super
    @data_dir = File.dirname(__FILE__) + '/data'
    @filename_test = @data_dir + '/test_custom_xmp.jpg'
    @mini_exiftool = MiniExiftool.new @filename_test
  end

  def test_simple_access
    assert_equal "A headline", @mini_exiftool.headline
  end

  def test_custom_field_access
    assert_equal "Custom field 24", @mini_exiftool.customfield24
  end

  def test_custom_fields_asserted_in_to_hash
    result = @mini_exiftool.to_hash
    assert result.has_key?("CustomField24")
  end

  # Custom XMP tags writable with suitable .ExifTool_config file, see
  # example, which needs to be placed in HOME folder, Exiftool folder
  # or current directory. See https://exiftool.org/config.html
  def test_custom_tag_unwritable_without_configuration
    value = "New value for custom 24"

    assert_raises MiniExiftool::Error do
      FileUtils.cp(@filename_test, @temp_filename)

      subject = MiniExiftool.new(@temp_filename)
      subject.customfield24 = value
      subject.save!
      subject.reload

      assert_equal value, subject.customfield24
    end
  end

  # def test_custom_tag_writable
  #   skip("Custom XMP tags writable with suitable .ExifTool_config file")
  #   value = "New value for custom 24"
  #
  #   FileUtils.cp(@filename_test, @temp_filename)
  #
  #   subject = MiniExiftool.new(@temp_filename)
  #   subject.customfield24 = value
  #   subject.save!
  #   subject.reload
  #
  #   assert_equal value, subject.customfield24
  # end
end
