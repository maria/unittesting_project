require 'spec_helper'

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

    @second_boundary_scalene = Triangle.new(BOUNDARY_VALUES['scalene'][1])
    @second_boundary_isosceles = Triangle.new(BOUNDARY_VALUES['isosceles'][1])
    @second_boundary_equilateral = Triangle.new(BOUNDARY_VALUES['equilateral'][1])
end

    describe '#is_triangle' do
    # Triangles with edges from Invalid partition should return False, others
    # should return true.

      context "is a triangle" do
        subject(:triangle) {@valid_scalene}
          it 'should return true' do
            expect(triangle.instance_of? Triangle).to be(true)
            expect(triangle.is_triangle?).to be(true)
        end
      end

      context "is not a triangle" do
        subject(:triangle) {@invalid_scalene}
          it 'should return true' do
            expect(triangle.instance_of? Triangle).to be(false)
            expect(triangle.is_triangle?).to be(false)
        end
      end

    end

    describe '#show' do
    # Objects with edges from valid and boundary are triangles,
    # so a string with the values of its edges will be returned.
        context "is a triangle" do
            subject(:valid_scalene) {@valid_scalene}
            subject(:valid_isosceles) {@valid_isosceles}

            it 'it should show edges' do
                expect(valid_scalene.show).to eq('3, 7, 9')
                expect(valid_isosceles.show).to eq('6, 6, 7')
            end

            subject(:boundary_scalene) {@boundary_scalene}
            subject(:boundary_isosceles) {@boundary_isosceles}

            it 'it should show edges' do
                expect(boundary_scalene.show).to eq('2, 3, 4')
                expect(boundary_isosceles.show).to eq('2, 2, 3')
            end

        end

        context "is not a triangle" do
            # Objects with edges from invalid values are not of type Triangle,
            # so an error message will be returned.
            subject(:invalid_isosceles) {@invalid_isosceles}
            subject(:invalid_scalene) {@invalid_scalene}

            it 'it shouldn\'t show edges' do
                expect(invalid_scalene.show).to eq("Is not a triangle.")
                expect(invalid_isosceles.show).to eq("Is not a triangle.")
            end
        end
    end

    describe '#type' do
        # Verify if an object is a triangle, if is then return his type.
        # Two context are present: for valid and boundary values the triangles type
        # should be returned, for invalid values an error message should be returned.
        context "is a triangle" do
            subject(:valid_scalene) {@valid_scalene}
            subject(:valid_isosceles) {@valid_isosceles}
            subject(:valid_equilateral) {@valid_equilateral}

            it 'should return triangle type' do
                expect(valid_scalene.type).to eq("Scalene")
                expect(valid_isosceles.type).to eq("Isosceles")
                expect(valid_equilateral.type).to eq("Equilateral")
            end

            subject(:boundary_scalene) {@boundary_scalene}
            subject(:boundary_isosceles) {@boundary_isosceles}
            subject(:boundary_equilateral) {@boundary_equilateral}

            it 'should return triangle type' do
                expect(boundary_scalene.type).to eq("Scalene")
                expect(boundary_isosceles.type).to eq("Isosceles")
                expect(boundary_equilateral.type).to eq("Equilateral")
            end
        end

        context "is not a triangle" do
            subject(:invalid_scalene) {@invalid_scalene}
            subject(:invalid_isosceles) {@invalid_isosceles}
            subject(:invalid_equilateral) {@invalid_equilateral}

            it 'should retun error message' do
                expect(invalid_scalene.type).to eq("Is not a triangle")
                expect(invalid_isosceles.type).to eq("Is not a triangle")
                expect(invalid_equilateral.type).to eq("Is not a triangle")
            end
        end

    end

=begin
 The following method are used by 'type' method to verify a triangles
 types, based on his edges.
=end
    describe '#is_equilateral' do
        context "is a triangle" do
            subject(:valid_scalene) {@valid_scalene}
            subject(:valid_isosceles) {@valid_isosceles}
            subject(:valid_equilateral) {@valid_equilateral}

            it 'should return true for triangle_equi, otherwhise false' do
                expect(valid_scalene.is_equilateral?).to be(false)
                expect(valid_isosceles.is_equilateral?).to be(false)
                expect(valid_equilateral.is_equilateral?).to be(true)
            end
        end

        context "is not a triangle" do
            subject(:invalid_scalene) {@invalid_scalene}
            subject(:invalid_isosceles) {@invalid_isosceles}
            subject(:invalid_equilateral) {@invalid_equilateral}

            it 'should retun false' do
                expect(invalid_scalene.is_equilateral?).to eq(false)
                expect(invalid_isosceles.is_equilateral?).to eq(false)
                expect(invalid_equilateral.is_equilateral?).to eq(false)
            end
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

    describe '#perimeter' do
        context "is a triangle" do
            subject(:valid_scalene) {@valid_scalene}
            subject(:valid_isosceles) {@valid_isosceles}
            subject(:valid_equilateral) {@valid_equilateral}

            it 'should return the sum of the edges' do
                expect(valid_scalene.perimeter).to eq(19)
                expect(valid_isosceles.perimeter).to eq(19)
                expect(valid_equilateral.perimeter).to eq(33)
            end

            subject(:boundary_scalene) {@boundary_scalene}
            subject(:boundary_isosceles) {@boundary_isosceles}
            subject(:boundary_equilateral) {@boundary_equilateral}

            it 'should return the sum of the edges' do
                expect(boundary_scalene.perimeter).to eq(9)
                expect(boundary_isosceles.perimeter).to eq(7)
                expect(boundary_equilateral.perimeter).to eq(3)
            end
        end

        context "is not a triangle" do
            subject(:invalid_scalene) {@invalid_scalene}
            subject(:invalid_isosceles) {@invalid_isosceles}
            subject(:invalid_equilateral) {@invalid_equilateral}

            it 'should return the sum of the edges' do
                expect(invalid_scalene.perimeter).to eq(3)
                expect(invalid_isosceles.perimeter).to eq(44)
                expect(invalid_equilateral.perimeter).to eq(0)
            end
        end
    end

    describe '#is_congruent_with' do
        # Only the if we compare a triangle with himself it should return true.
        context "compare two valid triangles" do
            subject(:valid_scalene) {@valid_scalene}
            subject(:valid_isosceles) {@valid_isosceles}
            subject(:valid_equilateral) {@valid_equilateral}

            subject(:second_boundary_scalene) {@second_boundary_scalene}
            subject(:second_boundary_isosceles) {@second_boundary_isosceles}
            subject(:second_boundary_equilateral) {@second_boundary_equilateral}

            it 'should return true if two triangles have the same type' do
                expect(second_boundary_scalene.is_congruent_with? second_boundary_isosceles).to be(false)
                expect(second_boundary_isosceles.is_congruent_with? second_boundary_equilateral).to be(false)
                expect(second_boundary_equilateral.is_congruent_with? second_boundary_equilateral).to be(true)
            end
        end

        context "compare a valid triangle with an invalid triangle" do
            subject(:valid_scalene) {@valid_scalene}
            subject(:invalid_scalene) {@invalid_isosceles}

            it 'should return false' do
                expect(invalid_scalene.is_congruent_with? valid_scalene).to be(false)
            end
        end
    end
end
