class Triangle

    def initialize(array)
        @lat1 = array[0]
        @lat2 = array[1]
        @lat3 = array[2]
    end

    def is_triangle?
        if @lat1 + @lat2 <= @lat3 ||
           @lat1 + @lat3 <= @lat2 ||
           @lat2 + @lat3 <= @lat1
             return false
        end
        return true
    end

    def show
        edges = "#{@lat1}, #{@lat2}, #{@lat3}"
        return edges
    end

    def type
        if self.is_equilateral?
            return "Equilateral"

        elsif self.is_isosceles?
            return "Isosceles"

        elsif self.is_scalene?
            return "Scalene"

        end
    end

    def is_equilateral?
        if @lat1 == @lat2 && @lat1 == @lat3
            return true
        end
        return false
    end
    
    def is_isosceles?
        if @lat1 == @lat2 || @lat1 == @lat3 || @lat2 == @lat3
            return true
        end
        return false
    end

    def is_scalene?
        if @lat1 != @lat2 && @lat1 != @lat3 && @lat2 != @lat3
            return true
        end
        return false
    end

    def perimetru
    end

    def is_congruent_with?(triangle)
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
        edges = [@lat1, @lat2, @lat3].sort
        return edges
    end
end
