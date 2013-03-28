require './triangle'
require './test_data'

=begin
class TestTriangle < Test::Unit::TestCase

    def setup
        @tr_scalene = Triangle.new(VALID_PARTITION['scalene'][0])
    end

    def test_is_triangle
        assert(@tr_scalene.is_triangle?)
    end
end
=end

describe Triangle, '#is_triangle?' do
    subject(:triangle) {Triangle.new(VALID_PARTITION['scalene'][0])}
    it 'shoudl return true' do
        expect(triangle.is_triangle?).to be(true) 
    end
end
