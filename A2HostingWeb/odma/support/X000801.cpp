/* StringCheck.cpp 0.11	2000-11-25-12:24
   Check to see if NULL string parameters will pass strlen() or not.
   */

#include <stdio.h>
    /* Get output the cheap way via printf() */

#include <stdlib.h>
    /* ANSI C standard for exit() */

#include <string.h>
    /* include the ANSI C standard string library */

int main()
   {  /* Check to see if strlen(NULL) will produce a meaningful result. */

    char* pNull = (char*) NULL;

    printf("StringCheck> Check whether strlen(NULL) works.\n\n");
    printf("StringCheck> NULL pointer is 0x%08lX \n\n\n",
           (unsigned long) pNull);

     /* Different crashes happen here.  Under normal execution, there is
        an exception and the program crashes.  This happens with
        - VC++ 6.0 Win32 console application
        - BC++ 5.02 Win32 console application
        */

     /* When compiled as a DOS program using BC++ 5.02, the program
        executes and produces a strlen(pNull) == 0
        */
     /* When compiled as an EasyWin program using the BC++ 5.02 Win16 model, 
        the program executes exactly the same as for a DOS program, but output
        is in a Window instead of in the DOS shell.
        */

    size_t nullength = strlen(pNull);

      /* OK, if we get to here, we can get to the end */

    printf("\tOn this system, strlen(NULL) = %d\n\n\n", (int) nullength);

    exit(EXIT_SUCCESS);

    return 0;
        /* never reached -- completes main() function for error checking */
    }