require 'test_helper'

class SherlingViewToolTest < Minitest::Test
  def tool_has_a_version_number
    assert_equal '0.1.0', SherlingViewTool::VERSION
  end

  def copyright_notice
    @copyright = SherlingViewTool::Renderer.copyright('Jeff Sherling', 'All rights reserved.')
    !assert_empty @copyright
  end
end

