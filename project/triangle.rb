=begin

This class describes triangles. An object of type triangle is defined by
3 numbers called edges, which values are between 0 and 20,
and they satisfy the following relationship:
The sum of any two numbers is greater or equal with the third number.

=end

class Triangle

    def initialize(array)
        @lat1 = array[0]
        @lat2 = array[1]
        @lat3 = array[2]
    end

    def is_triangle?
      # Check if an object satisfies the two relantionships
        if @lat1 + @lat2 <= @lat3 ||
           @lat1 + @lat3 <= @lat2 ||
           @lat2 + @lat3 <= @lat1 ||
           @lat1 > 20 ||  @lat1 < 0 ||
           @lat2 > 20 ||  @lat2 < 0 ||
           @lat3 > 20 ||  @lat3 < 0
             return false
        end
        return true
    end

    def show
      # Print a triangle edges
        if !self.is_triangle?
          return "Is not a triangle."
        end

        return "#{@lat1}, #{@lat2}, #{@lat3}"
    end

    def type
      # Return a triangle types, based on its edges
        if !self.is_triangle?
          return "Is not a triangle"
        end

        if self.is_equilateral?
            return "Equilateral"

        elsif self.is_isosceles?
            return "Isosceles"

        elsif self.is_scalene?
            return "Scalene"
        end
    end

    def is_equilateral?
      # Verify if is a triangle and has all 3 edges equal.
        if self.is_triangle? && @lat1 == @lat2 && @lat1 == @lat3
            return true
        end
        return false
    end

    def is_isosceles?
      # Verifiy if is a triangle and has any teo edges equal.
        if self.is_triangle? && @lat1 == @lat2 || @lat1 == @lat3 || @lat2 == @lat3
            return true
        end
        return false
    end

    def is_scalene?
      # Verify if is a triangle and all 3 edges are different.
        if self.is_triangle? && @lat1 != @lat2 && @lat1 != @lat3 && @lat2 != @lat3
            return true
        end
        return false
    end

    def perimeter
      # Returns the sum of edges.
      return @lat1 + @lat2 + @lat3
    end

    def is_congruent_with?(triangle)
      # Verify if two triangles have the same type and that they are congruent
      # based on the relantionship EEE - edge-edge-edge
      if self.type != triangle.type
        print "Have different types, so they sure are different.\n"
        return false
      end

      print "They have same types.\n"
      triangle1 = self.sort_edges
      triangle2 = triangle.sort_edges

         if triangle1 != triangle2
          return false
         end
      return true
    end

    def sort_edges
      # Sort a list of edges
        edges = [@lat1, @lat2, @lat3].sort
        return edges
    end
end
