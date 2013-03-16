import cli.app
from exceptions import KeyError

import binary_heap as heap
from test_data_generator import TEST_DATA

ENV_HELP = ("Choose in what environment to run the program. Options:" +
           "     new = create a new heap and extract heap." + 
           "     example = run the example.")

@cli.app.CommandLineApp
def read_from_cli(app):
    params = {
        'DATA_TYPE': app.params.data,
        'VALUE_TYPE': app.params.value,
        'ENV': app.params.env}
    
    run_program(**params)
    
read_from_cli.add_param('--data', help='General data partitioning type.',
                        type=str, default='BOUNDARY_VALUES')

read_from_cli.add_param('--value',
                        help='A list of data available for a partitioning type',
                        type=str, default='NULL')

read_from_cli.add_param('--env', help=ENV_HELP, type=str, default='new')

def run_program(**params):
    """ Choose what method to call for binary heap algorithm. """

    if params['ENV'] == 'new':
        new_heap(**params)

    elif params['ENV'] == 'example':
        heap.example()

    else:
        print "Sorry, I don't know what you're talking about! "

def new_heap(**params):
    """ Run binary heap algorithm with data from test_data_generator file.
    Data is chosen based on command line input. Default data: [0, 0].
    """
    try:
        data = TEST_DATA[params['DATA_TYPE'].upper()][params['VALUE_TYPE'].upper()]

    except KeyError:
        print "This type of data doesn't exists." 

    else:
        print "Running algorithm with data: "
        print data
    
        # Create a heap.
        null_heap = heap.create_heap(data)
        # Extract the heap.
        heap.extract_from(null_heap)

if __name__ == '__main__':
    read_from_cli.run()
