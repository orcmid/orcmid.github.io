/* DeRun01.c - Test Fixture for DeRisk01 confirmation.
 *
 * Copyright 1994-1996, 2005 AIIM International
 * Licensed under the ODMA Open-Source (BSD Open) License
 * >>>>>>> PROVIDE A LINK TO THE LICENSE AS IT APPLIES TO DeRisk01. <<<<<<<<
 *         ========================================================
 *
 *   0.00 2005-03-31T19:38Z Make version of argshow.c to have a main that
 *        works and uses standard C libraries.  Trim down borrowed material
 *        to the bare minimal and comment it out until we can use it.
 *   0.01 2005-04-01T00:20Z Work with command response file and provide an
 *        account of the options used in compilation of a given executable.
 *
 * $Header: /ActiveODMA/confirm/DeRisk01/DeRun01.c 5     05-03-31 19:11 Orcmid $
 */

#include <stdio.h>
    /* for printf() */

#ifdef DERUN01_OPT
   char DeRunOpt[] = "used" ;
#else
   char DeRunOpt[] = "not identified";
#endif

void static indent(void)
    {/* Indent output underneath our heading */
        printf(  "         ");
        }

void static announce(void)
    {/* Identify ourselves */
        printf("\nDeRun01> 0.01 Test Fixture for DeRisk01 Confirmation.\n");
        indent(); printf("@DeRun01.opt compiler options ");
                  printf("%s.\n", DeRunOpt);
        indent(); printf("For details, visit "
                         "<http://ODMA.info/dev/confirm/DeRisk01/>.\n\n" );
        } /* announce(void) */

void static signoff(void)
    {/* Report that we are finished and out of here */
        printf("\nDeRun01> exit\n");
        }

int main(int argc, char *argv[])
    {/* Report the command-line arguments provided on calls to this
        program.  Derived from Harbison & Steele (1995).  C, A Reference
        Manual, 4th ed.  pp.416-417.
        */

        int i;

        announce();
            /* Always tell them who we are. */

        indent(); printf("Name: "); printf("%s\n", argv[0]);
             /* Show the name as presented to the program. */

        if(argc>1)
             {/* Show the arguments, line by line */
                 indent(); printf("Arguments:\n");
                 for (i=1; i<argc; i++)
                     {indent();indent(); printf("%s\n", argv[i]);}  }
        else {indent(); printf("No Arguments.\n");}


        signoff();                                                                                printf("\n");
        return 0;
        } /* main(int, char*[]) */


/* Compile this program with the command
 *
 *     CL @DeRun01.opt
 *
 * then execute the DeRun01.exe that is produced.
 */

/* A TYPICAL RUN THAT COMPILES AND RUNS DERUN01 IS AS FOLLOWS:
 *****************************************************************************
 * ODMdev.bat 0.04 CONSOLE-SESSION SETUP FOR ActiveODMA DEVELOPMENT
 *    For further information, refer to http://ODMA.info/dev/
 *    "
 *    %ODMdev% development tree = C:\crea\ActiveODMA
 *    %VCTK% C++ toolkit = C:\Program Files\Microsoft Visual C++ Toolkit 2003
 *    %MSDK% non-redistributables = C:\crea\ActiveODMA\MSreliance
 *       for necessary Microsoft-licensed materials.
 *    "
 * C:\crea\ActiveODMA>cd confirm\DeRisk01
 *
 * C:\crea\ActiveODMA\confirm\DeRisk01>CL @DeRun01.opt
 * Microsoft (R) 32-bit C/C++ Optimizing Compiler Version 13.10.3077 for 80x86
 * Copyright (C) Microsoft Corporation 1984-2002. All rights reserved.
 *
 * cl /EHsc
 *    /showIncludes
 *    /DDERUN01_OPT#0.01
 *    DeRun01.c
 *
 * DeRun01.c
 * Note: including file: C:\Program Files\Microsoft Visual C++ Toolkit 2003\include
 * \stdio.h
 * Microsoft (R) Incremental Linker Version 7.10.3077
 * Copyright (C) Microsoft Corporation.  All rights reserved.
 *
 * /out:DeRun01.exe
 * DeRun01.obj
 *
 * C:\crea\ActiveODMA\confirm\DeRisk01>DeRun01
 *
 * DeRun01> 0.01 Test Fixture for DeRisk01 Confirmation.
 *               @DeRun01.opt compiler options used.
 *               For details, visit <http://ODMA.info/dev/confirm/DeRisk01/>.
 *
 *               Name: DeRun01
 *               No Arguments.
 *
 * DeRun01> exit
 *
 *
 * C:\crea\ActiveODMA\confirm\DeRisk01>DeRun01 --dll ODMASamp32.dll
 *
 * DeRun01> 0.01 Test Fixture for DeRisk01 Confirmation.
 *               @DeRun01.opt compiler options used.
 *               For details, visit <http://ODMA.info/dev/confirm/DeRisk01/>.
 *
 *               Name: DeRun01
 *               Arguments:
 *                        --dll
 *                        ODMASamp32.dll
 *
 * DeRun01> exit
 *
 *
 * C:\crea\ActiveODMA\confirm\DeRisk01>exit
 *****************************************************************************
 */

/*                         *** END OF DERUN01.C ***                         */
