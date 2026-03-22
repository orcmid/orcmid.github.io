/* BinSearch.cpp
   Demonstrate that the Binary Search Algorithm published on the Miser Notation page
   actually compiles into clean code.
   */

int BinSearch(int List[], int R, int item)
    { /* Return the index of the item in the already-sorted List[R].
         Return -1 when item is not in List[0] to List[R-1].
         Based on Donald E. Knuth's Algorithm 6.2.1B cleaned up to
         work with 0-origin arrays.
         */
      int L = 0;
      while (L < R)
          { int j = (L + R) / 2;
            if (List[j] == item)
                 return j;
            if (List[j] < item)
                 L = j+1;
            else R = j;
            }
      return -1;
      };

#include <stdio.h>

int main()
    { /* Test the program a little */

    int L1[5] = {-7, -8, 0, 5, 15};
    int i = -13;
    int s = 5;

    printf("L1 = { %d, %d, %d, %d, %d}\n\n", L1[0], L1[1], L1[2], L1[3], L1[4]);

    while (s >= 0)
        { printf("item = %3d, find = %2d\n", i, BinSearch(L1, 5, i));
         i += 2*s--;
         }
      

    return 0;
    }

                       /* end of BinSearch.cpp */