import cli.app

import binary_heap as heap
from test_data_generator import TEST_DATA

@cli.app.CommandLineApp
def read_from_cli(app):
    params = {
        'DATA_TYPE': app.params.data,
        'VALUE_TYPE': app.params.value}

    run_program(**params)
    
read_from_cli.add_param('--data', help='', type=str, default='BOUNDARY_VALUES')
read_from_cli.add_param('--value', help='', type=str, default='NULL')

def run_program(**params):
    print "Running algorithm with data: "
    print TEST_DATA[params['DATA_TYPE']][params['VALUE_TYPE']]

    null_heap = heap.create_heap(
        TEST_DATA[params['DATA_TYPE']][params['VALUE_TYPE']])
    heap.extract_from(null_heap)

if __name__ == '__main__':
    read_from_cli.run()
