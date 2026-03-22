def BinSearch(List, item):
    "return the index of item in the already-sorted List"
    "return -1 when item is not in List"
    "Based on Donald Knuth's Algorithm 6.2.1B"
    "  cleaned up to work with 0-origin lists, tuples, and indexes"
    L = 0                      # Current left-most position
    R = len(List)              # Current right boundary     
    while L < R:
        j = (L + R) / 2        # A place to try in the 
        if List[j] == item:    #   candidate interval
            return j
        if List[j] < item:     # When no match yet, close off
            L = j+1            #   the area where item can't be
        else:                  #   and continue in the interval
            R = j              #   that remains.
    return -1		       # Return impossible index if no match
