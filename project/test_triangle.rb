require './triangle'
require './data'

describe Triangle do

before(:each) do
    @invalid_scalene = Triangle.new(INVALID_PARTITION['scalene'][0])
    @invalid_isosceles = Triangle.new(INVALID_PARTITION['isosceles'][0])
    @invalid_equilateral = Triangle.new(INVALID_PARTITION['equilateral'][0])

    @valid_scalene = Triangle.new(VALID_PARTITION['scalene'])
    @valid_isosceles  = Triangle.new(VALID_PARTITION['isosceles'])
    @valid_equilateral = Triangle.new(VALID_PARTITION['equilateral'])

    @boundary_scalene = Triangle.new(BOUNDARY_VALUES['scalene'][0])
    @boundary_isosceles = Triangle.new(BOUNDARY_VALUES['isosceles'][0])
    @boundary_equilateral = Triangle.new(BOUNDARY_VALUES['equilateral'][0])
end

    describe '#is_triangle?' do
    # Triangles with edges from Invalid partition should return False, others
    # should return true.

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

     describe '#is_scalene' do
        subject(:valid_scalene) {@valid_scalene}
        subject(:valid_isosceles) {@valid_isosceles}
        subject(:valid_equilateral) {@valid_equilateral}

        it 'should return true for scalene, otherwhise false' do
            expect(valid_scalene.is_scalene?).to be(true)
            expect(valid_isosceles.is_scalene?).to be(false)
            expect(valid_equilateral.is_scalene?).to be(false)
        end
    end

end
