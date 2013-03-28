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

describe Triangle do

    describe '#is_triangle?' do
        subject(:triangle) {Triangle.new(VALID_PARTITION['scalene'][0])}
        it 'should return true' do
            expect(triangle.is_triangle?).to be(true) 
        end
    end

    describe '#show' do
        subject(:triangle) {Triangle.new(VALID_PARTITION['scalene'][0])}
        it 'should show edges' do
            expect(triangle.show).to eq('1, 2, 3')
        end
    end
end
