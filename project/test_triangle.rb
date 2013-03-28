require './triangle'
require './test_data'

describe Triangle do

before(:each) do
    @triangle_scalene = Triangle.new(VALID_PARTITION['scalene'][0])
    @triangle_isosceles  = Triangle.new(VALID_PARTITION['isosceles'][0])
    @triangle_equi = Triangle.new(VALID_PARTITION['equilateral'][0])
end

    describe '#is_triangle?' do
        subject(:triangle) {@triangle_scalene}
        it 'should return true' do
            expect(triangle.is_triangle?).to be(true) 
        end
    end

    describe '#show' do
        subject(:triangle) {@triangle_scalene}
        it 'should show edges' do
            expect(triangle.show).to eq('1, 2, 3')
        end
    end

    describe '#type' do
        subject(:triangle_scalene) {@triangle_scalene}
        subject(:triangle_isosceles) {@triangle_isosceles}

        it 'should return triangle type' do
            expect(triangle_scalene.type).to eq("Scalene")
            expect(triangle_isosceles.type).to eq("Isosceles")
        end
    end

    describe '#is_equilateral' do
        subject(:triangle_scalene) {@triangle_scalene}
        subject(:triangle_isosceles) {@triangle_isosceles}
        subject(:triangle_equi) {@triangle_equi}

        it 'should return true for triangle_equi, otherwhise false' do
            expect(triangle_scalene.is_equilateral?).to be(false)
            expect(triangle_isosceles.is_equilateral?).to be(false)
            expect(triangle_equi.is_equilateral?).to be(true)
        end
    end

    describe '#is_isosceles' do
        subject(:triangle_scalene) {@triangle_scalene}
        subject(:triangle_isosceles) {@triangle_isosceles}
        subject(:triangle_equi) {@triangle_equi}

        it 'should return true for triangle_equi, otherwhise false' do
            expect(triangle_scalene.is_isosceles?).to be(false)
            expect(triangle_isosceles.is_isosceles?).to be(true)
            expect(triangle_equi.is_isosceles?).to be(true)
        end
    end
end
