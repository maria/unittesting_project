import cli

import binary_heap as heap
from test_data_generator import *


def read_from_cli():
    run()

def run():
    null_heap = heap.create_heap(BOUNDARY_VALUES['NULL'])
    heap.extract_from(null_heap)

if __name__ == '__main__':
    read_from_cli()


