require 'test/unit'
require 'heckled'

require './triangle'
require './test_data'

class MutantTriangle < Test::Unit::TestCase

    def setup
        @hackled = Heckled.new
    end

    def test_is_triangle
        @hackled.is_triangle?
    end
end
