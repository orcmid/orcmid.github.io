// InkumDinkum.js 2.01  JScript demonstration of ECMAScript Objects
// $Header: /OrcmidCompagno/SoftDev/ECMAScript/WSH/InkumDinkum.js 4     03-05-30 12:01 Orcmid $

/*  A simple ECMAScript 3.0 program to demonstrate Object/Function cuteness 
 *  of the ECMAScript OOP model.
 *
 *  This version is designed to be run locally using the Windows Scripting
 *  Host. Use the command line
 *
 *         cscript InkumDinkum.js
 *
 *  to operate the script in console mode (recommended).  
 *
 *  If you double-click on the script, or you use wscript to run it, 
 *  you will need to click "OK" after each output line.
 *
 *  The only use of host-specific objects in this script is for the 
 *  WScript.echo() method.
 */

WScript.echo("InkumDinkum.js 2.01",
             "JScript demonstration of ECMAScript Objects");
WScript.echo();

var Inkum = new Object;
        // Create an 'empty' object and give it ...
    Inkum.counter = 0;
        // ... a counter field set to 0 ..
    Inkum.dinkum = function() {return this.counter++;};
        // ... and a method that dinks with the counter.

var Dinkum = new Object;
        // Create another 'empty' object and give it ....
    Dinkum.counter = 0;
        // ... a counter field set to 0 ..
    Dinkum.dinkum = function() {return this.counter--;};
        // ... and a method that dinks with that counter.

WScript.echo(Inkum.counter, " ", Dinkum.counter);
        // See, the counters are in there

WScript.echo("-", " ", "-");
while (Inkum.counter < 4)
      WScript.echo(Inkum.dinkum(), " ", Dinkum.dinkum());
        // and the dinkum functions fiddle the correct counters

WScript.echo("-"," ", "-");
WScript.echo(Inkum.counter, " ", Dinkum.counter);
        // and the counters have been advanced as expected.

var t = Inkum.dinkum;
Inkum.dinkum = Dinkum.dinkum;
Dinkum.dinkum = t;
        // Get it?  We're switching the dinkum methods!

WScript.echo("-", " ", "-");
while (Inkum.counter > 0)
      WScript.echo(Inkum.dinkum(), " ", Dinkum.dinkum());
        // and the dinkum functions fiddle backwards ..
        
WScript.echo("-", " ", "-");
WScript.echo(Inkum.counter, " ", Dinkum.counter);
        // and the counters have retreated to 0 as expected.


/* The expected output of this script consists of 17 lines:
  
 * InkumDinkum.js 2.01 JScript demonstration of ECMAScript Objects
 *
 * 0   0
 * -   -
 * 0   0
 * 1   -1
 * 2   -2
 * 3   -3
 * -   -
 * 4   -4
 * -   -
 * 4   -4
 * 3   -3
 * 2   -2
 * 1   -1
 * -   -
 * 0   0
 
 */

    /* end of InkumDinkum.js */
