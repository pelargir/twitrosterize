require File.expand_path(File.dirname(__FILE__) + '/test_helper')

class TwitRosterTest < Test::Unit::TestCase
  include TwitRoster
  
  def test_twitrosterize
    expected = %Q{<div id="twitroster"><p>Loading...</p></div>
<script type="text/javascript" src="http://twitroster.com/js?u=terralien&u=pelargir"></script>}
    assert_equal expected, twitrosterize(%w(terralien pelargir))
  end
end
