<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- ORCMID'S LAIR BLOGGER.COM TEMPLATE
     :mode=html:
     2007-12-26-16:35 Add Orcmid's Live Hideout to the related blogs list
     2007-02-17-11:06 Adjust the dimensions of the image to avoid resampling by browsers.
     2007-02-16-17:14 Change the Orcmid's Lair image to use a well-scaled version.
     2006-11-30-12:22 Correct my Technorati links to use the proper blog claim ID.
     2006-10-29-12:02 Cleanup for use with official orcmid.com domain
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
   $$Header: /A2HostingWeb/orcmid/blog/2009/03/software-rust-never-sleeps.asp 1     09-08-22 16:04 Orcmid $
   -->
<head>
<title>Orcmid's Lair: Software: Rust Never Sleeps</title>
<meta http-equiv="Content-Language" content="en-us" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="MSSmartTagsPreventParsing" content="true" />
<meta name="generator" content="Blogger" />
<link rel="icon" type="image/vnd.microsoft.icon" href="http://www.blogger.com/favicon.ico"/>
<link rel="alternate" type="application/atom+xml" title="Orcmid's Lair - Atom" href="http://orcmid.com/blog/lair-atom.xml" />
<link rel="alternate" type="application/rss+xml" title="Orcmid's Lair - RSS" href="http://orcmid.com/blog/rss.xml" />
<link rel="service.post" type="application/atom+xml" title="Orcmid's Lair - Atom" href="http://www.blogger.com/feeds/3896669/posts/default" />
<link rel="EditURI" type="application/rsd+xml" title="RSD" href="http://www.blogger.com/rsd.g?blogID=3896669" />
<link rel="alternate" type="application/atom+xml" title="Orcmid's Lair - Atom" href="http://www.blogger.com/feeds/3896669/3785359505739520712/comments/default" />
 <link rel="stylesheet" type="text/css" href="http://www.blogger.com/css/blog_controls.css"/> <link rel="stylesheet" type="text/css" href="http://www.blogger.com/dyn-css/authorization.css?targetBlogID=3896669&zx=5bddbcb5-524c-4efc-a968-18bcad8134bd"/><script type="text/javascript" src="http://www.blogger.com/js/backlink.js"></script>
<script type="text/javascript" src="http://www.blogger.com/js/backlink_control.js"></script>
<script type="text/javascript">var BL_backlinkURL = "http://www.blogger.com/dyn-js/backlink_count.js";var BL_blogId = "3896669";</script>

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
  <img border="0" src="http://orcmid.com/images/OrcmidsLair-thumb.gif"
       alt="Orcmid's Lair" width="150" height="91" /></a><!-- 2007-02-16/17 --></td>
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
	    <a href="http://orcmid.com/blog/lair-chive.asp"><b>Archives</b></a><!-- 2008-10-29 --><br>
        <br />
        <a href="" target="_top">
           <img border="0" src="http://orcmid.com/blog/atom-feed.bmp" 
                alt="Click for Atom feed" /></a>
        <br />
        <a href="" title="Atom feed">Atom Feed</a>
        <p><b>Associated Blogs</b><br /> <!-- 2004-09-02 -->
           &#160; <br />
           <a href="http://edge_city.blogspot.com/">Edge City</a><br />
           &#160; <br />
           <a href="http://miser-theory.info/astraendo/pn/">Numbering Peano</a>
           <br />
           &#160; <br />
           <a href="http://orcmid.spaces.live.com/">Orcmid's Live Hideout</a><br />
           &#160; <br />           
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
      <script type="text/javascript" src="http://embed.technorati.com/embed/t94kbyj5ff.js"></script>
      <!-- 2006-11-30 -->  
    
    <p align="right"><a href="http://clustrmaps.com/counter/maps.php?url=http://nfocentrale.net/orcmid/" id="clustrMapsLink"><img src="http://clustrmaps.com/counter/index2.php?url=http://nfocentrale.net/orcmid/" border=1 alt="Locations of visitors to this page"onError="this.onError=null; this.src='http://www.meetomatic.com/images/clustrmaps-back-soon.jpg'; document.getElementById('clustrMapsLink').href='http://clustrmaps.com/'">
</a>  <!-- 2006-03-12 --></p>
  
          <p><b>Recent Items</b><br /><!-- 2004-09-02 -->
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2009/03/stimulate-this-sustaining-life-in-slow.asp">Stimulate This! Sustaining Life in the Slow Lane</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2009/03/2009-03-24-finding-ada.asp">2009-03-24: Finding Ada</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2009/03/friday-cat-pictures-more-heat-please.asp">Friday Cat Pictures: More Heat Please!</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2009/03/golden-geek-picture-personality.asp">Golden Geek: Picture Personality</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2009/03/friday-cat-photos-agriturismo-kittens.asp">Friday Cat Photos: Agriturismo Kittens</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2009/03/social-grid-identity-please-enter-your.asp">Social-Grid Identity: Please Enter Your Twitter Cr...</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2009/03/productivity-cleaning-up-workspace.asp">Productivity: Cleaning Up the Workspace</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2009/02/friday-cat-picture-piu-gatti-roma.asp">Friday Cat Picture: Pi&ugrave; Gatti di Roma</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2009/02/friday-cat-picture-i-gatti-roma.asp">Friday Cat Picture: I Gatti di Roma</a><br />
    
    &#160;<br />
    <a href="http://orcmid.com/blog/2009/02/friday-cat-photo-maple-snell.asp">Friday Cat Photo: Maple Snell</a><br />
    </p>

	</div>
    </td>
    
	<td bgcolor="white" colspan="2"><!-- 2004-10-02 -->
        <!-- RIGHT COLUMN: The Silly content -->
    
	
      <h3><a name="2009-03-28" href="#2009-03-28">
          <font color="#660000">2009-03-28</font></a></h3>
   	

	<div class="posts">
    <a name="3785359505739520712"></a>
    
     <h2><font color="#000080"><!-- 2004-09-02 -->
	 
	 Software: Rust Never Sleeps
	 </font>
     </h2>
    

	<p>
    <div style="clear:both;"></div><div style="padding-bottom: 0px; margin: 0px; padding-left: 0px; padding-right: 0px; display: inline; float: none; padding-top: 0px" id="scid:0767317B-992E-4b12-91E0-4F059A8CECA8:0166e75f-9bba-42ec-9ccc-383d5a9fa561" class="wlWriterEditableSmartContent">Technorati Tags: <a href="http://technorati.com/tags/Office+2003" rel="tag">Office 2003</a>, <a href="http://technorati.com/tags/Windows+XP" rel="tag">Windows XP</a>, <a href="http://technorati.com/tags/end+of+support" rel="tag">end of support</a>, <a href="http://technorati.com/tags/software+obsolescence" rel="tag">software obsolescence</a>, <a href="http://technorati.com/tags/Document+Freedom" rel="tag">Document Freedom</a>, <a href="http://technorati.com/tags/interoperability" rel="tag">interoperability</a>, <a href="http://technorati.com/tags/open+standards" rel="tag">open standards</a></div> <p>[My favorite track from that album has always been <a href="http://en.wikipedia.org/w/index.php?title=Hey_Hey,_My_My_(Into_the_Black)&amp;oldid=273212527" target="_blank">Hey, Hey, My, My (Into the Black)</a>.&nbsp; Now I can replace that long-lost LP track <a href="http://www.amazon.com/s/ref=nb_ss_dmusic?url=search-alias%3Ddigital-music&amp;field-keywords=&quot;Rust+Never+Sleeps&quot;" target="_blank">here</a>, but the MP3 resampling seems to lose the beauty that I found in the carefully-crafted overdrive and tonalities of the original.]</p> <p>When it comes to technology, I tend to be a late adopter, despite the Tablet PC running Windows 7 beta just off to the right on my desk.&nbsp; Or maybe I am a sporadic adopter.</p> <h3>Old Software Never Dies, It Just Quietly Rusts Away</h3> <p>In September 2008, I retired my last desktop machine still running Windows 98.&nbsp; It had Office 2000 also.&nbsp; The biggest concern was moving all of its peripherals and exotic software to my Media Center PC with Windows XP SP3.&nbsp;&nbsp; With that accomplished, I managed to rearrange my systems and introduce a Windows Home Server.&nbsp; The WHS (an HP MediaSmart Server) had been sitting in its box for over a year while I nerved up for those changes.&nbsp; The WHS is based on Windows Server 2003, not anything more recent.</p> <p>My <a href="http://orcmid.com/blog/2009/03/productivity-cleaning-up-workspace.asp" target="_blank">oldest machine</a> is still the 1998-vintage Dell Inspiron 7000 laptop that, shipped with Windows 98, now runs Windows XP SP3 and remains a faithful little web-site development machine with its local IIS, FrontPage extensions, and Visual SourceSafe.&nbsp; I am looking into a progression by which I incrementally move and confirm those functions on the Windows Home Server.&nbsp; Then I can retire the Inspiron before it finally succumbs to entropy death.</p> <p>Since every production desktop machine in this 4-computer + server SOHO operation is running Windows XP SP3 and, if used for e-mail and documents, Microsoft Office 2003, I am moderately concerned that those software products are now at their end-of-support time limits in April, 2009.&nbsp; (The Tablet PC normally runs Vista and even has Office 2007, but for now it is running Windows 7 beta for my evaluation purposes.&nbsp; I expect to restore Vista at some point after the Windows 7 Release Candidate arrives and then expires.)</p> <p>I am not overly concerned.&nbsp;&nbsp; As indicated <a href="http://blogs.technet.com/office_sustained_engineering/archive/2009/03/27/office-2003-to-leave-mainstream-support-phase.aspx" target="_blank">here</a>, security updates (including Outlook junk-mail filter updates) will continue to be available for Office 2003.&nbsp; <a href="http://support.microsoft.com/lifecycle/?LN=en-us&amp;x=19&amp;y=11" target="_blank">In general</a>, there will be security fixes and on-line self-help available out another five years here in the United States.</p> <p>I have no plans to update production work off of Windows XP SP3 and Office 2003.&nbsp; That can change, but I have another five years to sort it all out.&nbsp; A great deal will depend on future support for peripheral equipment and compatibility with the Windows Home Server and the way I develop and maintain web sites.</p> <p>While my frugality around upgrading is not heartening for PC manufacturers, software companies, or the automobile industry (having kept my last vehicle for 18 years), I think it is representative of the general tendency to not fix things that are not broken.&nbsp; It is also an useful reminder that a system lifecycle for its users is quite different than it is for its suppliers.</p> <h3>Freedom for Rusty Documents?</h3> <p>At the same time, I know that I need to look at the degree to which my documents and digital materials are preserved beyond the life of Office 2003, FrontPage 2003 (RIP), Visio whatever, OpenOffice 2.4, Nikon Capture, etc.&nbsp; How “<a href="http://nfoworks.org/diary/" target="_blank">free</a>” are my documents, and how much are they truly mine?</p> <p>I already have the Microsoft Office Compatibility Pack and its support for the OOXML formats as an Office 2003 add-on.&nbsp; I suspect that OOXML will be supported for a very long time.&nbsp; I am not so sanguine about the ODF documents that I have, especially the ones in OpenOffice.org Calc format.&nbsp; I am going to be more cautious about that, at least until I have an useful set of tools for ensuring the preservation of recoverability of documents in both original OOXML and ODF 1.0/1.1 formats.</p> <p>But eventually, I will run out of gas on my Windows XP SP3 systems, and I’ll probably be looking at hardware and software of the Windows 7 (or later) vintage.&nbsp; Having all of the ducks lined up will involve the hardware (scanners, audio gear, displays, and printers) that I want to preserve and also figuring out how to upgrade/replace application software with products that still let me do what works and also use the formats and documents that I am invested in.&nbsp; I have to gulp when I think of all of the photographic images that are in today’s version of Nikon NEF format, all of the web pages authored and maintained via the now-obsolete FrontPage extensions, and the many documents of one format and another stashed in today’s version of Zip files (and some in old ARC files, remember ARC?).</p> <p>That I will leave documents of one form or another behind like so many dried leaves is not confidence-inspiring.&nbsp; An additional concern is that I don’t see the champions of open document formats (not to mention “Free Documents”) doing what it takes to make me more confident than I am in Microsoft’s assurance that upgrading is safe for our documents and software (though, ultimately, upgrade we must).</p> <p>I will soldier on, wondering what <a href="http://nfoworks.org/nfoWorks.htm" target="_blank">is in my power</a> to alleviate my concern.</p>  <div style="clear:both; padding-bottom:0.25em"></div><p class="blogger-labels">Labels: <a rel='tag' href="http://orcmid.com/blog/labels/interoperability.asp">interoperability</a>, <a rel='tag' href="http://orcmid.com/blog/labels/trustworthiness.asp">trustworthiness</a></p>
    </p>
	<span class="byline">posted by orcmid 
       at <a href="http://orcmid.com/blog/2009/03/software-rust-never-sleeps.asp">3/28/2009 01:50:00 PM</a></span>
	  
         <!-- 2004-05-10 -->
		<div class="blogComments">
			&nbsp;<br /><b><i>Comments:</i></b><!-- 2004-10-04 -->  
			
	    <a class="comment-link" href="https://www.blogger.com/comment.g?blogID=3896669&postID=3785359505739520712">Post a Comment</a>
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
           <img border="0" src="http://orcmid.com/images/hardhat-logo.gif" 
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
          $$Date: 09-08-22 16:04 $<br />
          $$Revision: 1 $</em></small></small></p>
     </td>
</tr>
</table>

</div>

</body>
</html>