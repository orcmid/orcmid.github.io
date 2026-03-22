<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- NUMBERING PEANO BLOGGER.COM TEMPLATE
     :mode=html:
     2004-10-06-21:54 Clean up sidebar layout, put white background on logo,
        and float the right-side links to the middle.
     2004-10-04-19:30 Make all updates to match latest Orcmid's Lair style.
     2004-09-01-08:30 Add Recent Items List to Sidebar
     2004-08-31-20:37 Experiment with ways to make titles look like links
     2004-08-31-18:57 Fix the link colors to be the same visited/plain
     2004-08-31-17:13 Incorporate changes from the Orcmid's Lair template that
        matter here.
     2004-05-10-20:47 -0700 Update to work with new commentable posts setup 
    $$Header: /nfoCentraleMSbCentralWeb/miser/astraendo/pn/2006/01/java-int-is-not-integer-thats-point.asp 1     06-02-04 21:20 Orcmid $
    -->

<head>
<title>Numbering Peano: A Java int is not an Integer; that's the point!</title>
<meta http-equiv="Content-Language" content="en-us" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="MSSmartTagsPreventParsing" content="true" />
<meta name="generator" content="Blogger" />
<link rel="alternate" type="application/atom+xml" title="Numbering Peano" href="http://miser-theory.info/astraendo/pn/pn-atom.xml" />
<link rel="service.post" type="application/atom+xml" title="Numbering Peano" href="https://www.blogger.com/atom/7173751" />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://www.blogger.com/rsd.g?blogID=7173751" />
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
  <td bgcolor="#ffffff" width="25%" valign="middle" align="center">
    <a href="http://miser-theory.info/" target="_top"><!-- 2004-10-06 -->
  <img border="0" src="http://miser-theory.info/images/omisertheory-logo.gif" 
       alt="The Miser Project" width="105" height="72" /></a></td>
  <td bgcolor="#aaaaaa" width="55%" valign="middle" align="center">
  <div class="blogtitle"><b>
  <a target="_top" href="http://miser-theory.info/astraendo/pn/">
     Numbering Peano</a></b></div></td>
  <td bgcolor="#aaaaaa" width="20%" valign="middle" align="right">
  <a href="http://orcmid.com/status.htm" target="_top">status</a>&nbsp;<br />
  &nbsp;<br /><!-- 2004-10-06 -->
  <a href="http://NuovoDoc.com/privacy.htm" target="_top">privacy</a>&nbsp;<br />
  &nbsp;<br />
  <a href="http://NuovoDoc.com/contact.htm" target="_top">contact</a>&nbsp;</td>
</tr>
<tr><!-- PAGE BODY WITH TWO COLUMNS -->
  
    <td bgcolor="#cccccc" valign="top" align="right"><!-- 2004-10-06 -->
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
    <a href="http://miser-theory.info/astraendo/pn/2005/10/agile-scope-creep-and-how-to-detect-it.asp">Agile Scope Creep and How to Detect It</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2005/08/all-thats-needed-isnt-written-down-how.asp">All that's needed isn't written down; how much more might be enough?</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2005/06/abstract-or-concrete-maybe-both.asp">Abstract or concrete? Maybe both.</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2005/01/mesh-of-agreements-i-am-i-am.asp">A mesh of agreements, I am, I am</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2004/12/service-interface-experiences.asp">Service interface experiences</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2004/10/compiling-numjava-01x.asp">Compiling Num.java 0.1x</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2004/08/deja-double-vu.asp">Deja Double Vu</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2004/08/blog-restored.asp">Blog Restored</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2004/06/unorganized-set-of-references-to-be.asp">Unorganized set of references: to be evaluated</a><br />
    
    &#160;<br />
    <a href="http://miser-theory.info/astraendo/pn/2004/06/document-centric-integration-perils-of.asp">Document-centric integration; perils of API's</a><br />
    </p>

    <p><b>Archives</b><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2004_05_30_pn-chive.asp'>2004-05-30</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2004_06_06_pn-chive.asp'>2004-06-06</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2004_06_13_pn-chive.asp'>2004-06-13</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2004_06_27_pn-chive.asp'>2004-06-27</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2004_08_22_pn-chive.asp'>2004-08-22</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2004_08_29_pn-chive.asp'>2004-08-29</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2004_10_03_pn-chive.asp'>2004-10-03</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2004_12_05_pn-chive.asp'>2004-12-05</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2005_01_23_pn-chive.asp'>2005-01-23</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2005_06_19_pn-chive.asp'>2005-06-19</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2005_08_14_pn-chive.asp'>2005-08-14</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2005_10_09_pn-chive.asp'>2005-10-09</a><br />
    
    <a href='http://miser-theory.info/astraendo/pn/2006_01_01_pn-chive.asp'>2006-01-01</a><br />
    </p>

	</div>
    </td>
    
	<td colspan="2" bgcolor="white" valign="top" align="left">
        <!-- RIGHT COLUMN: The Silly content -->
    
	
      <h3><a name="2006-01-05" href="#2006-01-05">
          <font color="#660000">2006-01-05</font></a></h3>
   	

	<div class="posts">
	<a name="113647205881256320"></a>
    
    <h2><font color="#000080"><!-- 2004-08-31 -->
    
    A Java int is not an Integer; that's the point!
    
    </font></h2>
    
    
    <p>
	<div style="clear:both;"></div><p><br /><a href="http://www.cincomsmalltalk.com/blog/blogView?showComments=true&amp;entry=3313351953">James Robertson's Smalltalk blog</a> has an interesting commentary on Joel Spolsky's commentary on using Java in CS curricula. [This comments on comments weblog pattern can be a bit much to follow, but it is what it is. I'm taking a leap of faith that James is quoting Joel correctly.]<br /></p><p><br />According to James, Joel writes:<br /></p><blockquote><br />The most sympathetic interpretation of why CS departments are so enthusiastic to dumb down their classes is that it leaves them more time to teach actual CS concepts, if they don't need to spend two whole lectures unconfusing students about the difference between, say, a Java int and an Integer.<br /></blockquote><p><br />One of the main objectives of Numbering Peano is precisely to explicate this point. I can appreciate the confusion that can arise when learning computer languages; I've had them myself. But all computer languages define and use constructs that can be viewed as representations of Integers. Of course, Joel's point is that some languages do a better job of representation. But even when the representations behave like Integers it's important to understand that they are not Integers.<br /></p><p><br />Part of the Numbering Peano exercise is to clarify exactly what contextual description, in addition to the code, is needed to make software sharable and usable in different programs that solve a diverse set of problems.<br /></p><br /><!-- technorati tags start --><p style="text-align:right;font-size:10px;">Technorati Tags: <a href="http://www.technorati.com/tag/programming" rel="tag">programming</a>, <a href="http://www.technorati.com/tag/Software Engineering" rel="tag">Software Engineering</a></p><!-- technorati tags end --><div style="clear:both; padding-bottom: 0.25em;"></div>
    </p>
	<span class="byline">posted by Bill Anderson
       at <a href="http://miser-theory.info/astraendo/pn/2006/01/java-int-is-not-integer-thats-point.asp">1/05/2006 06:42:03 AM</a></span>
	       
 		<div class="blogComments">
			&nbsp;<br /><b><i>Comments:</i></b><!-- 2004-10-04 -->       
			
			<div class="blogComment">
				&nbsp;<br /><a name="113702982096865524"></a> 
				Bill, thanks for the links and comments.  I finally read the Spolski article end-to-end and I don't think Joel was complaining about the problem of differences between Java ints and integers (he confuses me by capitalizing that).  I suppose we could ask him.<BR/><BR/>I think he was complaining about curriculum designers looking for ways to dumb programming languages down even more, and he was looking for a speculative up side.  I think his tongue is stuck in his cheek here.<BR/><BR/>I agree about pointers, and I agree about recursion.  Of course you can still lose on a pointer in Java too, only what you get is a null-object exception.  And these days the stack traceback gets spewed onto some unsuspecting user's browser as the server-side application vomits and dies.<BR/><BR/>So I think we may be violently agreeing with Joel.  I wonder what he says?<br />
				<div class="byline">
                  <a href="http://miser-theory.info/astraendo/pn/2006/01/java-int-is-not-integer-thats-point.asp#113702982096865524" 
                     title="permanent link">#</a>
                  posted by <a href="http://www.blogger.com/profile/963786" rel="nofollow">orcmid</a>: 
                  5:37 PM
                </div>
                <span class="item-control admin-1811622599 pid-1265515124"><a style="border:none;" href="http://www.blogger.com/delete-comment.g?blogID=7173751&amp;postID=113702982096865524" title="Delete Comment" ><span class="delete-comment-icon">&nbsp;</span></a></span>
			</div>
			
        <a class="comment-link" href="http://www.blogger.com/comment.g?blogID=7173751&amp;postID=113647205881256320">Post a Comment</a>
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
         $$Date: 06-02-04 21:20 $<br />
         $$Revision: 1 $</em></small></small></p>
     </td>
</tr>
</table>

</div>

</body>
</html>