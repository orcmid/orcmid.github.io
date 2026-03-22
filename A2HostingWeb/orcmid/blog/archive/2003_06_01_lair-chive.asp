<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Orcmid's Lair</title>
        <!-- 2002-10-31: Template modification adventures
             Add a configuration management stamp and set a default target that works for blogging the blog. -->
        <!--$$Header: /A2HostingWeb/orcmid/blog/archive/2003_06_01_lair-chive.asp 8     26-03-22 14:12 Orcmid $-->
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
        <$BlogItemTitle$>
        </BlogItemTitle>
	Welcome to Orcmid's Lair, the playground for family connections, pastimes, and scholarly vocation -- the collected professional and recreational work of Dennis E. Hamilton<br>
	<br>
<div class="links">
	<a href="../lair-chive.asp"><b>Archives</b><a><br>
	<!-- 2002-11-11 Remove insertion of script because I messed it up.  Link to page instead. -->
	<br>
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
	
    	<h2><a name="2003-06-07" href="#2003-06-07"><font color="#660000">2003-06-07</font></a></h2>
   	

	<div class="posts">
	<a name="95417729">&nbsp;</a><br>
	<a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/vjcore98/html/vjovrdocumentationmap.asp">Documentation Map</a>.&nbsp; It would appear that Microsoft has no specific public references to sources on Java beyond mentioning the JDK 1.1.4 class library.  There is a reference on the Visual J++ language, and one might presume there is upward compatibiity.  They also havd documentation on the Java Package Manager, but no links on this page.<br /><br />Looking around some more, I see that the MSDN (Microsft Software Developer Network) library has the Java 1.0 Language Specification and covers the Java API as of JDK 1.1.4. That means there is no Swing, only AWT, and Microsoft Foundation Classes made available as com.ms.* packages.  That is, Microsoft followed the rules in making their own classes available outside of the standard java.lang and java.* hierarchy.  <br /><br /><br />So I am betting that the programs that I write based on material defined in JDK 1.0 and JDK 1.1 should all work in Visual J++ and Visual J#.NET.  It will be interesting to see how close they come in Visual J#.NET (because Visual J++ is basically no longer supported according to court order).  It will be a nice demonstration of how well the .NET CLI handles Java, at least to the JDK 1.1 level.<br>
	<span class="byline">posted by Dennis at <a href="#95417729">Saturday, June 07, 2003</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="95417529">&nbsp;</a><br>
	<a href="http://msdn.microsoft.com/vjsharp/using/documentation/default.aspx">Visual J#.NET Product Documentation</a>.&nbsp; It would appear that the product is intended to implement Java and be usable in the conversion of Java applications to .NET applications.  The question will be to establish its relationship to Java and the standard Java libraries, at least those of the Standard Edition.<br>
	<span class="byline">posted by Dennis at <a href="#95417529">Saturday, June 07, 2003</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="95417439">&nbsp;</a><br>
	<a href="http://msdn.microsoft.com/vjsharp/">Visual J# Home</a>.&nbsp; This is the home for Microsoft's implementation of Java.  (C# is <i>not</i> Microsoft's implementation of Java.&nbsp; It is almost worth installing just to compare its behavior in the exercises I am carrying out right now as part of studying "Object Oriented Programming with Java," a course in my on-line M.Sc in IT from the University of Liverpool and Kit eLearning.&nbsp; The examples I come up with all operate inside the standard libraries and features of Java 1.4.1 (but mostly I rely on elements that have been there since JDK 1.1).   It would be interesting to see how well (1) these operate in Visual J#, and also how well they operate in C#.  Since I don't intend to go to Visual Studio .NET very soon, the C# case may be the easier of the two, at frst. <br /><br />One thing I am interested in finding out is how Visual J# is defined and where I can find out what the predicatable behavior and confirmable characteristics are.  If I can't find that, this will just remain a curiosity and nothing more, for me.<br>
	<span class="byline">posted by Dennis at <a href="#95417439">Saturday, June 07, 2003</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="95417262">&nbsp;</a><br>
	<a href="http://msdn.microsoft.com/webservices/understanding/xmlfundamentals/default.aspx?pull=/library/en-us/dnxml/html/understandxsd.asp">Understanding XML Schema</a>.&nbsp; This interesting article provids a basic overview and some use cases for applying XML Schema Definitions (XSD) in settings that may also apply to the AIIM C29 XML Wrapper for image data.  One thing I need to remember is that we have differenc cases with regard to saying where something is or how to find it, saying what it is, and also providing an usable reference or other object that allows the material to be accessed more-or-less directly.&nbsp; This must be reflected in our use case.<br>
	<span class="byline">posted by Dennis at <a href="#95417262">Saturday, June 07, 2003</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="95417185">&nbsp;</a><br>
	<a href="http://msdn.microsoft.com/webservices/understanding/xmlfundamentals/default.aspx?pull=/library/en-us/dnxml/html/desxsdlib.asp">Designing XML Schema Libraries</a>.&nbsp; Here's an article that is valuable in the work on the AIIM C29 XML Wrapper for image data.  It should be included in the non-normative references in the spec. or in the recommended practice list of resources.<br>
	<span class="byline">posted by Dennis at <a href="#95417185">Saturday, June 07, 2003</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	
    	<h2><a name="2003-06-06" href="#2003-06-06"><font color="#660000">2003-06-06</font></a></h2>
   	

	<div class="posts">
	<a name="95400592">&nbsp;</a><br>
	<a href="http://www.moscowtimes.ru/stories/2003/06/04/044-print.html">IT Boom Reverses Brain Drain</a>.&nbsp; Here's an indication that the slowdown in the US and loss of H1B visas will ultimately benefit IT and service organizations off shore, including in Russia.<br>
	<span class="byline">posted by Dennis at <a href="#95400592">Friday, June 06, 2003</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="95400423">&nbsp;</a><br>
	<a href="http://www.zdnet.com/filters/printerfriendly/0,6061,2913868-92,00.html">ZDNet: Cybersecurity report card--serious improvements needed</a>.&nbsp; So far, the Hackers are getting all the points, and the best grade elsewhere is a C- to the security industry (for not finding easy-to-deploy provisions) and users (C) for their complacency.  Everybody else is in the D's.  An interesting analysis from ZCNet Tech Update columnist Dan Farber.<br>
	<span class="byline">posted by Dennis at <a href="#95400423">Friday, June 06, 2003</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	
    	<h2><a name="2003-06-05" href="#2003-06-05"><font color="#660000">2003-06-05</font></a></h2>
   	

	<div class="posts">
	<a name="95329777">&nbsp;</a><br>
	<a href="http://www.forbes.com/2003/05/30/cz_eb_0530cto.html">Forbes.com: Investing In Government Spending</a>.&nbsp; Some major themes are turning up in how the U.S. Federal governmening is treating itself like an enterprise.  This, along with the enterprise architecture work, if it can raise its sites, will have major impact on computing and IT approaches everywhere.&nbsp; On the top of the list for qualifying as a major vendor is having heterogeneous technologies.  Play well with others or hit the road.  &nbsp; next down the list are information security, performance monitoring, web services, with disaster assistance management further down but now inside the radar horizon.  Partnering with successful government system integrators like Unisys is viewed as the access to this major process.  This is going to be good for IBM too.<br>
	<span class="byline">posted by Dennis at <a href="#95329777">Thursday, June 05, 2003</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	
    	<h2><a name="2003-06-04" href="#2003-06-04"><font color="#660000">2003-06-04</font></a></h2>
   	

	<div class="posts">
	<a name="95295590">&nbsp;</a><br>
	<a href="http://www.cobolreport.com/index.asp">Object-Z Systems � Home of CobolReport.com, CobolUniversity.com, Object-Z Publishing, Cobol Standards, Object-Oriented Cobol, Articles, Reviews, Tools, Online chat, Cobol Books, Code, Links, Samples, Programming, and much more.</a>.&nbsp; Here there be information on the movement of COBOL into the world of OOP, with links found by my classmate Vida Butterfield.<br>
	<span class="byline">posted by Dennis at <a href="#95295590">Wednesday, June 04, 2003</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	
    	<h2><a name="2003-06-03" href="#2003-06-03"><font color="#660000">2003-06-03</font></a></h2>
   	

	<div class="posts">
	<a name="95250606">&nbsp;</a><br>
	<a href="http://gridengine.sunsource.net/project/gridengine/gep/GEP_Intro.html">sunsource.net Grid Engine Portal Project</a>.&nbsp; This is a java-based client/portal for access to a Grid Engine.&nbsp; Something important for developers and presumably open source.&nbsp; to explore further.<br>
	<span class="byline">posted by Dennis at <a href="#95250606">Tuesday, June 03, 2003</a></span></div>
<br>


	<!-- 2002-10-31 Removing some unnecessary space.
             I deleted the links entry that had a home link.  It doesn't add anything in my case. -->
	<!-- 2002-10-31 Just one more little change.  Moved it to white background where works better.
             Add the classy construction footer that I use on key entry pages of nfoCentrale.net sections -->
  <table border="0" cellspacing="3" width="100%">
    <tr>
      <td width="31%"><font size="-2"><a href="../index.htm"><img border="0" src="../../blunderdome/wingnut/images/hardhat-logo.gif" alt="Hard Hat Area" align="left" width="80" height="57"></a></font></td>
      <td width="28%" valign="middle" align="center">
        <p align="center"><small><b>an <a href="http://nfoCentrale.net/" target="_top">nfoCentrale.net</a>
        site</b></small></td>
      <td width="41%">

<p align="right"><font size="-2">created 2002-10-28-07:25 -0800 (pst) by </font><small><small> <a href="../../construction/orcmid.htm">orcmid</a></small></small><font size="-2"><br>
<em>$$Author: Orcmid $<br>
$$Date: 26-03-22 14:12 $<br>
$$Revision: 8 $</em></font></p>
      </td>
    </tr>
  </table>
</td>
</tr>
</table>
</div>

</body>
</html>