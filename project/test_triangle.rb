require './triangle'
require './data'

describe Triangle do

before(:each) do
    @invalid_scalene = Triangle.new(INVALID_PARTITION['scalene'][0])
    @valid_scalene = Triangle.new(VALID_PARTITION['scalene'])
    @valid_isosceles  = Triangle.new(VALID_PARTITION['isosceles'])
    @valid_equilateral = Triangle.new(VALID_PARTITION['equilateral'])
end

    describe '#is_triangle?' do

      context "is a triangle" do
        subject(:triangle) {@valid_scalene}
          it 'should return true' do
            expect(triangle.is_triangle?).to be(true) 
        end
      end 

      context "is not a triangle" do
        subject(:triangle) {@invalid_scalene}
          it 'should return true' do
            expect(triangle.is_triangle?).to be(false) 
        end
      end

    end

    describe '#show' do

        subject(:valid_scalene) {@valid_scalene}
        subject(:valid_isosceles) {@valid_isosceles}
        it 'should show edges' do
            expect(valid_scalene.show).to eq('3, 7, 9')
            expect(valid_isosceles.show).to eq('6, 6, 7')
        end
    end

    describe '#type' do
        subject(:valid_scalene) {@valid_scalene}
        subject(:valid_isosceles) {@valid_isosceles}
        subject(:valid_equilateral) {@valid_equilateral}

        it 'should return triangle type' do
            expect(valid_scalene.type).to eq("Scalene")
            expect(valid_isosceles.type).to eq("Isosceles")
            expect(valid_equilateral.type).to eq("Equilateral")
        end
    end

    describe '#is_equilateral' do
        subject(:valid_scalene) {@valid_scalene}
        subject(:valid_isosceles) {@valid_isosceles}
        subject(:valid_equilateral) {@valid_equilateral}

        it 'should return true for triangle_equi, otherwhise false' do
            expect(valid_scalene.is_equilateral?).to be(false)
            expect(valid_isosceles.is_equilateral?).to be(false)
            expect(valid_equilateral.is_equilateral?).to be(true)
        end
    end

    describe '#is_isosceles' do
        subject(:valid_scalene) {@valid_scalene}
        subject(:valid_isosceles) {@valid_isosceles}
        subject(:valid_equilateral) {@valid_equilateral}

        it 'should return true for equi and isosceles otherwhise false' do
            expect(valid_scalene.is_isosceles?).to be(false)
            expect(valid_isosceles.is_isosceles?).to be(true)
            expect(valid_equilateral.is_isosceles?).to be(true)
        end
    end
end
