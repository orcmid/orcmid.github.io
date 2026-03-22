<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- 2004-05-10-20:47 -0700 Update to work with new commentable posts setup --->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Language" content="en-us">
<!-- 2004-02-04-17:22 Add content-type and content-language information to see what that improves -->
	<title>Orcmid's Lair</title>
        <!-- 2002-10-31: Template modification adventures
             Add a configuration management stamp and set a default target that works for blogging the blog. -->
        <!--$$Header: /A2HostingWeb/orcmid/blog/2004/06/whose-computer-is-it-all-your-bios-are.asp 5     26-03-22 14:10 Orcmid $-->
        <base target="_top">
<style>
body	{background:#666666;margin: 0px;font-family: Verdana, Arial, sans-serif;color: black;}
.blogtitle	{font-family: Verdana, Arial, sans-serif;color: white;font-size:32px;margin-left:20px;margin-bottom:1px; text-transform:uppercase;}
.links	{font-family: Verdana, Arial, sans-serif;font-size:11px;}
A.links:hover{color:white;}
A	{font-weight:bold;text-decoration:none;}
A:hover	{color:red;}
.date	{font-family: Verdana, Arial, sans-serif;color: black;font-size:16px;font-weight:bold;margin:10px;}
.posts	{font-family: Verdana, Arial, sans-serif;color: black;font-size:12px;margin:10px;margin-top:0px;}
.byline	{font-family: Verdana, Arial, sans-serif;color: #999999;font-size:11px;}
</style>
</head>

<body bgcolor="#666666" marginwidth="0" marginheight="0" link="#336699" vlink="#003366" alink="red">

<div align="center"><br>
<table width="95%" border="0" cellspacing="0" cellpadding="0">
<tr>
        <!-- 2002-10-31: More adventure.
             Change the grey to a middle value and turn the title into a link. -->
	<td colspan="2" bgcolor="#aaaaaa" height="65" valign="bottom"><div class="blogtitle"><b><a href="http://orcmid.com/" target="_top">Orcmid's Lair</a></b></div></td>
</tr>
<tr>
	<td bgcolor="#cccccc" width="150" valign="top" align="right">
<br>
	<div class="posts">
        <BlogItemTitle>
        </BlogItemTitle>
	Welcome to Orcmid's Lair, the playground for family connections, pastimes, and scholarly vocation -- the collected professional and recreational work of Dennis E. Hamilton<br>
	<br>
<div class="links">
	<a href="/orcmid/blog/lair-chive.asp"><b>Archives</b></a><br>
	<!-- 2002-11-11 Remove insertion of script because I messed it up.  Link to page instead. 
              2004-05-10 Make root-relative to deal with occurence in post subfolders -->
	<br>
        <a href="http://orcmid.com/blog/lair-atom.xml" target="_top"><img border="0" src="/orcmid/blog/atom-feed.bmp" alt="Click for Atom feed"></a>
            <!-- 2004-05-10-20:44 Turn on the Atom button alternate label -->
        <br>
        <a href="http://orcmid.com/blog/lair-atom.xml" title="Atom feed">Atom Feed</a>
        <!-- 2004-01-31 Add atom Feed link --><!-- 2004-05-02 Tidy up, add image -->
                <p><b>Associated Blogs</b><br>
        <a href="http://edge_city.blogspot.com/">Edge City</a><br>
        <a href="http://miser-theory.info/astraendo/pn/">Numbering Peano</a><br>
        <a href="http://www.praxis101.com/blog/">Praxis101</a></p>


</div>
<!-- 
   In accordance to the Blogger terms of service, please leave this button somewhere on your blogger-powered page. 
   Thanks!
-->	
	<a href="http://www.blogger.com/"><img src="http://buttons.blogger.com/bloggerbutton1.gif" width="88" height="31" border="0" alt="This page is powered by Blogger. Isn't yours?"></a>
	</div></td>
	<td bgcolor="white">
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	
    	<h2><a name="2004-06-02" href="#2004-06-02"><font color="#660000">2004-06-02</font></a></h2>
   	

	<div class="posts">
	<a name="108618589004803178">&nbsp;</a><br>
	<h3>Whose Computer Is It: All Your BIOS Are Mine</h3><br /><a href="http://slashdot.org/article.pl?sid=04/06/02/0048200">Slashdot | Intel To Release Next-Gen BIOS Code Under CPL</a>.&nbsp; The initiative is part of the Extensible Firmware Interface and it allows for the pre-boot software that  operating systems can depend on to establish themselves above the hardware and, indeed, to be "booted" at all.  While this goes on deep in the plumbing of PCs, it has an important and crucial role in providing platform-adaptable software that works across vendors (Dell, H-P, IBM, and the guys on the corner who build PCs in the back of their store).  Here's more.<br /><br />Buried inside every PC descended from the IBM PC architecture there is ROM-stored software code that starts things off.&nbsp;  Running at POST (Power-On-Self-Test) Time, the startup software (1) is the first program that runs when the CPU chip wakes up, (2) detects and connects the locally-installed devices and awakens whatever other firmware there is that needs to be operating in coordination with the processor, and (3) initializes a layer of software and data that can be used to access the computer's configuration through standard programmatic interfaces.&nbsp;   This procedure provides a rudimentary configuration and ready-to-hand software environment that is the basis for finding and bootstrapping the code for any operating system that will then be allowed to run, pretty display gui-gaws and all.  <br /><br />Every PC operating system relies on this pre-existing ready-set-go stage as a way for being awakened and then drawing itself up to full, wakeful height, like a slumbering genie aroused through a startup incantation.&nbsp;  Linux distributions, FreeBSD, MS-DOS, Windows flavors, Solaris on Intel, and any other operating systems that might have a claim on your attention to a PC are all designed to arise under control of the same startup software, relying on its provisions to determine what's up and how to establish their own presence and operation as your eager servant.<br /><br />In the usual manner of conceptual corruption, this permanently-installed setup and hardware coordination software is called the BIOS (Basic Input-Output System).  The term has murky origins in DOS (Disk Operating System) for the original IBM System/360 1964 models and in other software exhibiting some fledgling qualities of operating-systemness before that.  The particular arrival on your desktop traces its lineage back through CP/M realizations at the turn of the 1980s or the Apple II firmware of the same era.   <br /><br /><a href="http://orcmid.com/blog/2004/06/SysInfo-2004-06-02-0805.htm" target="_top"><img border="1" src="http://orcmid.com/blog/2004/06/SysInfo-2004-06-02-0805.png" align="left" alt="Compagno System Information (Norton Utlity Screen Shot)" hspace="2" vspace="2" width="277" height="308"></a>You might not observe the influence of this software ever, unless you have some occasion to interact with what is called your computer's setup procedure, a program that is always there and gives you some influence over the basic processes of the computer and the startup rules that, with all-fingers-crossed care, can be varied to reflect special requirements you might have.&nbsp;  If (as is often controlled by such a startup parameter) your computer displays messages from the startup processes carried out before the OEM-installed operating-system software splashes onto your screen, you will see evidence of the configuration-determination process as devices and the BIOS itself are identified.&nbsp; And you will have that wonderful affirmation that all of that bargain-basement RAM you upgraded with is present and every bit is accounted for.<br /><br />Depending on the operating system, there are programs such as Norton Utilities that present the configuration details from the BIOS and those further accretions provided as part of operating-system richness.&nbsp; You'll also see that the BIOS is someone's intellectual property.&nbsp; Not yours.  <br /><br />Although it is the combination of processor, BIOS, and mother-board adapters that are the substrate on which your PC's capabilities are anchored, it is the BIOS and its protocols and interfaces that provide the fulcrum by which the operating system levers its way into operation.&nbsp;  It is the balance point on which the great wheel of hardware attracting operating-systems attracting application developers attracting users attracting commodity hardware spins.&nbsp; The BIOS as critical point is not lost on those who see the opportunity of the commodity PC economy.<br /><br />Others, recognizing the BIOS as a vulnerability to substitutions and competition, have worked to protect theirs.  At one point, Apple Computer endeavored to close out unlicensed software developers from making direct use of interfaces to the Apple II BIOS (essentially the whole operating system at that time).  Those who want to clone Apple computers have learned that the property rights to the BIOS code are jealously protected.  The same goes for embedded computer systems, where automobile manufacturers are extremely reluctant to describe access to their computer interfaces by non-factory-authorized and -licensed service organizations.<br /><br />Whether you ever notice where the BIOS is stored in your computer, and ever have any need to know its functions, the fact of its honoring an open or a closed specification will be reflected in the robustness of the developer community and the diversity of suppliers and users. <br /><br /><blockquote><dl><dt><em>Listening to:</em></dt><dd><strong>Carlos Santana</strong> <em>Supernatural Live: An Evening with Carlos Santana and Friends</em> live performance DVD, Arista (2000)</dd><dd><strong>The Band</strong> <em>The Last Waltz</em> a Martin Scorsese film, 25th anniversary DVD edition MGM (1976, 2002)</dd></dl></blockquote><p align="right"><em>May your heart always be joyful<br />May your song always be sung<br />And may you stay forever young</em><br /> - Bob Dylan</p><br>
	<span class="byline">posted by orcmid at <a href="http://orcmid.com/blog/2004/06/whose-computer-is-it-all-your-bios-are.asp">6/2/2004 07:18:27 AM</a></span>
	  
                  <!-- 2004-05-10-14:47 -0700 Include comments within my template and see if I can get it working properly -->  
		<div class="blogComments">
			Comments:  
			
			<a href="http://www.blogger.com/comment.g?blogID=3896669&postID=108618589004803178">Post a Comment</a>
		</div>
	
	</div>


	<!-- 2002-10-31 Removing some unnecessary space.
             I deleted the links entry that had a home link.  It doesn't add anything in my case. -->
	<!-- 2002-10-31 Just one more little change.  Moved it to white background where works better.
             Add the classy construction footer that I use on key entry pages of nfoCentrale.net sections -->
  <table border="0" cellspacing="3" width="100%">
    <tr>
      <td width="31%"><font size="-2"><a href="/orcmid/blog/index.htm"><img border="0" src="/orcmid/blunderdome/wingnut/images/hardhat-logo.gif" alt="Hard Hat Area" align="left" width="80" height="57"></a></font></td>
      <td width="28%" valign="middle" align="center">
        <p align="center"><small><b>an <a href="http://nfoCentrale.net/" target="_top">nfoCentrale.net</a>
        site</b></small></td>
      <td width="41%">

<p align="right"><font size="-2">created 2002-10-28-07:25 -0800 (pst) by </font><small><small> <a href="/orcmid/construction/orcmid.htm">orcmid</a></small></small><font size="-2"><br>
<em>$$Author: Orcmid $<br>
$$Date: 26-03-22 14:10 $<br>
$$Revision: 5 $</em></font></p>
      </td>
    </tr>
  </table>
</td>
</tr>
</table>
</div>

</body>
</html>