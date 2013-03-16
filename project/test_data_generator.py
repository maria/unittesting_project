""" Generate test data based on:
        (a) equivalence partitioning,
        (b) boundary value analysis
        (c) category-partition. 
"""
TEST_DATA = {
    # Equivalence partitioning
    'VALID_PARTITION': {
        '': []},

    'INVALID_PARTITION': {},

    # Boundary values
    'BOUNDARY_VALUES': {
        'EMPTY': [],
        'NULL': [0, 0],
        'CONSTANT_POSITIVE': [1, 1, 1],
        'CONSTANT_NEGATIVE': [-2, -2, -2],
        },

    # Category values
    'CATEGORY_VALUES': {}
}
