<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- NUMBERING PEANO BLOGGER.COM TEMPLATE
     :mode=html:
     2004-10-04-19:30 Make all updates to match latest Orcmid's Lair style.
     2004-09-01-08:30 Add Recent Items List to Sidebar
     2004-08-31-20:37 Experiment with ways to make titles look like links
     2004-08-31-18:57 Fix the link colors to be the same visited/plain
     2004-08-31-17:13 Incorporate changes from the Orcmid's Lair template that
        matter here.
     2004-05-10-20:47 -0700 Update to work with new commentable posts setup 
    $$Header: /nfoCentraleMSbCentralWeb/miser/astraendo/pn/2004/10/compiling-numjava-01x.asp 1     04-10-06 22:36 Orcmid $
    -->

<head>
<title>Numbering Peano: Compiling Num.java 0.1x</title>
<meta http-equiv="Content-Language" content="en-us" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="MSSmartTagsPreventParsing" content="true" />
<meta name="generator" content="Blogger" />
<link rel="alternate" type="application/atom+xml" title="Numbering Peano" href="http://miser-theory.info/astraendo/pn/pn-atom.xml" />
<link rel="service.post" type="application/atom+xml" title="Numbering Peano" href="http://www.blogger.com/atom/7173751" />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://www.blogger.com/rsd.pyra?blogID=7173751" />
<style type="text/css">
@import url("http://www.blogger.com/css/blog_controls.css");
@import url("http://www.blogger.com/dyn-css/authorization.css?blogID=7173751");
</style>

<base target="_top" />
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

<body bgcolor="#666666" marginwidth="0" marginheight="0" 
      link="#336699" vlink="#336699" alink="red"> <!-- 2004-08-31 -->

<div><br />
<table align="center" width="95%" border="0" cellspacing="0" cellpadding="0">
<tr><!-- PAGE TOP WITH BLOG TITLE --><!-- 2004-10-04 -->
  <td bgcolor="#aaaaaa" width="25%" valign="middle" align="center">
    <a href="http://miser-theory.info/" target="_top">
  <img border="0" src="http://miser-theory.info/images/omisertheory-logo.gif" 
       alt="The Miser Project" width="105" height="72" /></a></td>
  <td bgcolor="#aaaaaa" width="55%" valign="middle" align="center">
  <div class="blogtitle"><b>
  <a target="_top" href="http://miser-theory.info/astraendo/pn/">
     Numbering Peano</a></b></div></td>
  <td bgcolor="#aaaaaa" width="20%" valign="bottom" align="right">
  <a href="http://orcmid.com/status.htm" target="_top">status</a>&nbsp;<br />
  &nbsp;<br />
  <a href="http://NuovoDoc.com/privacy.htm" target="_top">privacy</a>&nbsp;<br />
  &nbsp;<br />
  <a href="http://NuovoDoc.com/contact.htm" target="_top">contact</a>&nbsp;</td>
</tr>
<tr><!-- PAGE BODY WITH TWO COLUMNS -->
  
    <td bgcolor="#cccccc" width="150" valign="top" align="right">
        <!-- LEFT COLUMN: Descriptions, Links, and Buttons -->
    <br />
	<div class="posts">
	  Collaborative articulation of how abstraction and language is employed in the computational manifestation of numbers -- including analysis of the role of syntax, semantics, and meaning in the specification and use of software interfaces.<br />
	  <br />
      <div class="links">
      <a href="http://miser-theory.info/astraendo/pn/pn-atom.xml" title="Atom feed">
         <img border="0" src="http://miser-theory.info/astraendo/atom-feed.bmp"
              alt="Click for Atom feed" /></a> 
      <br />
      <a href="http://miser-theory.info/astraendo/pn/pn-atom.xml" title="Atom feed">Atom Feed</a> 
      <p><b>Associated Blogs</b><br /><!-- 2004-10-04 -->
         &#160;<br />
         <a href="http://edge_city.blogspot.com/">Edge City</a><br />
         &#160;<br />
         <a href="http://orcmid.com/blog/">Orcmid's Lair</a><br />
         &#160;<br />
         <a href="http://www.praxis101.com/blog/">Praxis101</a><br />
         &#160;<br />
         <a href="http://orcmid.com/BlunderDome/clueless/">Prof. von Clueless 
         in the Blunder Dome</a>
      </p>
      </div>
    <!--  In accordance to the Blogger terms of service, 
          please leave this button somewhere on your blogger-powered page. 
          Thanks!
          -->	
	<a href="http://www.blogger.com/">
    <img src="http://buttons.blogger.com/bloggerbutton1.gif" 
         width="88" height="31" border="0" 
         alt="This page is powered by Blogger. Isn't yours?" /></a>

    <p><b>Recent Items</b><br /><!-- 2004-10-04 2004-09-01 -->
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2004/08/deja-double-vu.asp">Deja Double Vu</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2004/08/blog-restored.asp">Blog Restored</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2004/06/unorganized-set-of-references-to-be.asp">Unorganized set of references: to be evaluated</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2004/06/document-centric-integration-perils-of.asp">Document-centric integration; perils of API's</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2004/06/libraries-and-platform-independence.asp">Libraries and Platform Independence</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2004/06/external-interface-contracts.asp">"External" Interface Contracts</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2004/06/interfaces-protocol-extensibility-and.asp">Interfaces, Protocol Extensibility, and Versioning</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2004/06/fine-kettle-of-fish-indeed.asp">A Fine Kettle of Fish, indeed.</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2004/06/what-is-model.asp">What Is a Model?</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2004/06/fine-kettle-of-fish.asp">A Fine Kettle of Fish</a><br />
    </p>

    <p><b>Archives</b><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2004_05_30_pn-chive.asp'>2004-05-30</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2004_06_06_pn-chive.asp'>2004-06-06</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2004_06_13_pn-chive.asp'>2004-06-13</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2004_06_27_pn-chive.asp'>2004-06-27</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2004_08_22_pn-chive.asp'>2004-08-22</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2004_08_29_pn-chive.asp'>2004-08-29</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2004_10_03_pn-chive.asp'>2004-10-03</a><br />
    </p>

	</div>
    </td>
    
	<td colspan="2" bgcolor="white" valign="top" align="left">
        <!-- RIGHT COLUMN: The Silly content -->
    
	
      <h3><a name="2004-10-06" href="#2004-10-06">
          <font color="#660000">2004-10-06</font></a></h3>
   	

	<div class="posts">
	<a name="109707305192618031"></a>
    
    <h2><font color="#000080"><!-- 2004-08-31 -->
    
    Compiling Num.java 0.1x
    
    </font></h2>
    
    
    <p>
	<p>I'm working through a preliminary understanding of what Orcmid has created <a href="http://nfocentrale.net/orcmid/com.orcmid/LLC/pa/pn/ALPHA/J040603c.htm">here</a>. The goal of the exercise, from my view, is to try to figure out what this Java code is, and how might I use it.</p><p>Orcmid has done a good job of describing the interface in terms that try to prevent me from making my earlier inference's of an early Java interface, numbers as we use them in the world, and int's as Java datatypes. The definition provides a name and then some examples of the syntax of using the interface methods. I'm still pretty confused about the names, except that  the use of "SumO" for the name of a Java object (Basics 1.2.) make me think that this does have something to do with arithmetic.</p><p>The minimal Java code supplied to define the interface and to exercise it is useful in revealing how little information is supplied by the code. I'm able to compile the interface and stub and simple run program with only minimal futzing with classpath specification. Orcmid is running on Windows and I'm on OS X, and a bit-wise compare of Num.class reveals no difference. That's interesting, but not surprising, given the Java promise of running on different platforms.</p><p>So, I complie StubbyRun.java and run it and get the exact same output that Orcmid, and the code, specifies. Great. But I have no earthly idea what, exactly, I could do with this. The method aum() throws and exception, the method dim() returns the interface object, and the boolean returns true.</p><p>So, without more information, the code does not reveal anything about its raison d'etre. I need to know what, exactly, Orcmid has in mind here. Section 4.1, <a href="http://nfocentrale.net/orcmid/com.orcmid/LLC/pa/pn/ALPHA/J040603c.htm#Considerations">Binding Considerations</a> offers pointers to reference material (sections 4.1.4.a and 4.1.4.b) to Peano numbering projects. In that material is some metadata needed to understand what the next version of the interface might provide.</p><p>But the key point is that code by itself isn't enough to reveal how to use it, or the reasons <span style="text-decoration:line-through;">for its construction</span> why it was written. That maybe is what we get to in the BETA <span style="text-decoration:line-through;">organization</span> description.<a href="http://nfocentrale.net/orcmid/com.orcmid/LLC/pa/pn/ALPHA/J040603c.htm#Considerations"><br /></a></p>
    </p>
	<span class="byline">posted by Bill Anderson
       at <a href="http://miser-theory.info/astraendo/pn/2004/10/compiling-numjava-01x.asp">10/6/2004 12:24:58 PM</a></span>
	       
 		<div class="blogComments">
			&nbsp;<br /><b><i>Comments:</i></b><!-- 2004-10-04 -->       
			
			<div class="blogComment">
				&nbsp;<br /><a name="109710626367491658"></a> 
				Bill this is great.&nbsp; You got out of this exactly what I want people to be left with when the lab notes are publicized more widely.&nbsp; Also, I'm delighted that you were able to confirm the compilation and execution on your Linux setup.&nbsp; Is there anything I should add about getting class paths right?<br />&nbsp;&nbsp; <B>1.</B> Regarding "SumO" I think it was a brain fart on my part.&nbsp; I suppose that the pun on "SomeO" occured to me, but I'm not certain.<br />&nbsp;&nbsp; <B>2.</B> I am going to go from "Binding" to "Situating" and as you requested privately, I will explain my doing that somewhere.<br />
				<div class="byline">
                  <a href="http://miser-theory.info/astraendo/pn/2004/10/compiling-numjava-01x.asp#109710626367491658" 
                     title="permanent link">#</a>
                  posted by <a href="http://www.blogger.com/profile/963786">orcmid</a>: 
                  10/6/2004 04:44:23 PM
                </div>
                <span class="item-control admin-1811622599 pid-1265515124"><a style="border:none;" href="http://www.blogger.com/delete-comment.do?blogID=7173751&postID=109710626367491658" title="Delete Comment" ><span class="delete-comment-icon">&nbsp;</span></a></span>
			</div>
			
        <a href="http://www.blogger.com/comment.g?blogID=7173751&postID=109707305192618031">Post a Comment</a>
		</div>
	
	</div>
    
    </td>
</tr>
</table>

&#160;<br /> <!-- 2004-10-04 -->
<table align="center" width="95%" border="0" cellspacing="0" cellpadding="0"
       bgcolor="white">
    <!-- The bottom engineering-paper block for this format. -->    
<tr>
     <td width="31%"><small><small>
         <a href="/miser/astraendo/pn/construction.htm" target="_top">
            <img border="0" 
                 src="http://miser-theory.info/images/hardhat-logo.gif" 
                 alt="Construction Zone (Hard Hat Area)" align="left" width="80" height="57" />
         </a></small></small></td>
     <td width="28%" valign="middle" align="center">
        <small><small><b>You are navigating the 
        <a href="http://miser-theory.info/" target="_top">Miser Project</a>
        </b></small></small></td> 
     <td width="41%">
         <p align="right"><small><small>
         <a href="http://miser-theory.info/astraendo/pn/default.asp.template.txt">
         template</a> created 2004-05-31-22:34 -0700 (pdt) 
         by <a href="http://miser-theory.info/construction/orcmid.htm">orcmid</a><br />
         <em>$$Author: Orcmid $<br />
         $$Date: 04-10-06 22:36 $<br />
         $$Revision: 1 $</em></small></small></p>
     </td>
</tr>
</table>

</div>

</body>
</html>