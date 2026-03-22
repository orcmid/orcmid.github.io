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
        <!--$$Header: /A2HostingWeb/orcmid/blog/2004/06/if-it-says-libbys-libbys-libbys-on.asp 5     26-03-22 14:10 Orcmid $-->
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
	<a name="108623698227350178">&nbsp;</a><br>
	<h3>If It Says Libbys Libbys Libbys on the Label Label Label ... That's Not an Identifier!</h3>.&nbsp; I uttered that expression in a giddy moment in the early 1970's when we were attempting to introduce identifiers for some purpose into some then-called middleware software.&nbsp; I can no longer remember why we cared and whether I thought there to be some profound truth captured in my exclamation.<br /><br />And the business of fretting about identifiers lives on.&nbsp;  A number of folk are working over (or under) Mark Pilgrim's recent "<a href="http://diveintomark.org/archives/2004/05/28/howto-atom-id">How to make a good ID in Atom</a>."&nbsp; I have my two-bits worth.<br /><br /><strong>There's this thing about identifiers</strong>.&nbsp; Like, exactly what is an identifier?&nbsp; On the web it usually means a globally-unique identification for some entity, such as a resource or an element or a blog entry or something else entirely, very large or very small, tangible or not, electronic or not.&nbsp; It is often affixed to or transported with an entity -- a data unit of some sort -- and can often be used to access it, if known.&nbsp; It might be regarded as metadata.&nbsp; Or not.&nbsp; The entity that is distinguished by an identifier might be immutable or not (as when a web page, uniquelly identified, changes).&nbsp; Does the identity remain fixed if the entity moves around, or are different copies each uniquelly identified for their different instances?&nbsp; Are there multiple kinds of identity?&nbsp; Inquiring minds want to know.&nbsp; At some point, we all begin to squirm, throw up our hands, thrust a stake into the ground, and declare exactly what it is we are identifying and how.&nbsp; And nothing else.&nbsp; Period.&nbsp; Go somewhere else for that philosophical crap.&nbsp; Take it to the Semantic Web.&nbsp; <em>Please</em>.&nbsp; It doesn't take much devil's advocacy to overload and topple over any proposed identification scheme.<br /><br />The still-sane among us proceed to introduce rules for identifiers and vow to keep it simple.&nbsp; Deeper problems can be solved later.&nbsp; Maybe.<br /><br /><strong>By globally-unique</strong> is meant that the same identification will never be used by mistake for distinct entities.&nbsp; The reverse problem of having more than one globally-unique identification for the same entity is considered not so weighty, mostly to avoid backsliding into the tarpit of "what do we mean by the same entity?"<br /><br /><strong>The avoidance of identification collisions</strong> is often accomplished by using some centralized issuance mechanism like that for <a href="http://www.BookCrossing.com">BookCrossing identifiers</a> or International Standard Book Numbers, or international telephone numbers (a hierarchical but, for you and I, centralized authoritarian system).  <br /><br /><strong>In cyberspace there is a preference for decentralized mechanisms</strong> that allow people to fabricate unique identifications to their heart's content without having to rely on any issuing authority quite so much.&nbsp; One way is to start with a single globally-unique identifier -- <strong>the seed element</strong> -- that one already happens to have some exclusive authority for using.&nbsp;  Adopt that as the basis for fabricating more identifications by concatenating with additional qualifiers of some sort that you will never duplicate.&nbsp;  Use a list of already-used elements or a counter or a clock or some other reliable technique.&nbsp;  You now have a family of globally-unique identifiers that will not collide with others produced using the same principle but different seed element. <br /><br /><strong>A key requirement of decentralized schemes</strong> is agreement on the scheme and agreeing on the seed or a way to identify which one of several schemes might be used.&nbsp; That, of course, is what all the fuss is about.<br /><br /><a href="http://diveintomark.org/archives/2004/05/28/howto-atom-id">Mark Pilgrim addresses the creation of Atom IDs for Atom elements</a>.&nbsp; It's a nice read.&nbsp; The IDs must be <strong>unchanging, globally unique URIs</strong>.&nbsp; URI (Uniform Resource Identifier) schemes are governed by IETF specifications and a variety of URI flavors can be used to ensure global uniqueness using techniques of the kind I mentioned above.&nbsp; Mark provides links to the relevant specifications. <br /><br />The Atom specification allows any URI that does the job.&nbsp; This happens in many W3C and IETF specifications where globally-unique identification is required, as in identifying XML Namespaces.&nbsp; Mark goes on to address good choices for ensuring the "unchanging" aspect and also avoiding using a URI that might be used for a different and possibly changing purpose (such as the permalink of a blog entry).<br /><br />Finally, Mark mentions one URI scheme that one can use as-is provided that you have something like a domain name or email address that you are willing to use as the seed. Mark also warns against URN (Uniform Resource Name) schemes because of registration difficulties that don't provide easy decentralization.<br /><br />It's all clear enough.&nbsp; You can (and might) start using the tag URI scheme at once, if you are that trusting in its not-yet-official adoption.<br /><br /><a href="http://www.tbray.org/ongoing/When/200x/2004/05/28/LinksAndGuids">Tim Bray chimes in</a> that he is not that trusting of the unapproved and possibly-never-to-be-approved tag-URI scheme that Mark favors.&nbsp; Tim suggests an alternative already-open-ended and already-registered URN scheme that might serve as well.&nbsp; That's all fine, there is room for this kind of flexibilty in choosing an unchanging, globally-unique URI scheme, and we don't all have to choose the same one because they can be comingled without collision.<br /><br />Where Tim takes greater exception is with Mark's injunction to avoid using the permalink -- the permanent location, a URL (Uniform Resource Locator) -- as the unchanging, globally-unique URI.&nbsp; I accept Mark's injunction on first principles.&nbsp; I want an identifier to be just the identifier it is intended to be and have no other job. <br /><br />Tim's proposal is unnecessarily brittle unless what one does is use the <em>original</em> permalink as the unchanging, globally-unique URI and never  attempts to derive the Atom ID at future times based on (current) permalink URL.&nbsp; One might handle this on an exception basis, but the requirement is clear: Either arrange to never change a permalink or arrange to allow the permalink and Atom ID to be different at some future time.<br /><br />Tim's observations are useful and workable.&nbsp; Tim makes great arguments for never (as in never say never) changing permalinks.&nbsp; I bend over backwards to do that on web sites: If I've given out a URL, I don't know who may have bookmarked it and I want to preserve incoming links.&nbsp; (That's why this blog uses *.asp permalinks, even though there is no server-side ASP processing at the moment.  It's a cheap way to get redirects if I ever need to make one.)&nbsp; I also want permalink impermanence to be a different problem not overloaded on the Atom ID (or other ID).&nbsp; Now, we are still working within the Atom requirement for an unchanging, globally-unique URI, and I can have my druthers, and Tim can have his.  (Of course, I also want my web sites to work when replicated on CD-ROMs and that means the permalinks are best generated from relative URLs and there, well, the brittleness bites.)<br /><br />There is another architectural principle or two to add here.&nbsp; The most important one is that one should not create a brittle arrangement that is too subtle and easy for future developers to forget or never notice.&nbsp; There's a secondary and useful architectural-durability principle that I was shown by Dick Wilson as long ago (early 1970s) in a different context: Choose the approach that is the easiest to change in the future.   <br /><br /><a href="http://dannyayers.com/archives/2004/05/29/atom-ids/">Danny Ayres notices Mark's Comments and Tim's Response</a>.&nbsp; It is recognized what is at issue, and something in a <a href="http://www.burningchrome.com:8000/~cdent/mt/archives/000276.html">trackback from Chris Dent</a> has me wonder about context.&nbsp; What about context here?&nbsp; It is certainly desirable that permalinks be permanent, so is the scope of that desire the same as for the Atom ID?&nbsp; I think it depends on the use case, and mine about wanting mirrors on CD-ROMs that work means the permalink isn't that permanent or else isn't all that unique as an usable link.&nbsp; Whatever.<br /><br />Of course, now purple numbers come into the conversation, and I am not going to go down that road here, unless someone tells me that Atom proposes to satisfy the requirements for Englebart's Open Hypertext System (OHS).<br /><br />Meanwhile, as Danny points out, <a href="http://www.dehora.net/journal/2004/05/atom_and_cool_uris_dogma_idealism_expediency.html">Bill de hÓra strikes a new balance</a>.&nbsp; There's nothing very permanent about URLs based on domain names, and so we need to rethink the Atom ID URI candidates.&nbsp; <br /><br />It seems that the semi-permalink needs to be a URL simply because it is supposed to be a way to locate the entry.&nbsp; It now looks to me that a UUID-based URI is more valuable as an identifier of the Atom ID sort.&nbsp; Those come from the permanent ID in my network interface card, and I can arrange to destroy that puppy if I ever stop using it.&nbsp; Whether or not I do that, the UUIDs that I generate while I have the card are ones that will never be generated again.<br /><br />And this may still be beyond context for Atom IDs.<blockquote><dl><dt><em>Listening to:</em></dt><dd><strong>Teddy Wilson, Benny Carter, Red Norvo, Louis Bellson, Remo Palmier, George Duvivier, Freddie Green</strong> <em>Swing Reunion</em>, Disc No. 1.&nbsp;  Digitally-recorded CD, Book-of-the-Month Records (1985).&nbsp;  Listening on Media Player 9</dd></dl></blockquote><br>
	<span class="byline">posted by orcmid at <a href="http://orcmid.com/blog/2004/06/if-it-says-libbys-libbys-libbys-on.asp">6/2/2004 09:29:14 PM</a></span>
	  
                  <!-- 2004-05-10-14:47 -0700 Include comments within my template and see if I can get it working properly -->  
		<div class="blogComments">
			Comments:  
			
			<a href="http://www.blogger.com/comment.g?blogID=3896669&postID=108623698227350178">Post a Comment</a>
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