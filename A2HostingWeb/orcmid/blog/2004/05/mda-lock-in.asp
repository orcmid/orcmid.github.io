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
        <!--$$Header: /A2HostingWeb/orcmid/blog/2004/05/mda-lock-in.asp 4     26-03-22 14:09 Orcmid $-->
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
	<a href="/orcmid/blog/lair-chive.asp"><b>Archives</b><a><br>
	<!-- 2002-11-11 Remove insertion of script because I messed it up.  Link to page instead. 
              2004-05-10 Make root-relative to deal with occurence in post subfolders -->
	<br>
        <a href="http://nfocentrale.net/orcmid/blog/lair-atom.xml" target="_top"><img border="0" src="/orcmid/blog/atom-feed.bmp" alt="Click for Atom feed"></a>
            <!-- 2004-05-10-20:44 Turn on the Atom button alternate label -->
        <br>
        <a href="http://nfocentrale.net/orcmid/blog/lair-atom.xml" title="Atom feed">Atom Feed</a>
        <!-- 2004-01-31 Add atom Feed link --><!-- 2004-05-02 Tidy up, add image -->
        <br><br>

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
	
    	<h2><a name="2004-05-20" href="#2004-05-20"><font color="#660000">2004-05-20</font></a></h2>
   	

	<div class="posts">
	<a name="108507455574554241">&nbsp;</a><br>
	<h3>MDA Lock-In?</h3><a href="http://blogs.msdn.com/michael_platt/archive/2004/05/20/135750.aspx">Modelling and MDA</a>&nbsp; Michael Platt recommends Dan Haywood's <a href="http://www.theserverside.com/articles/article.tss?l=MDA_Haywood">MDA: Nice Idea, Shame About the ...</a> article, and the related discussion thread.&nbsp; I don't think the arguments against the importance of MDA model durability are all that strong (and Microsoft COM is not as old as Haywood suggests, though his point about platform and infrastructure longevity is well-taken).<br /><br />Something that I find peculiar about current MDA products, though is the fact that they generate vendor lock-in, just as source-code CORBA bindings do.&nbsp; Duhhh?<br /><br />I remember how, at one stage in the 1994-1996 work to combine Document Enabled Networking and Shamrock into the Document Management Alliance (DMA) specification, that one of the main partners lobbied us strongly to adopt SOM and DSOM as the distributed-object layer.&nbsp; All we kept saying was, where's the binary interface?&nbsp; We were talking about an interoperability world into which vendors wanted to ship binaries.&nbsp; At that time, you couldn't do that with CORBA unless you locked into a binding and ORB implementation.  With COM we knew we had it already and, although the DMA model that emerged wasn't that great for developers, it did deal with interoperability as far as the integration model was concerned.  (We also did it in a way that did not require us to host any Microsoft infrastructure or libraries.)<br /><br />It looks like MDA, as an enterprise-focused tool, has the usual problem about whose MDA you choose to use and how far you will travel with it as MDA is used to target applications across varieties of (distributed) configurations.&nbsp; The problem is that the mapping from Platform Independent Models to Platform Dependent Models and the realization of Platform Dependent Components to provide smooth enactment of your model is serious black art.&nbsp; Something more transparent and open is needed at the design rules and component-introduction level to shake off this new model being just like the old model.<br>
	<span class="byline">posted by Dennis at <a href="http://nfoCentrale.net/orcmid/blog/2004/05/mda-lock-in.asp">5/20/2004 10:35:03 AM</a></span>
	  
                  <!-- 2004-05-10-14:47 -0700 Include comments within my template and see if I can get it working properly -->  
		<div class="blogComments">
			Comments:  
			
			<a href="http://www.blogger.com/comment.g?blogID=3896669&postID=108507455574554241">Post a Comment</a>
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
$$Date: 26-03-22 14:09 $<br>
$$Revision: 4 $</em></font></p>
      </td>
    </tr>
  </table>
</td>
</tr>
</table>
</div>

</body>
</html>