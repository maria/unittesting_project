require 'test/unit'

require './triangle'
require './test_data'

class TestTriangle < Test::Unit::TestCase

    def setup
        @tr_scalene = Triangle.new(VALID_PARTITION['scalene'][0])
    end

    def test_is_triangle
        assert(@tr_scalene.is_triangle?)
    end
end
