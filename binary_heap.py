""" Binary Heap

Create a Binary Heap on a list of values.

   A binary heap is represented by a list.  If the heap is not empty,
   then the first item in the list is always the priority item.

   The priority item is defined by the Priority instance.  BinaryHeap
   defaults to MinPriority.  Priority.compare() returns True if the
   first argument is preferred over the second.
"""

class Priority:
    def compare(self, a, b):
        """True if a has priority over b."""
        pass

class MinPriority (Priority):
    def compare(self, a, b):
        return cmp(a, b) < 0

class MaxPriority (Priority):
    def compare(self, a, b):
        return cmp(a, b) > 0

min_priority = MinPriority()
max_priority = MaxPriority()


class BinaryHeap:
    def __init__(self, priority=None):
        """ Init a Binary Heap, with minimum priority if other isn't set. """
        if priority == None:
            self.priority = min_priority
        else:
            self.priority = priority

        self.storage = []

    def insert(self, x):
        """ Insert a new value/node to the heap. """
        self.storage.append(x)
        self.__shift_up()
        
    def extract(self):
        """ Extract a node from the heap. """
        if self.is_empty():
            return None

        result = self.storage[0]
        last = self.storage.pop()

        if not self.is_empty():
            self.storage[0] = last
            self.__shift_down()

        return result

    def get_items(self):
        return self.storage

    def is_empty(self):
        return len(self.storage) == 0

    def __parent(self, node):
        """ Return a node parent. """
        if node == 0:
            return 0
        return (node - 1 ) / 2

    def __left(self, node):
        return 2 * node + 1

    def __right(self, node):
        return 2 * node + 2

    def __better(self, a, b):
        return self.priority.compare(self.storage[a], self.storage[b])

    def __swap(self, a, b):
        self.storage[a], self.storage[b] = self.storage[b], self.storage[a]

    def __get_better_child(self, parent):

        n = len(self.storage)
        a = self.__left(parent)
        b = self.__right(parent)

        if a < n and b < n:
            if self.__better(a, b):
                return a
            else:
                return b
        elif a < n:
            return a
        else:
            return parent

    def __shift_up(self, level=-1):

        if level < 0:
            child = len(self.storage)-1
        else:
            child = level

        parent = self.__parent(child)

        while parent < child and self.__better(child, parent):
            self.__swap(child, parent)
            child = parent
            parent = self.__parent(child)

        return child

    def __shift_down(self, level=0):
        parent = level
        child = self.__get_better_child(parent)

        while parent < child and self.__better(child, parent):
            self.__swap(child, parent)
            parent = child
            child = self.__get_better_child(parent)

        return parent

def create_heap(data):
    """ Create a Binary Tree using a list of values. Return the constructed
    Binary Heap.
    """

    if type(data) != list:
        return 1

    heap = BinaryHeap()
    
    print "Create Binary Heap: "

    for d in data:
        heap.insert(d)
        print "INSERT %2d:"%(d), heap.get_items()

    print "Done!"

    return heap

def extract_from(heap):
    """ Extract from a Binary Heap the nodes. """
    print "Extracting Binary Heap: "

    while not heap.is_empty():
        d = heap.extract()
        print "EXTRACT %2d:"%(d), heap.get_items()

    print "Done!"

def example():
    print """
    Binary Heap Example:
    1. Heap is created (using default Minimum Priority).
    2. Sequence of numbers is inserted into the heap.
    3. Numbers are extracted until the heap is empty.
    """
    
    in_data = [45,13,12,16,9,5]
    heap = create_heap(in_data)
    extract_from(heap)
    
if __name__ == '__main__':
    example()
