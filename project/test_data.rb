VALID_PARTITION = {
    'scalene' => [[1, 2, 3], [2, 3, 4]],
    'isosceles' => [[1, 1, 2], [2, 2, 3]],
    'equilateral' => [[2, 2, 2], [6, 6, 6]]
}

INVALID_PARTITION = {
    'scalene' => [[0, 1, -1], [-1, -2, -3]],
    'isosceles' => [[-1, -1, 2], [0, 0, 1]],
    'equilateral' => [[-2, -2, -2], [0, 0, 0]]
    }
    

BOUNDARY_VALUES = {
    'scalene' => [[1, 2, 3]],
    'isosceles' => [[1, 1, 2]],
    'equilateral' => [[1, 1, 1]]
    }
