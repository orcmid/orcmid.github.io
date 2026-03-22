<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- PROFESSOR VON CLUELESS BLOGGER.COM TEMPLATE
     :mode=html:
     2004-10-28-23:12 Line up title block material better and add rating
        items from NewsGator Online.
     2004-10-03-12:35 Add link to template source in the construction-
        history block.  This might be something more useful later.
     2004-10-03-08:45 Refresh template to reflect improvements from Orcmid's
        Lair, cleaning up links too.
     2004-09-01-23:21 Space out the recent titles so they are easier to see.
     2004-09-01-22:12 Let's make the title block more interesting.
     2004-09-01-21:13 Revert to the Basic model used by Numbering Peano.
        Establish a simpler, well-behaved case that I can customize further
        once I have the basic appearance handled.
     2004-08-31-22:36 See how to swap the two columns.  I want the narrow
        column on the left.  I am willing to give up some of the pretties
        to have that work out.  It doesn't provide what I want though.
     2004-06-26 Add Atom-feed links to the page.
     2004-02-27 Douglas Bowman Rounders 2 template style from Blogger
  $$Header: /nfoCentraleMSbCentralWeb/orcmid/BlunderDome/clueless/2005/05/three-defects-we-can-do-without-memory.asp 2     06-02-03 22:44 Orcmid $
  -->

<head>
<title>Professor von Clueless in the Blunder Dome: Three Defects We Can Do Without: Memory Leaks, Buffer Overflows, and Unclosed Files</title>
<meta http-equiv="Content-Language" content="en-us" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="MSSmartTagsPreventParsing" content="true" />
<meta name="generator" content="Blogger" />
<link rel="alternate" type="application/atom+xml" title="Professor von Clueless in the Blunder Dome" href="http://orcmid.com/BlunderDome/clueless/clu-atom.xml" />
<link rel="service.post" type="application/atom+xml" title="Professor von Clueless in the Blunder Dome" href="http://www.blogger.com/atom/7336679" />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://www.blogger.com/rsd.g?blogID=7336679" />
<style type="text/css">
@import url("http://www.blogger.com/css/blog_controls.css");
@import url("http://www.blogger.com/dyn-css/authorization.css?blogID=7336679");
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
<tr><!-- PAGE TOP WITH BLOG TITLE -->
  <!-- 2004-10-03 -->
  <td bgcolor="#cccccc" width="25%" valign="middle" align="right">
  <a href="http://orcmid.com/viaggio/V040801.htm" target="_top">
  <img border="0" src="http://orcmid.com/viaggio/orc-DW-2004-08-07a1.png" 
       alt="Blunder Dome Sighting" width="120" height="145" /></a></td>  
  <td bgcolor="#aaaaaa" width="%55" valign="middle" 
      align="center"><h2 align="center"><a target="_top" 
      href="http://orcmid.com/BlunderDome/clueless/">Professor von Clueless in the Blunder Dome</a></h2></td>
  <td bgcolor="#aaaaaa" width="%20" 
      valign="middle" align="right"><!-- 2004-10-28 -->
  <a href="http://orcmid.com/status.htm" 
     target="_top">status</a>&nbsp;<br />
  <!-- 2004-10-03 -->&nbsp;<br />
  <a href="http://NuovoDoc.com/privacy.htm" 
     target="_top">privacy</a>&nbsp;<br />
  &nbsp;<br />
  <a href="http://NuovoDoc.com/contact.htm" 
     target="_top">contact</a>&nbsp;</td>
</tr>
<tr><!-- PAGE BODY WITH TWO COLUMNS -->
  
    <td bgcolor="#cccccc" valign="top" align="right">
        <!-- LEFT COLUMN: Descriptions, Links, and Buttons -->
    <br />
	<div class="posts">
	  Hangout for experimental confirmation and demonstration of software, computing, and networking.  The exercises don't always work out.  The professor is a bumbler and the laboratory assistant is a skanky dufus.<br />
	  <br />
      <div class="links">
      <a href="http://orcmid.com/BlunderDome/clueless/clu-atom.xml" title="Atom feed">
         <img border="0" src="http://orcmid.com/blog/atom-feed.bmp"
              alt="Click for Atom feed" /></a> 
      <br />
      <a href="http://orcmid.com/BlunderDome/clueless/clu-atom.xml" title="Atom feed">Atom Feed</a> 
      <p><b>Associated Blogs</b><br /> <!-- 2004-10-03 -->
         &#160;<br />
         <a href="http://edge_city.blogspot.com/">Edge City</a><br />
         &#160;<br />
         <a href="http://miser-theory.info/astraendo/pn/">Numbering
            Peano</a><br />
         &#160;<br />
         <a href="http://orcmid.com/blog/">Orcmid's Lair</a><br />
         <!-- 2004-10-03 -->&#160;<br />
         <a href="http://www.praxis101.com/blog/">Praxis101</a><br />
         &#160;<br />
         <a href="http://orcmid.com/BlunderDome/wingnut/">Spanner 
            Wingnut's Muddleware Lab</a>
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

    <p><b>Recent Items</b><br /><!-- 2004-09-01 -->
    
    &#160;<br />
    <a href="http://orcmid.com/BlunderDome/clueless/2005/05/windows-genuine-advantage-so-did-i.asp">Windows Genuine Advantage: So, did I fail the test or did the test fail?</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/BlunderDome/clueless/2005/05/hark-is-that-pattern-i-see-before-me.asp">Hark, Is That a Pattern I See Before Me?</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/BlunderDome/clueless/2005/05/nss2-all-things-to-all-people-through.asp">NSS2: All Things to All People through Perfect Software</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/BlunderDome/clueless/2005/05/are-you-problem-witch-or-solution.asp">Are You A Problem Witch or a Solution Witch?</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/BlunderDome/clueless/2005/05/how-do-you-know-your-discarded-disk-is.asp">How Do You Know Your Discarded Disk Is Unreadable?</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/BlunderDome/clueless/2005/05/uh-lemme-see-im-gonna-hack-my-router.asp">Uh, lemme see, I'm gonna hack my router and expose my residential LAN to the Internet ... Not.</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/BlunderDome/clueless/2005/05/flaws-in-genuine-software-still.asp">Flaws in Genuine Software Still Exploitable in Trusted Environment</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/BlunderDome/clueless/2005/04/secure-rfid-identification-protocol.asp">A Secure RFID-Identification Protocol?</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/BlunderDome/clueless/2005/04/how-effective-is-your-software-qa.asp">How Effective Is <em>Your</em> Software QA?</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/BlunderDome/clueless/2005/04/entirely-new-way-of-designing-systems.asp">An Entirely New Way of Designing Systems?</a><br />
    </p>

    <p><b>Archives</b><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2004_06_13_clu-chive.asp'>2004-06-13</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2004_06_20_clu-chive.asp'>2004-06-20</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2004_06_27_clu-chive.asp'>2004-06-27</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2004_08_29_clu-chive.asp'>2004-08-29</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2004_09_05_clu-chive.asp'>2004-09-05</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2004_09_12_clu-chive.asp'>2004-09-12</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2004_09_19_clu-chive.asp'>2004-09-19</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2004_10_10_clu-chive.asp'>2004-10-10</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2004_10_24_clu-chive.asp'>2004-10-24</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2004_11_07_clu-chive.asp'>2004-11-07</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2004_11_28_clu-chive.asp'>2004-11-28</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2004_12_05_clu-chive.asp'>2004-12-05</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2004_12_12_clu-chive.asp'>2004-12-12</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2004_12_26_clu-chive.asp'>2004-12-26</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2005_01_30_clu-chive.asp'>2005-01-30</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2005_02_06_clu-chive.asp'>2005-02-06</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2005_03_06_clu-chive.asp'>2005-03-06</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2005_03_13_clu-chive.asp'>2005-03-13</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2005_03_20_clu-chive.asp'>2005-03-20</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2005_04_03_clu-chive.asp'>2005-04-03</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2005_04_10_clu-chive.asp'>2005-04-10</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2005_04_17_clu-chive.asp'>2005-04-17</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2005_04_24_clu-chive.asp'>2005-04-24</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2005_05_01_clu-chive.asp'>2005-05-01</a><br />
    
    <a href='http://orcmid.com/BlunderDome/clueless/2005_05_08_clu-chive.asp'>2005-05-08</a><br />
    </p>

	</div>
    </td>
    
	<td bgcolor="white" colspan="2" valign="top" align="left">
        <!-- RIGHT COLUMN: The Silly content 2004-10-03 -->
    
	
      <h3><a name="Wednesday, May 11, 2005" href="#Wednesday, May 11, 2005">
          <font color="#660000">Wednesday, May 11, 2005</font></a></h3>
   	

	<div class="posts">
	<a name="111579684313583575"></a>
    
    <h2><font color="#000080"><!-- 2004-08-31 -->
    
    Three Defects We Can Do Without: Memory Leaks, Buffer Overflows, and Unclosed Files
    
    </font></h2>
    
    
    <p>
	<p><a href="http://www.acm.org/technews/articles/2005-7/0509m.html#item16">ACM News Service: Silver Bullets for Little Monsters: Making Software More Trustworthy.</a>&nbsp; David Larsen and Keith Miller identify available solutions to three defects, suggesting that it is no longer necessary to tolerate these any longer.&nbsp; Oh, OK: These aren&rsquo;t infallible, but they can improve the situation dramatically. </p><p>A number of tools are mentioned, including Microsoft&rsquo;s Slam, a C program static analyzer that authenticates the program against rules stated in its Specification Language for Interface Checking.&nbsp; Now wouldn&rsquo;t that be just SLIC.</p><p>The link to the article in the 2005&ndash;04 issue of <em>IEEE IT Professional</em>&nbsp;is directly to an Adobe Acrobat&nbsp;PDF.&nbsp; (I hate it when that happens. You&rsquo;ll have to&nbsp;condition your browser and firewall security to get the kind of access you want.&nbsp; I only crashed my browser&nbsp;once before getting it to work.) You may find it easier to work from the <a href="http://www.computer.org/itpro/">free-article page</a> or the <a href="http://csdl.computer.org/comp/mags/it/2005/02/f2toc.htm">table-of-contents</a>&nbsp;of the publication after the free-download promotion ends.</p><p>The abstract resonates for me:</p><blockquote>Despite the legions of ideas about how to improve software quality, much commercial software remains un-trustworthy. In this article, the authors make the case for at least taking small steps toward improved quality by using silver bullets &ldquo;corrective actions or methods&rdquo; to at least eliminate some common problems, the &ldquo;little monsters&rdquo; of the title.</blockquote><p>I am left wondering why these particular problems aren&rsquo;t greatly reduced by disciplined structural constraints on programs, ones that are easy to confirm.&nbsp; This would make confirmation that memory (and pointers) are released, that buffer-filling code is properly defended, and that resources are released subject to relatively simple inspection and well-crafted dynamic testing.&nbsp; Edge cases must still be addressed&nbsp;with regard to&nbsp;unexpected data&nbsp;and resource acquisition/retention problems, but&nbsp;I&rsquo;d think it&nbsp;very worthwhile to combine structural constraints with confirmation techniques.&nbsp; I&rsquo;m also wondering what hackers use to discover those defects&nbsp;as prospective avenues for security&nbsp;exploits.&nbsp; </p><p>With that inquiry in mind, I discovered additional gold in the article:</p><ul><li><strong>Trust gradualism:</strong> The notion of choosing carefully and eliminating (or seriously reducing) the incidence of a couple of pesky cases with existing silver-enough-bullets</li><li><strong>Tracing of &ldquo;software trustworthiness&rdquo;</strong> back through David Parnas (1990) to F. Lockwood Morris (1973) and John McCarthy to what seems to be an unsatisfactory conclusion around what constitutes a catastrophic outcome.&nbsp; I suspect that an affirmative approach may serve us better but I will relish going to the sources that are provided here.</li><li><strong>Simple practices</strong> that would go a long way and that have seen little adoption (or are at least kept obscure):</li><ul><li>a minimum standard for software testing</li><li>third-party assessment of software quality</li><li>good-faith negotiation about&nbsp;achieving &ldquo;good-enough&rdquo; software </li></ul><li><div align="left"><strong>Reminder</strong> that the 10 provisions of Cem Kaner&rsquo;s August 2003&nbsp;<a href="http://blackbox.cs.fit.edu/blog/kaner/archives/000124.html">Software Customer Bill of Rights</a>&nbsp;bear on&nbsp;trustworthiness too, including</div></li><ul><li><div align="left">disclosure of know defects</div></li><li><div align="left">freedom to make public&nbsp;criticism, publication of benchmark studies, and other statutory fair usage</div></li><li><div align="left">and [two more I would add], disclosure of all external communications (with user permission required) and assured access of users to their own data (which means to me that data formats are disclosed or that exporting is assured, and that applies to data for which custody is not on the customer&rsquo;s system)</div></li></ul><li><div align="left">The little monsters approach: &ldquo;If developers aren&rsquo;t completely candid about known defects, perhaps they can eliminate particular types of defects and then declare that such defects are absent from their software.&rdquo;</div></li><li><div align="left">Choice of three of&nbsp;the 12 pesky critters that <a href="http://www.cs.nps.navy.mil/people/faculty/berzins/">Valdis Berzins</a> says&nbsp;are amenable to promising automated methods, with a stack of references, industry examples, and available products for those three.</div></li></ul><p align="left">This paper is a keeper for students of this subject.&nbsp; From my perspective on <a href="http://orcmid.com/BlunderDome/clueless/2005/03/trost-templates-for-raising-open.asp">TROSTing</a>, I would say that declaring the absence of any sort of defect is problematic (as Knuth has famously remarked, and Edsger Dijkstra seemed to begrudge the point as well).&nbsp; It strikes me that it is more appropriate to assert diligence in application of current art, specifying which measures were applied to mitigate the prospect of various understood defects, and certifying that.&nbsp; Declaring perfection strikes me as foolhardy, especially since the user who stumbles on a defect will not care which category it falls in, if any.&nbsp; Demonstrating diligence I can see as do-able at the current level of art.</p>
    </p>
	<span class="byline">posted by orcmid
       at <a href="http://orcmid.com/BlunderDome/clueless/2005/05/three-defects-we-can-do-without-memory.asp">5/11/2005 12:34:03 AM</a>,
       rating 
       <script src="http://www.newsgator.com/ngs/ratings.aspx?rurl=http://orcmid.com/BlunderDome/clueless/2005/05/three-defects-we-can-do-without-memory.asp">
       </script> data by <a href="http://www.newsgator.com">NewsGator 
                             Online</a><!-- 2004-10-28 --></span>
	       
 		<div class="blogComments">
			&nbsp;<br /><b><i>Comments:</i></b><!-- 2004-10-03 -->     
			
        <a class="comment-link" href="http://www.blogger.com/comment.g?blogID=7336679&amp;postID=111579684313583575">Post a Comment</a>
		</div>
	
	</div>
    
    </td>
</tr>
</table>

&#160;<br />
<table align="center" width="95%" border="0" cellspacing="0" cellpadding="0"
       bgcolor="white">
    <!-- The bottom engineering-paper block for this format. 
         2004-10-03 -->    
<tr>
     <td width="31%"><small><small>
         <a href="http://orcmid.com/BlunderDome/clueless/construction.htm" 
            target="_top"><!-- 2004-10-03 -->
            <img border="0" 
                 src="http://orcmid.com/images/hardhat-logo.gif" 
                 alt="Construction Zone (Hard Hat Area)" align="left" width="80" height="57" />
         </a></small></small></td>
     <td width="28%" valign="middle" align="center">
         <small><small><b>You are navigating the </b>
         <a href="http://orcmid.com/BlunderDome/" target="_top">Blunder 
            Dome</a></small></small></td> 
     <td width="41%">
         <p align="right"><small><small>
         <a href="http://orcmid.com/BlunderDome/clueless/default.asp.template.txt">template</a> created 2004-06-17-20:01 -0700 (pdt) 
         by <a href="http://orcmid.com/construction/orcmid.htm">orcmid</a><br />
         <em>$$Author: Orcmid $<br />
         $$Date: 06-02-03 22:44 $<br />
         $$Revision: 2 $</em></small></small></p>
     </td>
</tr>
</table>

</div>

</body>
</html>