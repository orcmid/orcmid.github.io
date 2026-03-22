<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- 2004-05-10-20:47 -0700 Update to work with new commentable posts setup --->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Language" content="en-us">
<!-- 2004-02-04-17:22 Add content-type and content-language information to see what that improves -->
	<title><$BlogTitle$></title>
        <!-- 2002-10-31: Template modification adventures
             Add a configuration management stamp and set a default target that works for blogging the blog. -->
        <!--$$Header: /MiserCompagno/astraendo/pn/pn.template.asp 7     04-06-01 1:03 Orcmid $-->
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
	<td colspan="2" bgcolor="#aaaaaa" height="65" valign="bottom"><div class="blogtitle"><b><a href="http://miser-theory.info" target="_top"><img border="0" src="/miser/images/omisertheory-logo.gif" alt="The Miser Project" width="105" height="72"></a>&nbsp;&nbsp;    
        <a target="_top" href="/miser/astraendo/pn/"><$BlogTitle$></a></b></div></td>
</tr>
<tr>
	<td bgcolor="#cccccc" width="150" valign="top" align="right">
<br>
	<div class="posts">
        <BlogItemTitle>
        </BlogItemTitle>
	<$BlogDescription$><br>
	<br>
<div class="links">
    <a href="/miser/astraendo/pn/pn-chive.asp"><b>Archives</b></a><br>
	<!-- 2002-11-11 Remove insertion of script because I messed it up.  Link to page instead. 
              2004-05-10 Make root-relative to deal with occurence in post subfolders -->
	<br>
    <a href="<$BlogSiteFeedUrl$>" title="Atom feed"><img border="0" src="/miser/astraendo/atom-feed.bmp" alt="Click for Atom feed"></a> 
            <!-- 2004-05-10-20:44 Turn on the Atom button alternate label --> 
        <br>
    <a href="<$BlogSiteFeedUrl$>" title="Atom feed">Atom Feed</a> 
        <!-- 2004-01-31 Add atom Feed link --><!-- 2004-05-02 Tidy up, add image --> 
        <br><br>

</div>
<!-- 
   In accordance to the Blogger terms of service, please leave this button somewhere on your blogger-powered page. 
   Thanks!
-->	
	<a href="http://www.blogger.com/"><img src="http://buttons.blogger.com/bloggerbutton1.gif" width="88" height="31" border="0" alt="This page is powered by Blogger. Isn't yours?"></a>
        <p><b>Associated Blogs</b><br>
        <a href="http://edge_city.blogspot.com/">Edge City</a><br>
        <a href="http://www.praxis101.com/blog/">Orcmid's Lair<br>
        Praxis101</a>
	</div></td>
	<td bgcolor="white">
<Blogger>  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	<BlogDateHeader>
    	<h2><a name="<$BlogDateHeaderDate$>" href="#<$BlogDateHeaderDate$>"><font color="#660000"><$BlogDateHeaderDate$></font></a></h2>
   	</BlogDateHeader>

	<div class="posts">
	<a name="<$BlogItemNumber$>">&nbsp;</a><br>
	<$BlogItemBody$><br>
	<span class="byline">posted by <$BlogItemAuthorNickname$> at <a href="../%3c$BlogItemPermalinkURL$%3e"><$BlogItemDateTime$></a></span>
	<BlogItemCommentsEnabled>        
                  <!-- 2004-05-10-14:47 -0700 Include comments within my template and see if I can get it working properly -->        
		<div class="blogComments">
			Comments:        
			<BlogItemComments>
			<div class="blogComment">
				<a name="<$BlogCommentNumber$>"></a> 
				<$BlogCommentBody$><br />
				<div class="byline"><a href="<$BlogCommentPermalinkURL$>" title="permanent link">#</a> posted by <$BlogCommentAuthor$> : <$BlogCommentDateTime$></div>
                <$BlogCommentDeleteIcon$>
			</div>
			</BlogItemComments>
            <$BlogItemCreate$>
		</div>
	</BlogItemCommentsEnabled>
	</div>
</Blogger>

	<!-- 2002-10-31 Removing some unnecessary space.
             I deleted the links entry that had a home link.  It doesn't add anything in my case. -->
	<!-- 2002-10-31 Just one more little change.  Moved it to white background where works better.
             Add the classy construction footer that I use on key entry pages of nfoCentrale.net sections -->
  <table border="0" cellspacing="3" width="100%">
    <tr>
      <td width="31%"><font size="-2"><a href="/miser/astraendo/pn/index.htm" target="_top"><img border="0" src="/miser/images/hardhat-logo.gif" alt="Hard Hat Area" align="left" width="80" height="57"></a></font></td>
      <td width="28%" valign="middle" align="center">
        <small><small><b>You are navigating the</b> <a href="/miser"> Miser Project</a></small></small></td> 
      <td width="41%">

<p align="right"><font size="-2">created 2004-05-31-22:34 -0700 (pdt) by </font><small><small> <a href="/miser/construction/orcmid.htm">orcmid</a></small></small><font size="-2"><br>
<em>$$Author: Orcmid $<br>
$$Date: 04-06-01 1:03 $<br>
$$Revision: 7 $</em></font></p>
      </td>
    </tr>
  </table>
</td>
</tr>
</table>
</div>

</body>
</html>