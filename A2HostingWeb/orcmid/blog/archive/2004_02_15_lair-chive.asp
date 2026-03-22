<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Language" content="en-us">
<!-- 2004-02-04-17:22 Add content-type and content-language information to see what that improves -->
	<title>Orcmid's Lair</title>
        <!-- 2002-10-31: Template modification adventures
             Add a configuration management stamp and set a default target that works for blogging the blog. -->
        <!--$$Header: /A2HostingWeb/orcmid/blog/archive/2004_02_15_lair-chive.asp 7     26-03-22 14:12 Orcmid $-->
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
	<a href="../lair-chive.asp"><b>Archives</b><a><br>
	<!-- 2002-11-11 Remove insertion of script because I messed it up.  Link to page instead. -->
	<br>
        <a href="http://orcmid.com/blog/lair-atom.xml" title="Atom feed">Site Feed</a>
        <!-- 2004-01-31 Add atom Feed link -->
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
	
    	<h2><a name="2004-02-21" href="#2004-02-21"><font color="#660000">2004-02-21</font></a></h2>
   	

	<div class="posts">
	<a name="107740069108695617">&nbsp;</a><br>
	<h1>Software Engineering</h1><h2>Dependable Systems Development</h2><h3>Research activities</h3>Here's a great find that came out of my <a href="http://nfocentrale.net/orcmid/blog/2004_02_15_lair-chive.asp#107738216244314285">explorations earlier today</a>.<br /><br /><a href="http://www.dirc.org.uk/">DIRC</a>.  This is the Interdisciplinary Research Collaboration in Dependability (so how come the letters are rearranged in DIRC?).  This is an exciting site.  The research <a href="http://www.dirc.org.uk/research/default.htm">activities</a> cover topics like trust, reliability, organizational culture, and so on.  Some of the activities have been concluded, and I will see what more there is on those, such as <a href="http://www.dirc.org.uk/research/activities/description.php?pa=2">Organizational Structure and Trust</a> (with Ian Sommerville), <a href="http://www.dirc.org.uk/research/activities/description.php?pa=3">Deployment and Evolution</a> (involving Stuart Anderson, Donald MacKenzie, and Denis Bernard -- whoa, this is getting exciting), <a href="http://www.dirc.org.uk/research/activities/description.php?pa=5">Open Source Software</a>, and <a href="http://www.dirc.org.uk/research/activities/description.php?pa=8">Collaboration (that is, Group Process) in Dependable Software</a>.  These activities are described as now closed and I want to find out what was produced.  Meanwhile, there are activities still open on decision support for dependability, security and privacy, and dependable service-centric grid computing.  (I omitted ubiquitous computing in the home because I don't yet believe in it.)<br>
	<span class="byline">posted by Dennis at <a href="#107740069108695617">Saturday, February 21, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107738276211825967">&nbsp;</a><br>
	<h1>Computing Milieux</h1><h2>Coping in Cyberspace</h2><h3>Using SMTP to Curb Spam</h3><a href="http://www.acm.org/technews/articles/2004-6/0220f.html#item16">ACM News Service</a>.&nbsp; This blurb about a New Scientist article [Celest Biever on p.26 of vol. 181, 2433 (2004-02-07)] seems to contradict other news about the approaches being considered.&nbsp; This may be what the IETF proposals are based on -- Yahoo!'s Domain Keys protocol and Lightweight Message Access Protocol (LMAP).  What these do is tie messages (and the From:) to a domain and confirm that domain and the sender.<br /><br />I have a personal concern and that is for the portability of my e-mail address and being able to "send from" an address which is my forwarded address and the one my X.509 signature is tied to.  But I send from where I can send.  There is no spoofing involved, and my forwarder actually provides no way for me to be an SMTP sender from their domain.  It only handles mail to me.&nbsp; I guess I need to ask ACM what they are going to do to support people with their affinity address, @acm.org, be bona fide senders as well as recipients.<br>
	<span class="byline">posted by Dennis at <a href="#107738276211825967">Saturday, February 21, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107738216244314285">&nbsp;</a><br>
	<h1>Software Engineering</h1><h2>Psychological Barriers to Good Product Validation?</h2><h3>News from a related discipline</h3>The following articles may be very important for their insight into the difficulties of disciplined software engineering and also appropriate testing, verification, and most-of-all, validation.&nbsp; It would be good to contact these blokes and find out if the connection has been recognized.<br /><br />I am searching for Denis Besnard, one of the authors of this work.  He participated in a discussion of <a href="http://doi.acm.org/10.1145/508791.508933">interdisciplinary lessons for software engineering</a> in 2002.  The business about <a href="http://portal.acm.org/citation.cfm?id=323826.323828&dl=GUIDE&dl=ACM&CFID=17194480&CFTOKEN=41903243">expert errors in trouble-shooting</a> has been under investigation since 1999.&nbsp; I definitely want to know more.<br /><br />I found <a href="http://homepages.cs.ncl.ac.uk/denis.besnard/home.formal/">Besnard on the Web</a>, and he is definitely interested in software reliability.&nbsp; I must assume that the findings about mental barriers being applicable.  I am sending an e-mail inquiry.<br /><br /><a href="http://www.trnmag.com/Stories/2004/021104/Coincidences_set_up_mental_error_021104.html">Coincidences set up mental error TRN 021104</a>.&nbsp; Here's Kimberly Patch's Technology Research News article on the problems of mental model shortcuts and their errors.<br /><br />"The researchers are currently looking at the conditions under which operators can lose their grasp on a situation, said Besnard."<br /><br />This work is being applied to aircraft safety and cockpit design as well as flight-crew procedures.  <br /><br />As I said, I think this may be very useful in regard to software engineering.<br /><br />The key research is reported here:<br /><br />"Besnard's research colleagues were David Greathead at the University of Newcastle upon Tyne and Gordon Baxter of the University of New York in England. The work appeared in the January, 2004 issue of the International Journal of Human-Computer Studies. The research was funded by the UK Engineering and Physical Sciences Research Council (EPSRC). <br /><br />"Timeline:   5-10 years <br />"Funding:   Government <br />"TRN Categories:  Human-Computer Interaction<br />"Story Type:   News <br />"Related Elements:  Technical paper, 'When Mental Models Go Wrong: Co-Occurrences in Dynamic, Critical Systems,' International Journal of Human-Computer Studies, January, 2004"<br /><br>
	<span class="byline">posted by Dennis at <a href="#107738216244314285">Saturday, February 21, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107738186115466905">&nbsp;</a><br>
	<a href="http://www.acm.org/technews/articles/2004-6/0220f.html#item11">ACM News Service - Coincidences Set Up Mental Error</a>.&nbsp; This is an interesting blurb on some characteristics of human cognitive behavior.&nbsp; Although the case is not mentioned, this seems extremely valuable and applicable to software development and the prevention, detection, and mitigation of bugs.&nbsp; The automatic mental error seems pronounced in software development, especially around confirmation testing.<br>
	<span class="byline">posted by Dennis at <a href="#107738186115466905">Saturday, February 21, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107738154888696983">&nbsp;</a><br>
	<h1>Programming Languages</h1><h2>JIT and Virtual Machine Processors</h2><h3>Perl 6 and Parrot</h3><br /><br /><a href="http://www.parrotcode.org/">parrot - Parrot</a>.&nbsp; There's a domain for Parrot code development.  Parrot 0.0.10 is current (that tells you something), and there is a working IL assembler, a JIT and some basic types.&nbsp; I have learned that Parrot creates a register-machine model and has an (Artistic|GPL) license that is GPL compatible.&nbsp; These are all reasons to look closer.&nbsp; This is automatically a potential target for oMiser and oFrugal, for starters.&nbsp; The absence of reference-counting will be an interesting challenge.<br>
	<span class="byline">posted by Dennis at <a href="#107738154888696983">Saturday, February 21, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107738109797167947">&nbsp;</a><br>
	<a href="http://www.newsfactor.com/story.xhtml?story_title=Perl_s_Extreme_Makeover&story_id=23197">NewsFactor Network - Enterprise - Perl Gets Extreme Makeover</a>.&nbsp; Here's Vincent Ryan's 2004-02-18 NewsFactor Network article, with many links and useful background.<br>
	<span class="byline">posted by Dennis at <a href="#107738109797167947">Saturday, February 21, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107738098987188573">&nbsp;</a><br>
	<a href="http://www.acm.org/technews/articles/2004-6/0220f.html#item6">ACM News Service - Perl's Extreme Makeover</a>.&nbsp; The major changes in Perl 6 and the use of Parrot are something to keep an eye on.&nbsp; Parrot was an April Fool's Day announcement between Guido (Python) and Larry (Perl) as I recall.  It looks like there is now beef, and something to look at, especially the safety of the object model and the engine.<br>
	<span class="byline">posted by Dennis at <a href="#107738098987188573">Saturday, February 21, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107735245250485547">&nbsp;</a><br>
	<h1>Network Protocols</h1><h2>Analysis and Monitoring</h2><h3>Packet Sniffing</h3>I have been despairing that I could figure out how to observe anything working at the protocol internals level from my Windows XP setup.&nbsp; I know there are ways to do it, but I didn't want to buy any $2000 commercial package, and I was having dismal results with the few utilities I found on my configuration (though there may be many I didn't find), some open-source downloads, and some shareware trials.&nbsp; Today, 2004-02-21, I began to have great success, and it is with these packages: WinPcap, WinDump, and Ethereal.  I am getting results and it is starting to make sense.&nbsp; I'm so excited. ...<br /><br /><a href="http://windump.polito.it/">WinDump: tcpdump for Windows</a>.&nbsp; Here's the WinDump page.<br>
	<span class="byline">posted by Dennis at <a href="#107735245250485547">Saturday, February 21, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107735238105238359">&nbsp;</a><br>
	<a href="http://winpcap.polito.it/misc/faq.htm">WinPcap FAQ</a>.&nbsp; Some important things to watch out for.&nbsp; There may be firewall interference.&nbsp; We'll have to see.  Also, we will want to run WinPdump to see if the adapter is being found.<br>
	<span class="byline">posted by Dennis at <a href="#107735238105238359">Saturday, February 21, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107735198419208994">&nbsp;</a><br>
	<a href="http://winpcap.polito.it/">Windows Packet Capture Library</a>.&nbsp; This is the support site for WinPcap, the packet capture architecture for Windows.&nbsp; This is required by Ethereal (and downloadable from the Ethereal site).&nbsp; Here is where there is information on what this is, documentation, etc.<br>
	<span class="byline">posted by Dennis at <a href="#107735198419208994">Saturday, February 21, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107735064289186582">&nbsp;</a><br>
	<a href="http://www.ethereal.com/">Ethereal: A Network Protocol Analyzer</a>.&nbsp; This seems to be the right thing for protocol analysis and also observing packets.<br>
	<span class="byline">posted by Dennis at <a href="#107735064289186582">Saturday, February 21, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	
    	<h2><a name="2004-02-20" href="#2004-02-20"><font color="#660000">2004-02-20</font></a></h2>
   	

	<div class="posts">
	<a name="107733664162358189">&nbsp;</a><br>
	<a href="http://www.simphalempin.com/dev/tcpreen/">TCPreen home page</a>.&nbsp; This TCP re-engineering tool captures TCP data streams on a pass-through basis.<br>
	<span class="byline">posted by Dennis at <a href="#107733664162358189">Friday, February 20, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107732565815942355">&nbsp;</a><br>
	<a href="http://www.utilkit.com/download.htm">UtilKit Inc, Best Windows Utilities</a>.&nbsp; Here's a mildly odd site and I don't know quite what to make of it.  But the utilities may be worthwhile.<br>
	<span class="byline">posted by Dennis at <a href="#107732565815942355">Friday, February 20, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107732475956895835">&nbsp;</a><br>
	<a href="http://www.tamos.com/products/">TamoSoft, Inc. // Products</a>.&nbsp; Here are some network products that look useful too.  I downloaded a trial version of CommView and we'll see how well that goes.<br>
	<span class="byline">posted by Dennis at <a href="#107732475956895835">Friday, February 20, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107732266883339856">&nbsp;</a><br>
	<a href="http://www.networkingfiles.com/PingFinger/pingfinger.htm">NetworkingFiles.com - Ping and Trace Utilities</a>.&nbsp; Here's a giant collection of freeware, shareware, and demoware network utilities<br>
	<span class="byline">posted by Dennis at <a href="#107732266883339856">Friday, February 20, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107732113264515597">&nbsp;</a><br>
	<a href="http://netstat.rightclicked.net/tools.html">./NetStat-----Tools</a>.&nbsp; Here's a source of network tools that may be promising.<br>
	<span class="byline">posted by Dennis at <a href="#107732113264515597">Friday, February 20, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107729787730410918">&nbsp;</a><br>
	<a href="http://news.yahoo.com/news?tmpl=story2&cid=1738&u=/zd/20040220/tc_zd/119687&printer=1">Yahoo! News - ZoneAlarm Bug Bares System To E-Mail Attack</a>.&nbsp; I got a vulnerability summary from US-CERT yesterday and it was amazing how many of the vulnerabilities had nothing to do with Microsoft Systems.&nbsp; Now I am seeing something that does impact me, and I will do the firewall update at once.  Like right now.<br>
	<span class="byline">posted by Dennis at <a href="#107729787730410918">Friday, February 20, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107729738848275982">&nbsp;</a><br>
	<a href="http://news.com.com/2009-7344-5157470.html">Pandora's box for open source | CNET News.com</a>.&nbsp; Here's Martin LaMonica's 2004-02-12 article on the topic.  This is a benchmark page -- I don't have to ask for a printable version to be able to bookmark all of it, and if I wanted to archive it I can scoop it all in one chunk. The sidebars and other goodies are cool too.  Is this a new look for C|net News.Com?<br>
	<span class="byline">posted by Dennis at <a href="#107729738848275982">Friday, February 20, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107729725752140866">&nbsp;</a><br>
	<a href="http://www.acm.org/technews/articles/2004-6/0218w.html#item16">ACM News Service -- Pandora's Box for Open Source</a>.&nbsp; While Microsoft's love-hate relationship with Open Source continues, others are more, uh, ambivalent (thinking of Sun and Apple).&nbsp; This article suggests that business models can work around Open Source, but there is the prospect, by commercial firms, of having open source eat their lunch.  Still, the CEO of MySQL thinks there is room here, and just struck me that it would appear to be at the engineered and enterprise level.  I am not sure how that gets rice and beans on the table of the open-source developer, a very important part of the equation.&nbsp; Lots to think about.<br>
	<span class="byline">posted by Dennis at <a href="#107729725752140866">Friday, February 20, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107729682339104514">&nbsp;</a><br>
	<a href="http://www.boston.com/business/technology/articles/2004/02/16/biology_stirs_software_monoculture_debate?mode=PF">Boston.com / Business / Technology / Biology stirs software 'monoculture' debate</a>.&nbsp; Here's the Justin Pope 2004-02-16 article.&nbsp; There is something useful here about decoupling, such as having Word and lord knows what else snarled up in Microsoft Windows.&nbsp; I don't know if it deals with the monoculture vulnerability, but I think that operating clean separations of concerns and decoupling could help, if only to allow more places/edges for substitution and also upgrading and repair.&nbsp; My remaining concern is for integration models that might become monocultural.  And, after all, there is that x86 under there too.  That doesn't seem to worry us so much, and it would be useful to understand why and where the trustworthy aspect arises, if there really is one.<br>
	<span class="byline">posted by Dennis at <a href="#107729682339104514">Friday, February 20, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107729654208430250">&nbsp;</a><br>
	<a href="http://www.acm.org/technews/articles/2004-6/0218w.html#item7">ACM News Service -- Biology Stirs Software 'Monoculture' Debate</a>.&nbsp; I worried about this sort of thing when everyone was installing the same antivirus software where I worked because there was a corporate license for it.  The possibility of a single exploit or simply a detection failure that impacted all of them was a concern for me, so I ran a different anti-virus on my workstation.&nbsp; Here in my SOHO LAN, all of the machines run the same anti-virus and they will soon all run the same operating system.&nbsp; Bummer.&nbsp; On the other hand, these research activities seem ill-conceived and unmindful of what we have learned about common-mode failures.&nbsp; I think it is going to take more than this.&nbsp; Also, randomizing inessential aspects of an implementation seems just stupid.&nbsp; I worry about this when I think of trust points and other elements of Miser -- both in terms of accomplishing software verification and validation and in terms of being vulnerable to a common exploit or common-mode failure.&nbsp; I want to see diversity with interoperability.&nbsp; Would you like fries with that? ...<br>
	<span class="byline">posted by Dennis at <a href="#107729654208430250">Friday, February 20, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107729620022811760">&nbsp;</a><br>
	<a href="http://www.eweek.com/print_article/0,3048,a=119042,00.asp">New Anti-spam Initiative Gaining Traction</a>.&nbsp; Here's the Dennis Callaghan 2004-02-12 article in eWeek.  There are more links here and more on how this might work.  The trick is to combat spoofing while also providing for people using portable forwarded addresses.  That is my personal itch.  There is more here on following the debate.  <br>
	<span class="byline">posted by Dennis at <a href="#107729620022811760">Friday, February 20, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107729600731892785">&nbsp;</a><br>
	<a href="http://www.acm.org/technews/articles/2004-6/0218w.html#item5">ACM News Service -- New Anti-Spam Initiative Gaining Traction</a>.&nbsp; This news blurb is about SMTP+SPF.  I have a personal concern with regard to using a personal e-mail address that I keep portable (that is, I use it regardless of the SMTP service that I use for sending).  That's my acm.org address.  I don't have a way to send through that domain, and I don't want to lose the ability to still have it be what people reply to and what they see the message as from.  My digital certificates are tied to that e-mail address too.  So I have this selfish interest in how this works out.<br>
	<span class="byline">posted by Dennis at <a href="#107729600731892785">Friday, February 20, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	
    	<h2><a name="2004-02-19" href="#2004-02-19"><font color="#660000">2004-02-19</font></a></h2>
   	

	<div class="posts">
	<a name="107725281885764088">&nbsp;</a><br>
	<a href="http://csdl.computer.org/comp/proceedings/iv/2000/0743/00/07430447abs.htm">Ideograms in Polyscopic Modeling</a>.&nbsp; Here's another Polyscope paper by Karabeg.<br>
	<span class="byline">posted by Dennis at <a href="#107725281885764088">Thursday, February 19, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107725220873207996">&nbsp;</a><br>
	<a href="http://pcp.vub.ac.be/Einmag_Abstr/DKarabeg.html">Dino Karabeg - Polyscopic modelling -</a>.&nbsp; Here's an abstract for a conference on Evolution of Complexity.<br>
	<span class="byline">posted by Dennis at <a href="#107725220873207996">Thursday, February 19, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107725086347572012">&nbsp;</a><br>
	<a href="http://heim.ifi.uio.no/~dino/iid.shtml">Information infrastructure design</a>.&nbsp; Here's another topic of Karabeg's that fits right into <em>Situating XML</em>.  Sonofagun.<br>
	<span class="byline">posted by Dennis at <a href="#107725086347572012">Thursday, February 19, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107725078230875278">&nbsp;</a><br>
	<a href="http://www.ifi.uio.no/forskning/grupper/id/">Informasjonsdesign - Institutt for informatikk, UiO</a>.&nbsp; The topic (in English) is Information Design (ID).&nbsp; This is something for me to hold onto when I move into Data as Information as part of the <a href="http://nfoWare.com/"><strong>nfoWare</strong></a> treatment of <em>Situating Data</em>.<br>
	<span class="byline">posted by Dennis at <a href="#107725078230875278">Thursday, February 19, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107725064542381309">&nbsp;</a><br>
	<a href="http://www.ifi.uio.no/forskning/grupper/id/">Informasjonsdesign - Institutt for informatikk, UiO</a>.&nbsp; The topic (in English) is Information Design (ID).&nbsp; This is something for me to hold onto when I move into Data as Information as part of the <a href="http://nfoWare.com/"><strong>nfoWare</strong></a> treatment of <em>Situating Data</em>.<br>
	<span class="byline">posted by Dennis at <a href="#107725064542381309">Thursday, February 19, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107725046463198549">&nbsp;</a><br>
	<a href="http://heim.ifi.uio.no/~dino/">Dino Karabeg</a>.&nbsp; Well, teaching Qigong and information design should certainly go together, yes?  I am going to look around here for Polyscope.<br>
	<span class="byline">posted by Dennis at <a href="#107725046463198549">Thursday, February 19, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107725038866022233">&nbsp;</a><br>
	<a href="http://www.ifi.uio.no/english/employees/dino.html">Dino Karabeg, Ifi, UiO</a>.&nbsp; Dino Karabet is an associate professor at the University of Oslo, in the Department of Informatics.<br>
	<span class="byline">posted by Dennis at <a href="#107725038866022233">Thursday, February 19, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107725021054976117">&nbsp;</a><br>
	<strong>Polyscope - what an idea</strong>.  I just ran into a talk by Donald Knuth [<em>TUGboat <strong>23</strong></em>, 3/4 (2002), 251]  where he discusses "Polyscope" a concept of Dino Karabeg about looking at things at all levels.  "It's more than a telescope -- it's a polyscope."  This strikes me as what I have in mind for being able to explore a computer system, observe, demonstrate and see many of the levels (of abstraction, often) and Knuth talks about this way as a certain kind of talent that is strong in computer scientists.&nbsp; He mentions this in his lectures on 3:16 and <em>Things a Computer Scientist Rarely Talks About</em>.  <br /><br />What matter right now is that I have a better name than computer macroscope or anything like that for animating computer processing so that it can be inspected, walked through, and so on, and it is a computer polyscope.<br>
	<span class="byline">posted by Dennis at <a href="#107725021054976117">Thursday, February 19, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107722015099032801">&nbsp;</a><br>
	<a href="http://sshdos.sourceforge.net/">SSHDOS - SSH and SCP client for DOS</a>.&nbsp; This is the home page for SSHDOS.  I am not sure that I am up for running this under XP Pro, with 4NT, but I should at least try it.&nbsp; It may also be important to look at what the package was built with (including PUTTY), since that may provide another avenue I can use.<br>
	<span class="byline">posted by Dennis at <a href="#107722015099032801">Thursday, February 19, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	
    	<h2><a name="2004-02-17" href="#2004-02-17"><font color="#660000">2004-02-17</font></a></h2>
   	

	<div class="posts">
	<a name="107708966682452066">&nbsp;</a><br>
	<h1>Information Systems</h1><h2>Web Services</h2><h3>WS Inspection and Discovery</h3>Classmate John O'Dea has been discussing the similarities between Web Services and P2P and that P2P arrangements, such as JXTA, can be carried on HTTP and SOAP.&nbsp; I think this is valuable, and uncovered Web Service Inspection Language (WSIL) and the newly reannounced WS-Discovery specification efforts.  I like the idea of WSIL, which provides for simple discovery, and I have some ideas for dealing with referrals ('Joe sent me').   It is interesting that WS-Discovery uses Internet multicasting to advertise presence.<br /><br /><a href="http://www.webservicesarchitect.com/content/articles/modi01.asp">Web Services Architect : Articles : Do we need WSIL?</a>.&nbsp; Here's a nice discussion and an explanation of the basic WS-Inspection arrangement.<br>
	<span class="byline">posted by Dennis at <a href="#107708966682452066">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107708948620078062">&nbsp;</a><br>
	<a href="http://cvs.apache.org/viewcvs/*checkout*/ws-wsil/java/README.htm">Web Services Inspection Language for Java API - Overview</a>.&nbsp; WSIL4J is a Java class library that can be used to locate and process WS-Inspection documents.<br>
	<span class="byline">posted by Dennis at <a href="#107708948620078062">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107708936119171889">&nbsp;</a><br>
	<a href="http://www.onjava.com/pub/a/onjava/2002/10/16/wsil.html">ONJava.com: An Introduction to WSIL [Oct. 16, 2002]</a>.&nbsp; Here's more on the use of WSIL and its value as a light-weight support for service discovery.<br>
	<span class="byline">posted by Dennis at <a href="#107708936119171889">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107708920851635261">&nbsp;</a><br>
	<a href="http://www.windley.com/2002/10/16.html">Phil Windley | WSIL is RDF for Web Services</a>.&nbsp; Here's a description of WSIL (WS-Inspection Language).<br>
	<span class="byline">posted by Dennis at <a href="#107708920851635261">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107708824590047383">&nbsp;</a><br>
	<a href="http://msdn.microsoft.com/library/en-us/dnglobspec/html/ws-inspection.asp">WS-Inspection</a>.&nbsp; This is a convention for placing XML documents where they can be inspected to learn about supported services.&nbsp; The document could be the target of a link, it could have a known URL, and it could be discovered by inspection of the site or page carrying it.<br>
	<span class="byline">posted by Dennis at <a href="#107708824590047383">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107708620214904631">&nbsp;</a><br>
	<a href="http://msdn.microsoft.com/ws/2004/02/discovery">WS Discovery Specification</a>.&nbsp; This is the official page for the February 2004 edition of the WS-Discovery specification.&nbsp; I find there is another interesting specification here too.<br>
	<span class="byline">posted by Dennis at <a href="#107708620214904631">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107708604081711818">&nbsp;</a><br>
	<a href="http://story.news.yahoo.com/news?tmpl=story&cid=1738&e=1&u=/zd/20040217/tc_zd/119353">Yahoo! News - Microsoft to Release New Web Services Spec</a>.&nbsp; This is the Web-Discovery specification.&nbsp; It allows services that are only periodically available to come and go.&nbsp; I couldn't find an announcement, but there is a February 2004 specification on the MSDN site.<br>
	<span class="byline">posted by Dennis at <a href="#107708604081711818">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107706163379453523">&nbsp;</a><br>
	<h1>Mathematical Logic</h1><h2>Set Theory</h2><h3>The Burali-Forti Paradox</h3>I ran into use of this and realized I didn't know which paradox it is.&nbsp; I see that it is a very interesting one.<br /><br /><a href="http://mathworld.wolfram.com/Burali-FortiParadox.html">Burali-Forti Paradox -- from MathWorld</a>.&nbsp; Here's a nice, clean presentation of the Burali-Forti paradox:<br /><br />Eric W. Weisstein. "Burali-Forti Paradox." From <a href="http://mathworld.wolfram.com/">MathWorld</a>--A Wolfram Web Resource. <a href="http://mathworld.wolfram.com/Burali-FortiParadox.html">http://mathworld.wolfram.com/Burali-FortiParadox.html</a> <br /><br>
	<span class="byline">posted by Dennis at <a href="#107706163379453523">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107706058709792966">&nbsp;</a><br>
	<a href="http://www.u.arizona.edu/~miller/finalreport/finalreport.html">An Historical Account of Set-Theoretic Antinomies</a>.&nbsp; This is a report by Justin T. Miller, dated 2001-01-11.&nbsp; It includes the Burali-Forti Paradox along with Cantor's and Russell's.  The key thing is that the axiom of abstraction (that is, the extensional existence of a set as all a for which phi(a) is true) led to all of these and that the accepted repair is with Zermelo's Axiom of Separation or Fraenkel's Axiom Schema of Replacement.<br>
	<span class="byline">posted by Dennis at <a href="#107706058709792966">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107705607397313909">&nbsp;</a><br>
	<h1>Personal Computing</h1><h2>Weblogs and Syndication</h2><h3>TrackBack Techniques</h3><br /><br /><a href="http://madskills.com/public/xml/rss/module/trackback/">TrackBack Module for RSS 1.0/2.0</a>.&nbsp; This is a version 1.0 draft that adds TrackBack into RSS.  This is an interesting additional wrinkle.<br>
	<span class="byline">posted by Dennis at <a href="#107705607397313909">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107705565530850701">&nbsp;</a><br>
	<a href="http://www.movabletype.org/docs/mttrackback.html">mttrackback - TrackBack Technical Specification</a>.&nbsp; OK, I got it. The trackback URL that is available for human and automatic discovery in an article is an address that accepts POST to add a trackback and that, under GET, will return an RSS feed of the trackback items that have been pinged to the particular trackback point.&nbsp; This all looks pretty straightforward, though it takes something to automate.<br /><br />I think this is an interesting protocol.  A free implementation is available for download.  It has been added to bloxser, I don't know why it can't be added to a process that goes over one of my pages and pings the trackback of those sites I have refered to, if they have set up for autodiscovery.   This is an interesting mechanism.<br>
	<span class="byline">posted by Dennis at <a href="#107705565530850701">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107705479615152415">&nbsp;</a><br>
	<a href="http://www.movabletype.org/docs/mttrackback.html">mttrackback - TrackBack Technical Specification</a>.&nbsp; OK, here's the TrackBack protocol specification.&nbsp; This is a kind of subscription protocol in that it sends a ping to a trackback receiver URL and is then included in the trackbacks from the associated article.&nbsp; I know I'm over-simplifying.&nbsp; What is interesting is how this can be used to request notification of something or to make availability of something.  The protocol is mainly neutral (he says, without reading the document) as to purpose.&nbsp; I can see this being used to establish a connected community.&nbsp; Rather than pontificate further, I am going to look at the details now.<br>
	<span class="byline">posted by Dennis at <a href="#107705479615152415">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107705409190196376">&nbsp;</a><br>
	<a href="http://www.movabletype.org/trackback/beginners/">movabletype.org : TrackBack Explanation</a>.&nbsp; Here's more on what is going on with trackbacks.  Hmm, hmm, hmm.<br>
	<span class="byline">posted by Dennis at <a href="#107705409190196376">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107705364662580482">&nbsp;</a><br>
	<a href="http://s1.amazon.com/exec/varzea/subst/fx/help/how-we-know.html/002-0614385-0950456">Amazon Honor System</a>.&nbsp; Because this is on the blosxer page, I clicked the "more information" link about the Amazon Honor System and payment thingie.  So, here's an alternative to PayPal using Amazon.com accounts.  Hmm.<br>
	<span class="byline">posted by Dennis at <a href="#107705364662580482">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107705335721909364">&nbsp;</a><br>
	<a href="http://www.blosxom.com/">blosxom :: the zen of blogging ::</a>.&nbsp; Well, all right, I am now looking into bloxsom.&nbsp; I may need to learn to convert Perl to something else (my preference is JavaScript in ASP, dare you ask), but this is a nice approach and I wonder how it would blend with a MoinMoin Wiki or some other Wiki style operation.<br>
	<span class="byline">posted by Dennis at <a href="#107705335721909364">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107705316256452212">&nbsp;</a><br>
	<a href="http://www.raelity.org/computers/internet/weblogs/blosxom/trackbacks_in_blosxom.html">raelity bytes :: /computers/internet/weblogs/blosxom/trackbacks_in_blosxom.html</a>.&nbsp; This is an interesting page.&nbsp;  It is about Trackbacks.&nbsp; It was served up because I used the little purple "#" thingy in the title on the blog page where I found it.&nbsp; This is an interesting blog implementation.&nbsp; I need to look at it more, but first, Trackbacks.<br>
	<span class="byline">posted by Dennis at <a href="#107705316256452212">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107705255840707441">&nbsp;</a><br>
	<h1>Information Technology</h1><h2>Economics and Business Models</h2><br /><a href="http://www.computerworld.com/softwaretopics/erp/story/0,10801,90217,00.html?nas=WK-90217">ERP users bristle at upgrade pressure, maintenance costs - Computerworld</a>.&nbsp; This article reminds me of the problem that exists in the preservation of data systems.  In data management and digital libraries, for example, there will be long-lived slow-changing resources, and the collections can become massive.&nbsp; On the other hand, these systems outlive the attention span of vendors and ultimately of the media technology.&nbsp; Business models based on upgrading and revision and change of technology do not work well here.&nbsp; This applies to such simple things as Microsoft Word documents.&nbsp; If we extend into more-specialized, proprietary technologies, the situation becomes even stickier, as in the case of upgrade and maintenance fees for ERP systems.&nbsp; There is a way in which "innovation" is not a good, let alone a free good (all puns intended).&nbsp; What is a girl to do?<br>
	<span class="byline">posted by Dennis at <a href="#107705255840707441">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107705213610518273">&nbsp;</a><br>
	<h1>Personal Computing</h1><h2>Social Networking</h2><h3>Esther Dyson observations</h3>Although I am happy to have been reminded to check on Esther Dyson's site for industry trends and analysis, the observations about social computing are also appropriate to our discussions in class, and my general interest in P2P arrangements.  Blogging and Syndication is part of that.&nbsp; There is more here.<br /><br /><a href="http://weblog.edventure.com/blog/_archives/2003/12/12/9082.html">EDventure :: some comments about LinkedIn</a>.&nbsp; These comments in Esther Dyson's Blog are important.  One of the commentators points out that there is a kind of "friend inflation" that creeps in.  It is also desirable to be able to filter the invitations from people who don't know you personally (or that you don't know personally).&nbsp; I notice that trackbacks are interesting and I will need to put one in here to see how it works.<br /><br />Meanwhile, I am still interested in the self-organizing community approach, how ants find food, and also how one asserts something as part of recommending one friend to another.&nbsp; Bill Anderson and I just got off the phone, and I think that the web of trust machinery is adaptable and I also think that there is more to it than the countersigning of trusted countersigners.  We need something that carries specific assertions by respected countersigners.  It's not like peer rating but that could play in too.  Overlays on overlays on overlays.<br /><br />AnderBill and I will look at coherence and confirmable experience at the signed-material level and use that as an avenue to look into trust networks.  OpenPGP is a great place to start, as is signed code (now <em>there</em> we can see many undifferentiated assertions and unmerited expectations).  <br /><br />Anyhow, we want to start somewhere, and the first thing I want to find out about is TrackBack.  But meanwhile, I notice that the trackback URL takes me to an XML file of the trackback material. My question is how the trackback gets built, and how to be in someone's trackback, how to trackback from my blog, once upgraded, etc.  I will dig around.<br>
	<span class="byline">posted by Dennis at <a href="#107705213610518273">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107705096653538545">&nbsp;</a><br>
	<a href="http://www.edventure.com/release1/abstracts/200311.htm">Release 1.0 Abstract: Social Networking for Business (Release 0.5)</a>.&nbsp; This is Esther Dyson's November 2003 appraisal.&nbsp; LinkedIn is menbtioned, and my associate Bill Anderson is sending me something about that.  I know that I declined the Google-created one based solely on their IP claim and a certain sophomoric quality that I experienced.&nbsp; I think the Friend-of-a-Friend (FOAF) structure is also juvenile, but I like the principle involved and the technology (RDF with OWL seasoning) may be applicable to many more cases.&nbsp; I want to use this in an application-to-application P2P setting, and I am still looking.<br>
	<span class="byline">posted by Dennis at <a href="#107705096653538545">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107705068769610536">&nbsp;</a><br>
	<a href="http://www.edventure.com/release1/abstracts/200310.htm">Release 1.0 Abstract: Reputation Systems</a>.&nbsp; This October 2003 report by Jeff Ubois is important to me concerning social networks and how P2P can be made to work on a decentralized, self-creating community basis.<br>
	<span class="byline">posted by Dennis at <a href="#107705068769610536">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107705057844860295">&nbsp;</a><br>
	<a href="http://www.edventure.com/">Business Intelligence & Technology Analysis, Research & Reports - Edventure Holdings Inc.</a>.&nbsp; This is Esther Dyson's (e.d.-venture, yes?) site with nice notes.&nbsp; And the release 1.0 report appears here.  There is a link to Esther's blog, too.<br>
	<span class="byline">posted by Dennis at <a href="#107705057844860295">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107705049952719132">&nbsp;</a><br>
	<a href="http://www.acm.org/ubiquity/interviews/v4i50_dyson.html">ACM Ubiqity: Esther Dyson interview</a>.&nbsp; This is a nice interview from Esther Dyson.&nbsp; Here we learn about the PC Forum (I won't be going, still) and that Esther has started a blog.<br>
	<span class="byline">posted by Dennis at <a href="#107705049952719132">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107703990886643161">&nbsp;</a><br>
	<h1>Information Technology</h1><h2>Standards Adoption</h2><h3>SIP rollout</h3><br /><a href="http://www.nwfusion.com/news/2004/0202sip.html">SIP rollouts hit variety of snags</a>.&nbsp; Here's the NetworkWorldFusion article on problems with SIP rollout.&nbsp; The following quote fits into this week's discussion of problems with standards in my MSC-CC course:<br /><br />«"SIP is extremely flexible, but anytime you have [a protocol] that's flexible, you have different ways of interpreting things or doing things," says Ken Fischer, principal architect for softswitch services at Level 3 Communications.»<br>
	<span class="byline">posted by Dennis at <a href="#107703990886643161">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107703967380165614">&nbsp;</a><br>
	<a href="http://www.acm.org/technews/articles/2004-6/0209m.html#item17">ACM News Service -- SIP Rollouts Hit Variety of Snags</a>.&nbsp; Here's a blurb on problems with interoperability using the Session Initiation Protocol (SIP) standard along with the Voice over Internet Protocol (VoIP).  There are major implementation interoperability and incomplete implementation of standards.<br>
	<span class="byline">posted by Dennis at <a href="#107703967380165614">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107703946035390623">&nbsp;</a><br>
	<h1>Computer Milieux</h1><h2>Trust and Trustworthy Computing</h2><h3>Web Site and Email Security</h3><br /><a href="http://www.owasp.org/index">OWASP: The OPen Web Application Security Project</a>.&nbsp; Here's a great find.  Specifications, tools, and feeds.<br>
	<span class="byline">posted by Dennis at <a href="#107703946035390623">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107703939213042148">&nbsp;</a><br>
	<a href="http://www.hwg.org/">Website Design - HWG.ORG</a>.&nbsp; This is a home page to the IWA-HWG (International Webmasters Assocation - The HTML Writers Guild).&nbsp; There is reported to be classes and materials on web security.&nbsp; There's also some at <a href="http://www.foundstone.com/"><strong>Foundstone</strong></a>, with a good list of white papers (the pages aren't bloggable though).<br>
	<span class="byline">posted by Dennis at <a href="#107703939213042148">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107703897777109201">&nbsp;</a><br>
	<a href="http://www.ecommercetimes.com/perl/story/32756.html">E-Commerce News: Security: Tackling the Secure Web Mail Challenge</a>.&nbsp; This is the full eCommerce Times article by Keith Paslay, 2004-02-04.&nbsp; This has nice reach, and there are some interesting links to follow.<br>
	<span class="byline">posted by Dennis at <a href="#107703897777109201">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107703884080977619">&nbsp;</a><br>
	<a href="http://www.acm.org/technews/articles/2004-6/0209m.html#item12">ACM News Service - Tackling the Secure Web Mail Challenge</a>.&nbsp; This is an interesting blurb.&nbsp; Although it is focused on Web-based email, this applies to any web presence, including the offering of Web Services.&nbsp; This is also a good description of how security and safety concerns must be addressed from the beginning of software development.<br>
	<span class="byline">posted by Dennis at <a href="#107703884080977619">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107703856456608530">&nbsp;</a><br>
	<h2>Impact of Wireless Technology</h2><h3>802.11 Standards</h3><br /><br /><a href="http://zdnet.com.com/2102-1107_2-5153440.html?tag=printthis">ZDNet: Printer Friendly - Why 802.11 is underhyped</a>.&nbsp; This is J. William Gurley's article in full.&nbsp; It is a little too casual (underestimating the Power PC chip, though it did not unseat Intel as Apple and others might have dreamed).&nbsp; Even so, the rationale is important.<br>
	<span class="byline">posted by Dennis at <a href="#107703856456608530">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107703841937971652">&nbsp;</a><br>
	<a href="http://www.acm.org/technews/articles/2004-6/0209m.html#item11">ACM News Service -- Why 802.11 is Underhyped</a>.&nbsp; This news blurb covers a ZDNet 2004-02-04 article that suggests the impact of 802.11 is seriously underestimated.&nbsp; There are already 50 million devices and the number will have doubled by next year.&nbsp; The 802.11 standards are seen to be driving wireless to the equivalent of the x86 standard for PCs.<br>
	<span class="byline">posted by Dennis at <a href="#107703841937971652">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107703819833764494">&nbsp;</a><br>
	<h1>Computing Miliuex</h1><h2>Social Networking</h2><h3>Blogging and other technologies</h3><br /><br /><a href="http://www.acm.org/technews/articles/2004-6/0209m.html#item10">ACM News Service -- The Net: Safety, Blogs and Protocols</a>.&nbsp; This news blurb summarizes a 2004-02-09 Wall Street Journal article.&nbsp; It is a nice capsulization of current concerns, worries, and optimism.<br>
	<span class="byline">posted by Dennis at <a href="#107703819833764494">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107703505516190568">&nbsp;</a><br>
	<h1>Mathematical Logic</h1><h2>Model Theory</h2><h3>First-Order Theories and other aspects</h3>Here are some links to the work of Wilfrid Hodges that I want to mine farther for information on model theory and also first-order theories.<br /><br /><a href="http://plato.stanford.edu/entries/modeltheory-fo/">First-order Model Theory</a>.&nbsp; Hodges, Wilfrid, "First-order Model Theory", The Stanford Encyclopedia of Philosophy (Winter 2001 Edition), Edward N. Zalta (ed.), URL = &lt;<a href="http://plato.stanford.edu/archives/win2001/entries/modeltheory-fo/">http://plato.stanford.edu/archives/win2001/entries/modeltheory-fo/</a>>. <br /><br>
	<span class="byline">posted by Dennis at <a href="#107703505516190568">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107703493287717915">&nbsp;</a><br>
	<a href="http://plato.stanford.edu/entries/actualism/">Actualism</a>.&nbsp; Menzel, Christopher, "Actualism", The Stanford Encyclopedia of Philosophy (Spring 2003 Edition), Edward N. Zalta (ed.), URL = &lt;http://plato.stanford.edu/archives/spr2003/entries/actualism/>. <br>
	<span class="byline">posted by Dennis at <a href="#107703493287717915">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107703477180879586">&nbsp;</a><br>
	<a href="http://plato.stanford.edu/entries/logic-classical/">Classical Logic</a>.&nbsp; Shapiro, Stewart, "Classical Logic", The Stanford Encyclopedia of Philosophy (Summer 2003 Edition), Edward N. Zalta (ed.), URL = &lt;<a href="http://plato.stanford.edu/archives/sum2003/entries/logic-classical/">http://plato.stanford.edu/archives/sum2003/entries/logic-classical/</a>>.<br>
	<span class="byline">posted by Dennis at <a href="#107703477180879586">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107703462989869776">&nbsp;</a><br>
	<a href="http://www.epistemelinks.com/Main/Biblio.aspx?TopiCode=Logi">EpistemeLinks.com: Bibliography Results</a>.&nbsp; Here's a nice bibliographic compilation that includes Hodges' Stanford Encyclopedia of Philosophy article.<br>
	<span class="byline">posted by Dennis at <a href="#107703462989869776">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107703431011923929">&nbsp;</a><br>
	<a href="http://www.maths.qmw.ac.uk/~wilfrid/">Wilfred Hodges Home Page</a>.&nbsp; Hodges' book on Logic is being discussed on the Phil-logic list, though without much attribution.&nbsp; I thought I had better find the source.&nbsp; I discover that Hodges lectures at the ESSLI and related events, and the lecture slides are on-line.&nbsp; That's nice, and a nice reason to visit.<br>
	<span class="byline">posted by Dennis at <a href="#107703431011923929">Tuesday, February 17, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	
    	<h2><a name="2004-02-16" href="#2004-02-16"><font color="#660000">2004-02-16</font></a></h2>
   	

	<div class="posts">
	<a name="107700375689555295">&nbsp;</a><br>
	<h1>Information Technology</h1><h2>Computer Networking</h2><h3>Network Tools</h3>My classmates and I are looking for more and better tools to use in observing and experimenting with application-layer protocols, such as HTTP/1.1<br /><br /><a href="http://sourceforge.net/projects/packetyzer/">SourceForge.net: Project Info - Packetyzer</a>.&nbsp; This is the SourceForge project page for Packetyzer.<br>
	<span class="byline">posted by Dennis at <a href="#107700375689555295">Monday, February 16, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107700369073935595">&nbsp;</a><br>
	<a href="http://www.networkchemistry.com/products/packetyzer/#download">Network Chemistry - Packetyzer</a>.&nbsp; This is an open-source packetyzer with Windows front end.<br>
	<span class="byline">posted by Dennis at <a href="#107700369073935595">Monday, February 16, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107697921276520748">&nbsp;</a><br>
	<h1>Information Systems</h1><h2>Peer-to-Peer Computing</h2><h3>Converging Technologies?</h3><br /><br /><a href="http://mute-net.sourceforge.net/">MUTE: Simple, Anonymous File Sharing</a>.&nbsp; Here is the MUTE home page.  I am not sure what to do with this.  I probably need to look at the technical details.<br>
	<span class="byline">posted by Dennis at <a href="#107697921276520748">Monday, February 16, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107697910124981358">&nbsp;</a><br>
	<a href="http://mute-net.sourceforge.net/howAnts.shtml">MUTE: Simple, Anonymous File Sharing</a>.&nbsp; This page describes How Ants Find Food and uses something similar for paths to resources.&nbsp; The pictures are great as are the diagrams.&nbsp; This is an interesting prospect for creating peer connections in search of something.<br>
	<span class="byline">posted by Dennis at <a href="#107697910124981358">Monday, February 16, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107697796989988270">&nbsp;</a><br>
	<a href="http://sourceforge.net/projects/moin/">SourceForge.net: Project Info - MoinMoin</a>.&nbsp; This is the SourceForge project.  I like this.  Need to find some others.<br>
	<span class="byline">posted by Dennis at <a href="#107697796989988270">Monday, February 16, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107697762105752354">&nbsp;</a><br>
	<a href="http://internet.conveyor.com/RESTwiki/moin.cgi/FrontPage">FrontPage - RESTwiki</a>.&nbsp; This is a wiki for people interested in the REST architecture of the Web.&nbsp; I want to use this as inspiration for simplicity, though I am not adverse to Web Services either.<br>
	<span class="byline">posted by Dennis at <a href="#107697762105752354">Monday, February 16, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107697753969201569">&nbsp;</a><br>
	<a href="http://moinmoin.wikiwikiweb.de/">FrontPage - MoinMoin</a>.&nbsp; This is a Wiki implementation that I like.  I don't want to run it in Python, but it would be keen to convert it to ASP and JavaScript.&nbsp; Two key features are that it handles plug-ins and that it does not require a database engine.  That's all intriguing.<br>
	<span class="byline">posted by Dennis at <a href="#107697753969201569">Monday, February 16, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107696168727882221">&nbsp;</a><br>
	<a href="http://www.indiawebdevelopers.com/technology/Java/jsp.asp">A Web Developers Perspective on JSP</a>.&nbsp; This is a nice sketch of JSP in comparison with ASP (notice the URL) that was found by classmate Susan Abu Azab.<br>
	<span class="byline">posted by Dennis at <a href="#107696168727882221">Monday, February 16, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107695669960011277">&nbsp;</a><br>
	<a href="http://hotwired.lycos.com/webmonkey/99/46/index1a.html?tw=programming">Server-Side Scripting Shootout</a><br>
	<span class="byline">posted by Dennis at <a href="#107695669960011277">Monday, February 16, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107692206432274941">&nbsp;</a><br>
	<a href="http://dsonline.computer.org/os/related/p2p/index.htm">P2P Pages</a>.&nbsp; This is a page on P2P that is part of the IEEE Distributed Systems Online (DSO) compilation of expert-authored articles and resources.&nbsp; They also seek essays, and publish student essays.<br>
	<span class="byline">posted by Dennis at <a href="#107692206432274941">Monday, February 16, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107692195361071693">&nbsp;</a><br>
	<a href="http://dsonline.computer.org/os/related/p2p/Essays.htm">Student Essays</a>.&nbsp; This is an essay by Fang Chen and Vana Kalogeraki on Self-Organizing Unstructured Peer-to-Peer Systems: Opportunities and Challenges. It raises some interesting questions around the basis for identification of peers and the affinity basis, QoS, etc.<br>
	<span class="byline">posted by Dennis at <a href="#107692195361071693">Monday, February 16, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	
    	<h2><a name="2004-02-15" href="#2004-02-15"><font color="#660000">2004-02-15</font></a></h2>
   	

	<div class="posts">
	<a name="107691595473749792">&nbsp;</a><br>
	<h1>Information Systems</h1><h2>Peer-to-Peer Computing</h2><h3>Discovery Mechanisms</h3>I am interested in the discovery problem for peer-to-peer arrangements, especially ad hoc and FOAF (friend-of-a-friend) techniques.&nbsp; I have pretty much concluded that having descriptors on web sites is a nice passive idea, and there can be links to these descriptors (as well as common namings for them), so that they can be discovered by searching but, more than that, by reference.&nbsp; With regard to FOAF, it looks like letters-of-recommendation (sort of like 1-time Distinguished Object References) might work, and there is some sort of PKI dance one could do as well.&nbsp; I find this an intriguing topic, especially with regard to connectivity in a distributed <a href="http://miser-theory.info/">miser</a> operation.<br /><br /><a href="http://www.ideasasylum.com/weblog/2003_08_01_archive.php#106148107806124846">ideas asylum - Jamie's Weblog: Discovery, 2003-08-21</a>.&nbsp; Explores the idea that discovery is all about bootstrapping.&nbsp; Nice little blog.<br>
	<span class="byline">posted by Dennis at <a href="#107691595473749792">Sunday, February 15, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107691496498148788">&nbsp;</a><br>
	<a href="http://spec.jxta.org/nonav/v1.0/docbook/JXTAProtocols.html#N1035D">JXTA v2.0 Protocols Specification</a>.&nbsp; The JXTA protocols refer to how peers self-organize themselves into groups.&nbsp; I want to find out how that is mediated.&nbsp; I am looking here to find out how bootstrapping occurs.  This is apparently done by the discovery service, for searching for peers and peer groups.&nbsp; The idea, in the language of the prototype specification, is that a peer wanting to join a peer group may need to discover at least one member of the peer group and then request to join.&nbsp; So far, I have not found a good way to do this, although there appears to be a kind of HTTP "ping" that can be used to discover a peer site.&nbsp; It is not clear how this works with regard to group associations, since there may be any number of groups that a peer belongs to, and so there are some interesting problems about what exactly is being discovered and what can be done with it.<br>
	<span class="byline">posted by Dennis at <a href="#107691496498148788">Sunday, February 15, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107691266286351028">&nbsp;</a><br>
	<a href="http://webservices.xml.com/lpt/a/ws/2001/10/03/webservices.html">XML.com: Web Services: It's So Crazy, It Just Might Not Work</a>.&nbsp; This is a Clay Shirky article about how Web Services are ill-conceived and, in my words, propose to get a great deal for nothing.<br>
	<span class="byline">posted by Dennis at <a href="#107691266286351028">Sunday, February 15, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107691227748408690">&nbsp;</a><br>
	<a href="http://www.jxta.org/">jxta.org</a>.&nbsp; JXTA is a peer-to-peer framework carried out as a Java Community Project and licensed under a version of the Apache license.&nbsp; The ways to share files and create groups of peers is not clear to me.<br>
	<span class="byline">posted by Dennis at <a href="#107691227748408690">Sunday, February 15, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107691110680680106">&nbsp;</a><br>
	<a href="http://www.foaf-project.org/">the friend of a friend (foaf) project</a>.&nbsp; This is the foaf project page.&nbsp; So, there are no capital letters in it.  There are some interesting tools and resources.<br>
	<span class="byline">posted by Dennis at <a href="#107691110680680106">Sunday, February 15, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107691102114477594">&nbsp;</a><br>
	<a href="http://www.oreillynet.com/pub/wlg/4428">OpenP2P.com: ETech: FOAF [Feb. 12, 2004]</a>.&nbsp; This is Robert Kaye's O'Reilly blog on Friend of a Friend (FOAF or FoaF) social networking.&nbsp; The nice thing about it is that FOAF is completely decentralized.  So the FoaF information is encoded in XML and placed on a web site.  This also means the data belongs to you.  Also, the presence on a web site is a form of association and a start on authentication, just like I can use orcmid.com as a root for, Java libraries.<br /><br />I don't think authentication is that big of a problem, especially since the FoaF profile can be digitally signed.  Then there are trust networks, and, as Key points out, "how will FOAF handle lying, trust, reputation? I'm hoping that we can solve these difficult problems soon -- if nothing else, FOAF will expose these problems to the greater public which will get more brains thinking about the problem. And that's certainly a step in the right direction."<br /><br />I am not sure the problem is one that will be solved any more differently than in social networks in the world.&nbsp; Since the damage can propogate more quickly, there may need to be safeguards to basically infectuous activity.&nbsp; I think this is promising.<br>
	<span class="byline">posted by Dennis at <a href="#107691102114477594">Sunday, February 15, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107691056526658151">&nbsp;</a><br>
	<a href="http://bitconjurer.org/BitTorrent/protocol.html">BitTorrent: Protocol Specification</a>.&nbsp; This is the BitTorrent Protocol specification.&nbsp; Basically, beside some special protocol support, the availability of torrents is via special files that are located on web servers and that can be linked from ordinary web pages.&nbsp; So we have the idea of the web as a location mechanism.  This can also work with URLs sent out in invitations, so there is some mechanism that might work here for quasi-bootstrappless operation.<br>
	<span class="byline">posted by Dennis at <a href="#107691056526658151">Sunday, February 15, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107691012672063871">&nbsp;</a><br>
	<a href="http://bitconjurer.org/BitTorrent/">The Official BitTorrent Home Page</a>.&nbsp; BitTorrent is a file sharing technique that uses P2P.&nbsp; I am going to see how it handles boostrapping.<br>
	<span class="byline">posted by Dennis at <a href="#107691012672063871">Sunday, February 15, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107690997466284693">&nbsp;</a><br>
	<a href="http://www.musicbrainz.org/~robert/etech/SLIDE11.HTM">References</a>.&nbsp; This final slide has some references that may be worth checking into.<br>
	<span class="byline">posted by Dennis at <a href="#107690997466284693">Sunday, February 15, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107690989644096392">&nbsp;</a><br>
	<a href="http://www.musicbrainz.org/~robert/etech/SLIDE9.HTM">Attack Model</a>.&nbsp; I don't find this attack model appealing, since it has to do with a kind of civil disobedience (e.g., sharing music).  I am interested in isolating attacks (that is, corruption of the distributed operation) in a system, but my concern is for the reliability of the system.&nbsp; I think there is an overlap here, but my concern is destabilization and breach of trust and how that is dealt with, not protection of the identity of the participants.  <br>
	<span class="byline">posted by Dennis at <a href="#107690989644096392">Sunday, February 15, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107690973897925214">&nbsp;</a><br>
	<a href="http://www.musicbrainz.org/~robert/etech/SLIDE8.HTM">Security</a>.&nbsp; This slide resonates for me.  Using SSH and PGP make sense.  I ned to find out what about BitTorrent is reuasable.&nbsp; For me the issue is about trust as part of distributed operation, whatever it is on behalf of.&nbsp; I am far more interested in trust and dealing with the trustworthiness of material, such as code that is asserted to implement some particular object or a connection to that particular object.&nbsp; I am not so concerned about the activity being visible but that it be trustworthy.&nbsp; Use of encryption technology is primarily for reliability of communication and authenticity, with content encryption for privacy purposes.<br>
	<span class="byline">posted by Dennis at <a href="#107690973897925214">Sunday, February 15, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107690951977710870">&nbsp;</a><br>
	<a href="http://www.musicbrainz.org/~robert/etech/SLIDE7.HTM">Invitations & Detection Avoidance</a>.&nbsp; Kaye does suggest some ideas for making sure that only the invited can get into a community.&nbsp; This is not unlike other systems that use invitations, and something about the trust network used for OpenPGP comes to mind as well.  Oh, it is a little like being able to tell a cookie has been falsified or someone is being impersonated.<br>
	<span class="byline">posted by Dennis at <a href="#107690951977710870">Sunday, February 15, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107690936543364721">&nbsp;</a><br>
	<a href="http://www.musicbrainz.org/~robert/etech/SLIDE5.HTM">Architecture: Central Server</a>/&nbsp; This is Kaye's Slide 5, where the P2P network bootstrapping problem disappears because a central server is used to track users who are online.&nbsp; This strikes me the same as the Instant Messenger approach where a users publish their status and obtain periodic reports on the status of their list of friends.<br>
	<span class="byline">posted by Dennis at <a href="#107690936543364721">Sunday, February 15, 2004</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="107690893665893942">&nbsp;</a><br>
	<a href="http://www.windley.com/2004/02/10.html#a1039">Phil Windley | ETCon 2004: Robert Kaye on Social Networking-Based File Sharing Networks</a>.&nbsp; This is on Phil Windley's Blog, and it refers to Robert Kaye's discussion of Social Networks and how they work differently.  Nevertheless,<br /><br />"Robert likes a two-part system with a central server architecture. Algorithms for authentication are difficult to do in a decentralized system. The central server offers a Web service interface that allows user to build any kind of social network application. The server has no knowledge of what clients are doing and thus clients are protected. The central server also solves the P2P bootstrapping problem of how to get clients linked-in."<br /><br /><br>
	<span class="byline">posted by Dennis at <a href="#107690893665893942">Sunday, February 15, 2004</a></span></div>
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