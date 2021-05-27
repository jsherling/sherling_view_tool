# frozen_string_literal: true

require_relative 'test_helper'

class SherlingViewToolTest < Minitest::Test
  def test_tool_version_number_is_correct
    assert_equal '0.2.5', SherlingViewTool::VERSION
  end

  def test_no_argument_copyright_notice
    @copyright = SherlingViewTool::Renderer.copyright
    assert_equal '&copy; 2021 | <b>Name not provided!</b> All rights reserved', @copyright
  end

  def test_one_argument_copyright_notice
    @copyright = SherlingViewTool::Renderer.copyright('a')
    assert_equal '&copy; 2021 | <b>a</b> All rights reserved', @copyright
  end

  def test_two_argument_copyright_notice
    @copyright = SherlingViewTool::Renderer.copyright('a', 'b')
    assert_equal '&copy; 2021 | <b>a</b> b', @copyright
  end
end
