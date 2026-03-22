<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- ORCMID'S LAIR BLOGGER.COM TEMPLATE
     :mode=html:
     2006-03-12-15:46 Add ClstrMap to the Template page
     2006-03-08-22:51 Add "about" link to all new pages.
     2006-02-13-19:07 Change images to fetch from nfocentrale.net/orcmid/images to
        avoid failures to display depending on ad blocking and other settings.  Add
        Technorati Embed to left column.  Rearrange to improve the appearance.  Then
        change to have just nfocentrale.net/orcmid/blog/ as the lair on technorati.
     2004-10-06-21:39 Put white background on logo block to have better
        resolution, and float the top-right links to the middle.
     2004-10-04-18:45 Bring back improvements for comments and template link
        confirmed using Professor von Clueless template.
     2004-10-02-19:32 Add top bar image and links for status, contact, and
        privacy, following the Professor von Clueless pattern.  Use the blog
        construction zone page.
     2004-09-29-16:55 Tidy up and add privacy + status links.
     2004-09-02-13:17 Harmonize with the Professor von Clueless Template
     2004-08-30-14:07 Repair the alignment of the table and the alignment 
        of text within the table columns, fixing the Hard Hat link too.
     2004-08-30-11:05 Change the title link to go to the blog and not the root.
        Add $BlogPage$Title and $BlogMetadata$.  Then go fix
        $BlogItemTitle$ which is what we came here to do in the first place. 
        Set the bottom block into a separate table and make it nice.
        Also make the format nice and see if we can even check the DTD.
     2004-06-27-17:40 Add Castle Clueless to the list of associated blogs.
     2004-06-27-17:48 Fix the path to the "Atom Feed" button to work 
        absolutely.
     2004-05-10-20:47 Enable comments and have them in-line behind the post.
        Fix the archive link to be root-relative because post pages are at 
        a deeper level than the default and its archives.
     2004-05-02 Tidy up, add the Atom Button image.
     2004-02-04-17:22 Add content-type and content-language information to see
        what that improves.
     2004-01-31 Add a link for the Atom feed.
     2002-11-11 Remove a script for the archive links that I messed up some-
        how.  Around here may be when I cocked up $BlogItem$Title too.
     2002-11-09 Tune the date-titel color and make a purplized link out of it.
     2002-11-08 Change date-title format to yyyy-mm-dd and bookmark it.
     2002-10-31 Template modification adventures.  Add a configuration-
        management stamp and set a default target that works for blogging 
        the blog.  Change the title-gray to a middle value and turn the 
        title into a link
   $$Header: /nfoCentraleMSbCentralWeb/orcmid/blog/2005/12/odma-little-middleware-that-could.asp 2     06-07-25 8:28 Orcmid $
   -->
<head>
<title>Orcmid's Lair: ODMA: The Little Middleware That Could</title>
<meta http-equiv="Content-Language" content="en-us" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="MSSmartTagsPreventParsing" content="true" />
<meta name="generator" content="Blogger" />
<link rel="alternate" type="application/atom+xml" title="Orcmid's Lair (Atom 0.3)" href="http://orcmid.com/blog/lair-atom.xml" />
<link rel="alternate" type="application/rss+xml" title="Orcmid's Lair (RSS 2.0)" href="http://orcmid.com/blog/lair-rss.xml" />
<link rel="service.post" type="application/atom+xml" title="Orcmid's Lair" href="https://www.blogger.com/atom/3896669" />
<link rel="service.post" type="application/atom+xml" title="Orcmid's Lair (Atom 1.0)" href="http://www.blogger.com/feeds/3896669/posts/full" />

<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://www.blogger.com/rsd.g?blogID=3896669" />
<style type="text/css">
@import url("http://www.blogger.com/css/blog_controls.css");
@import url("http://www.blogger.com/dyn-css/authorization.css?blogID=3896669");
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

<body bgcolor="#666666" marginwidth="0" marginheight="0" link="#336699" 
      vlink="#336699" alink="red"> <!-- 2004-09-02 -->
      
<div><br />
<table align="center" width="95%" border="0" cellspacing="0" cellpadding="0">
<tr><!-- PAGE TOP WITH BLOG TITLE -->
  <!-- 2004-10-02 2004-08-30 2002-10-31 -->
  <td bgcolor="#ffffff" width="25%" valign="middle" align="center">
  <a href="http://orcmid.com" target="_top"><!-- 2004-10-06 2005-02-13 -->
  <img border="0" src="http://nfocentrale.net/orcmid/images/orcmidslair-logo.gif"
       alt="Orcmid's Lair" width="172" height="107" /></a></td>
  <td bgcolor="#aaaaaa" width="55%" valign="middle" align="center">
  <div class="blogtitle"><b><a href="http://orcmid.com/blog/" target="_top">
      Orcmid's Lair</a></b></div></td>
  <td bgcolor="#aaaaaa" width="20%" valign="middle" align="right">
  <a href="http://orcmid.com/status.htm" target="_top">status</a>&nbsp;<br />
  <a href="http://NuovoDoc.com/privacy.htm" target="_top">privacy</a>&nbsp;<br />
  &nbsp;<br />
  <a href="http://orcmid.com/construction/orcmid.htm" target="_top">about</a>&nbsp;<br />
  <a href="http://NuovoDoc.com/contact.htm" target="_top">contact</a>&nbsp;</td>
</tr>
<tr><!-- PAGE BODY WITH TWO COLUMNS -->

	<td bgcolor="#cccccc" valign="top" align="right">
        <!-- LEFT COLUMN: Descriptions, Links, and Buttons --> 
        <!-- 2004-09-02 -->
    <br />
	<div class="posts">
	  Welcome to Orcmid's Lair, the playground for family connections, pastimes, and scholarly vocation -- the collected professional and recreational work of Dennis E. Hamilton<br />
	  <br />
      <div class="links">
	    <a href="/orcmid/blog/lair-chive.asp"><b>Archives</b></a><br>
        <br />
        <a href="http://orcmid.com/blog/lair-atom.xml" target="_top">
           <img border="0" src="http://orcmid.com/blog/atom-feed.bmp" 
                alt="Click for Atom feed" /></a>
        <br />
        <a href="http://orcmid.com/blog/lair-atom.xml" title="Atom feed">Atom Feed</a>
        <p><b>Associated Blogs</b><br /> <!-- 2004-09-02 -->
           &#160;<br />
           <a href="http://edge_city.blogspot.com/">Edge City</a><br />
           &#160;<br />
           <a href="http://miser-theory.info/astraendo/pn/">Numbering Peano</a>
           <br />
           &#160;<br />
           <a href="http://www.praxis101.com/blog/">Praxis101</a><br />
           &#160;<br />
           <a href="http://orcmid.com/BlunderDome/clueless/">Prof. von Clueless 
           in the Blunder Dome</a>
        </p>
      </div>
      <!-- In accordance to the Blogger terms of service, 
           please leave this button somewhere on your blogger-powered page. 
           Thanks!
           -->	
	  <a href="http://www.blogger.com/">
      <img src="http://buttons.blogger.com/bloggerbutton1.gif"
           width="88" height="31" border="0" 
           alt="This page is powered by Blogger. Isn't yours?" />
      </a><br />
      <script type="text/javascript" src="http://embed.technorati.com/embed/ip2sytx3m.js"></script>
      <!-- 2006-02-13 -->  
    
    <p align="right"><a href="http://clustrmaps.com/counter/maps.php?url=http://nfocentrale.net/orcmid/" id="clustrMapsLink"><img src="http://clustrmaps.com/counter/index2.php?url=http://nfocentrale.net/orcmid/" border=1 alt="Locations of visitors to this page"onError="this.onError=null; this.src='http://www.meetomatic.com/images/clustrmaps-back-soon.jpg'; document.getElementById('clustrMapsLink').href='http://clustrmaps.com/'">
</a>  <!-- 2006-03-12 --></p>
  
          <p><b>Recent Items</b><br /><!-- 2004-09-02 -->
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2005/10/what-programmers-do.asp">What Programmers Do</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2005/10/comfort-of-open-development-processes.asp">The Comfort of Open Development Processes</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2005/10/abandoning-msc.asp">Abandoning an M.Sc</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2005/10/relaxing-patent-licenses-for-open.asp">Relaxing Patent Licenses for Open Documents</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2005/10/windows-media-centers-been-good-to-me.asp">Windows Media Center's Been Good To Me ...</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2005/09/responding-to-hurricane-katrina.asp">Responding to Hurricane Katrina</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2005/07/consigning-software-patents-to-turing.asp">Consigning Software Patents to the Turing Tar Pit</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2005/07/merchants-of-attention.asp">Merchants of Attention</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2005/07/symbols-of-trust.asp">Symbols of Trust</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2005/07/passing-of-salvatore-lombino-farewell.asp">The Passing of Salvatore Lombino: Farewell, 87th Precinct</a><br />
    </p>

	</div>
    </td>
    
	<td bgcolor="white" colspan="2"><!-- 2004-10-02 -->
        <!-- RIGHT COLUMN: The Silly content -->
    
	
      <h3><a name="2005-12-20" href="#2005-12-20">
          <font color="#660000">2005-12-20</font></a></h3>
   	

	<div class="posts">
    <a name="113514764877405375"></a>
    
     <h2><font color="#000080"><!-- 2004-09-02 -->
	 
	 ODMA: The Little Middleware That Could
	 </font>
     </h2>
    

	<p>
    <div style="clear:both;"></div><div style="FLOAT: left"><a href="http://www.infonuovo.com/odma/" target="_top"><img height="85" alt="ODMA: Open Document Management API" src="http://www.infonuovo.com/odma/images/odma-thumb.gif" width="113" border="0" /></a><!--      Included from http://ODMA.info/construction/C000005a.htm of 2004-11-17-15:02 -0800 --></a></div><p>When I first&nbsp;learned about the formation of an Open Document Management API coalition in early 1994, I didn&rsquo;t expect to be its principal technical&nbsp;coordinator/evangelist/support contact&nbsp;ten years after the first specification was stabilized and&nbsp;the ODMA Connection Manager (the ODMA &ldquo;middleware&rdquo;) shipped in 1995.&nbsp; </p><p>On attending the second 1994 meeting on ODMA, in Orem, Utah, I was&nbsp;easily satisfied that ODMA was a good idea and there was no reason to do anything but to encourage and support it.&nbsp; I arranged to host the third meeting at Xerox PARC.&nbsp; At a&nbsp;Massachusetts meeting I lent my voice to Arnie Epstein&rsquo;s lobbying for use of the Microsoft Component Object Model (COM)&nbsp;at the ODMA integration layer.&nbsp;COM was felt to be too unknown and too new and too Microsoft to adopt for the application-facing API.&nbsp;&nbsp; At that time, Windows 3.11 was the&nbsp;in-use target platform,&nbsp;with some concern for use on NT.</p><h3>What Is It We Like About Standards Wars?</h3><p>While my attention through 1998 was on Document Enabled Networking (an effort of Xerox XSoft with Novell) and its merger with Shamrock (an effort led by&nbsp;IBM with Saros) to form the Document Management Alliance, I always regarded ODMA as complementary to, and separate from, the DMA model and interfaces.&nbsp; ODMA provided a smooth integration of desktop applications with document-management; DMA provided a federation of document-management systems&nbsp;facing out to&nbsp;the server islands.&nbsp; </p><p>It was always surprising to see the hostility that adherents of one approach had for the offerings of the other, and the degree to which each group feared the other would steal its thunder.&nbsp; I found it inexplicable.&nbsp;&nbsp; &nbsp;There was no conflict of scope, but apparently one of ambitions.</p><h3>Keeping It As Simple As Possible</h3><p>What only time would reveal was that ODMA was also targeted at an important sweet spot, was timely, and worked well enough.&nbsp; Meanwhile DMA took too long and was seen as too complex as well as unresponsive to new technologies (like Java).&nbsp; ODMA&rsquo;s developer audience, on the other hand, would eventually be&nbsp;more concerned about the inability to integrate using Visual Basic.&nbsp; We never go to show, in delivered systems, how DMA and ODMA could work together to integrate from the desktop out to the repositories.</p><p>Some of the focus (and a certain edginess) by which ODMA succeeded is explained by this manifesto at the beginning of the <a href="http://odma.info/odma10st.htm#ODMA-10-Specification">first ODMA specification</a>:</p><blockquote dir="ltr" style="MARGIN-RIGHT: 0px"><ol><li><em>If the standard does not solve a problem it will not be used. </em><li><em>If the creation of the standard takes a long period of time, it does not solve the problem. </em><li><em>If the standard is difficult to implement, it does not solve the problem. </em><li><em>The standard must be vendor independent. </em><li><em>The standard must not try to solve all vendors problems, or it will be big, complex and take a long time to implement. This violates rules 1, 2 and 3 above. </em><li><em>It is the customers that lose if there is not a straightforward way to integrate applications that create documents, and applications that manage documents. Easy integration between applications and document management systems will grow the industry and increase sales for the entire marketplace. </em></li></ol><p><em>It is difficult to express the importance the initial members of the consortium placed on wanting to create a useful API that is vendor and platform independent while still simple to implement. They recognized that they could solve 80 percent of the problem easily and were willing to live with having to solve another 10 percent over time and probably never being able to solve the final 10 percent.</em></p></blockquote><p>It is difficult to comprehend how a motley band of document-management vendors managed to come together long enough to produce something that solved a problem for all of them but that none of them could get enough value from providing on their own.&nbsp; Integrating between document-management systems and the desktop and getting out of the way of users&nbsp;had been&nbsp;a constant and costly challenge.&nbsp; The ODMA API, Connection Manager, and underlying integration model (think ODBC or TWAIN for comparable approaches) reduced the cost of entry onto the Microsoft desktop.&nbsp; It&nbsp;dramatically reduced the cost of retooling and customizing for each new desktop-application release.</p><p>I think the generosity and willingness of SoftSolutions, contributor of Brad Clements&rsquo; original proposal, was crucial.&nbsp; It also would not have worked if enough desktop applications were not arranged to be ODMA-aware.&nbsp; WordPerfect, then joined along with SoftSolutions&nbsp;into Novell,&nbsp;took the first step and Microsoft provided the sustaining presence from&nbsp;Word 97 through 2003.</p><h3>But No Simpler</h3><p><a href="http://dmware.info/">AIIM DMware</a>&nbsp;was created&nbsp;in <strike>2001</strike> 2000&nbsp;to provide a&nbsp;safe-landing of public code and support after&nbsp;dissolution of the ODMA and DMA coalitions.&nbsp; As the technical coordinator for continuation&nbsp;of&nbsp;DMware, I had a big surprise in store for me.&nbsp; While&nbsp;traveling in Italy and studying the language for six weeks, my arriving e-mail (via MSN in London to cell-phone modem to laptop) was&nbsp;suddenly all&nbsp;about support problems with ODMA.&nbsp; I&nbsp;was receiving my&nbsp;initiation in ODMA trouble-shooting and the finger-pointing among desktop vendors and DMS vendors that found&nbsp;ODMA a convenient target in the middle.&nbsp; The developers had moved on and&nbsp;the adopters of ODMA-based integrations were now making their problems known.&nbsp; <a href="http://odma.info/faq/2005/10/q051001d.htm">The concerned parties had changed</a>.</p><p>Fortunately, the last release of&nbsp;the ODMA Connection Manager contained a logging option.&nbsp;&nbsp;I could talk users and system administrators through the capture of logs that I would then interpret via e-mail.&nbsp; I could confirm that ODMA was working correctly enough (and I found bugs,&nbsp;thankfully never found to be the causes of difficulties users encountered).&nbsp; I could&nbsp;see where connecting software (usually the desktop application) went off the rails, but I had no way to troubleshoot the proprietary applications on both sides of the middleware.</p><p>That experience completely altered my&nbsp;priorities among&nbsp;DMware activities.&nbsp; Users with problems always came first, and there had been no support mechanism.&nbsp; I did what I could, with AIIM sponsorship.&nbsp; There was always more that could be done.&nbsp;&nbsp;</p><h3>Welcome to the Long Niche</h3><p>Today, problem reports have dwindled.&nbsp;&nbsp;Announcement of new ODMA-aware applications and compliant document-management systems is rare.&nbsp; I have no way to know how many PCs are still using ODMA for document-management integration on the desktop in 2005.&nbsp; I am&nbsp;certain this is a shrinking niche.</p><p>I learned some valuable lessons.&nbsp;&nbsp;First, it is extremely important to look at the lifecycle of integration solutions and&nbsp;plan for&nbsp;sustained&nbsp;troubleshooting and support down the road.&nbsp; Secondly, I like to think that we now know more about establishing end-to-end scenarios that confirm the proper behavior and failure-modes of this kind of integration.&nbsp;&nbsp; This wasn&rsquo;t anticipated in 1995 before the low-hanging fruit began to suffer the blight of&nbsp;bit rust.</p><h3>Ultimate Student Project</h3><p>I had always wanted to create something more for ODMA, especially around expanding the forms of integration that were supported.&nbsp; I had even established a SourceForge project as a haven for any new development.</p><p>When I needed to find a software development activity for a project-oriented M.Sc in IT dissertation, it was natural to fix on ODMA as a vehicle for prototyping ideas around open-system trustworthiness.&nbsp;&nbsp; Although I abandoned the dissertation, I still wanted to carry out the project, and I have announced its <a href="http://nuovodoc.com/products/">formal initiation</a> (after several false starts)&nbsp;at NuovoDoc, my business site.</p><p>Although I am completely willing to&nbsp;uncover a hidden pocket of interest, I have no illusions that anything I do will reverse dwindling&nbsp;interest in and use of ODMA.&nbsp; I am as responsible as anyone for its neglect.&nbsp; It is more like my safe laboratory for learning how to&nbsp;put the lessons into practice and then adapt them to new settings.&nbsp; It&rsquo;s a little as if ODMA has donated its body to science and now&nbsp;researchers will get to know the&nbsp;creature in a new way.</p><div style="clear:both; padding-bottom: 0.25em;"></div>
    </p>
	<span class="byline">posted by orcmid 
       at <a href="http://orcmid.com/blog/2005/12/odma-little-middleware-that-could.asp">12/20/2005 10:47:28 PM</a></span>
	  
         <!-- 2004-05-10 -->
		<div class="blogComments">
			&nbsp;<br /><b><i>Comments:</i></b><!-- 2004-10-04 -->  
			
			<div class="blogComment">
				&nbsp;<br /><a name="115327521663931889"></a> 
				As a ODMA user in 2006, I must ask what if any technology has risen to replace ODMA as an efficient conduit between the desktop application and the managed document repository?<BR/><BR/>I cannot seem to find a replacement for ODMA...<br />
				<div class="byline">
                  <a href="http://orcmid.com/blog/2005/12/odma-little-middleware-that-could.asp#115327521663931889" 
                     title="permanent link">#</a> 
                  posted by Anonymous: 
                  Tue Jul 18, 07:13:36 PM PDT
                </div>
				<span class="item-control admin-25221779 pid-254348085"><a style="border:none;" href="http://www.blogger.com/delete-comment.g?blogID=3896669&amp;postID=115327521663931889" title="Delete Comment" ><span class="delete-comment-icon">&nbsp;</span></a></span>
			</div>
			
			<div class="blogComment">
				&nbsp;<br /><a name="115333389986798807"></a> 
				Good comment.  There really isn't anything that provides for cross-vendor desktop integration that is the ODMA sweet spot.<BR/><BR/>I thought that WebDAV would encroach into this area, especially with integration into the common file dialogs.  But it hasn't happened that way.<BR/><BR/>I also thought that the rotting of the bits in various desktop applications (especially in Microsoft Office) would eventually make ODMA unusable.  That doesn't appear to be the case, with Office 2007 reportedly preserving what support there is for ODMA.  <BR/><BR/>I was also heartened that there is an experimental implementation for OpenOffice.org, except it doesn't seem to work and there is not much energy invested in getting it working (the OpenOffice.org integration model for alternative data sources strikes me as a bit of a nightmare, actually).<BR/><BR/>There is a possible remedy on the horizon, but I can't tell if it will address desktop integration in a way that works at least as well as ODMA (and similar approaches, like TWAIN).  That is the iECM Consortium, which is focused on <A HREF="http://aiim.org/standards.asp?ID=29284" REL="nofollow">Enterprise Content Management Interoperability</A>.  This is a major undertaking and it will likely focus on service integration.  It also strikes me as far more ambitious than DMA, although there is strong participation in the industry (they even had a meeting in Redmond).  I don't expect early technology, and it may be more like Sharepoint for the rest of us.  <BR/><BR/>So, my commitment is to keep ODMA functioning, at least, so that remaining integrations can be confirmed and tested, as long as there is continued interest.  It's a niche, but in the world of the long tail, niches are perfectly acceptable.<br />
				<div class="byline">
                  <a href="http://orcmid.com/blog/2005/12/odma-little-middleware-that-could.asp#115333389986798807" 
                     title="permanent link">#</a> 
                  posted by <a href="http://www.blogger.com/profile/963786" rel="nofollow">orcmid</a>: 
                  Wed Jul 19, 11:31:39 AM PDT
                </div>
				<span class="item-control admin-25221779 pid-1142414376"><a style="border:none;" href="http://www.blogger.com/delete-comment.g?blogID=3896669&amp;postID=115333389986798807" title="Delete Comment" ><span class="delete-comment-icon">&nbsp;</span></a></span>
			</div>
			
	    <a class="comment-link" href="http://www.blogger.com/comment.g?blogID=3896669&amp;postID=113514764877405375">Post a Comment</a>
		</div>
	
	</div>
    
    </td>
</tr>
</table>

&#160;<br /> <!-- 2004-09-02 2004-09-29 -->
<table align="center" border="0" cellspacing="0" width="95%" bgcolor="white">
    <!-- The bottom engineering-paper block for this format. -->
<tr>
    <td width="31%"><small><small>
        <a href="http://orcmid.com/blog/construction.htm" target="_top"><!-- 2006-02-13 -->
           <img border="0" src="http://nfocentrale.net/orcmid/images/hardhat-logo.gif" 
                alt="Construction Zone (Hard Hat Area)" align="left" width="80" height="57" />
        </a></small></small></td><!-- 2004-10-04 -->
    <td width="28%" valign="middle" align="center">
        <small><small><b>You are navigating 
        <a href="http://orcmid.com/" target="_top">Orcmid's Lair</a>.
        </b></small></small></td>
    <td width="41%">
        <p align="right"><small><small>
        <a href="http://orcmid.com/blog/default.asp.template.txt">template</a> 
          created 2002-10-28-07:25 -0800 (pst) 
          by <a href="http://orcmid.com/construction/orcmid.htm" target="_top">orcmid</a><br />
          <em>$$Author: Orcmid $<br />
          $$Date: 06-07-25 8:28 $<br />
          $$Revision: 2 $</em></small></small></p>
     </td>
</tr>
</table>

</div>

</body>
</html>