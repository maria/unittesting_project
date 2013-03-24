class Triangle

    def initialize(a, b, c)
        @lat1 = a
        @lat2 = b
        @lat3 = c
    end

    def is_triangle?
        if @lat1 + @lat2 >= @lat3 ||
           @lat1 + @lat3 >= @lat2 ||
           @lat2 + @lat3 >= @lat1
             return true
        end
        return false
    end

    def show
        print @lat1, @lat2, @lat3
    end

    def type
        if self.is_equilateral?
            return "Echilateral"

        elsif self.is_isosceles?
            return "Isocel"

        elsif self.is_scalene?
            return "Random"

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

triunghi = Triangle.new(2, 3, 4)
triunghi1 = Triangle.new(1, 4, 3)
print triunghi.is_congruent_with?(triunghi1)
