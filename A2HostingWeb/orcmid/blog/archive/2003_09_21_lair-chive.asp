<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title>Orcmid's Lair</title>
        <!-- 2002-10-31: Template modification adventures
             Add a configuration management stamp and set a default target that works for blogging the blog. -->
        <!--$$Header: /A2HostingWeb/orcmid/blog/archive/2003_09_21_lair-chive.asp 8     26-03-22 14:12 Orcmid $-->
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
	
    	<h2><a name="2003-09-26" href="#2003-09-26"><font color="#660000">2003-09-26</font></a></h2>
   	

	<div class="posts">
	<a name="106459240858964969">&nbsp;</a><br>
	<a href="http://www-106.ibm.com/developerworks/edu/ws-dw-ws-intwsdk51-i.html?ca=dnt-437">Introduction to Web services and the WSDK V5.1</a>.&nbsp; This link was provided by instructor Frank Cook.&nbsp; We are running into the toolcraft issue, here, and I think maybe we are rushing things a bit.&nbsp; At the same time, I have not looked a the WSDK 5.1 or the tutorial, so that is just a concern, not a considered evaluation.&nbsp; Beside wanting to travel light (I am not sure Eclipse qualifies), the early stabilization of the WS-I suite and profiles requires working close to the metal before we all run off and use different toolcrafts that fail at producing interoperable results.&nbsp; And especially since there is the tendency to believe that the tool we are running is definitive with regard to the interoperability standard that we set out to use.&nbsp; The structures of coordination that we are building with Web Services deployment may give us the means to account for this, and it is too soon to tell.&nbsp; It seems to me that stability of the foundation is crucial, and we are already tripping over things like Byte-Order Marks in UTF-8.&nbsp; There is already noise in the system, and I would think that further destabilization is an easy consequence of carelessness -- more likely, complete indifference -- in rapid deployment.  (I am cranky this morning in anticipation of my October start of a module on databases that will require me to install a personal edition of DB2, something that previous students describe as a Freddy & Jason experience.)<strong></strong><br>
	<span class="byline">posted by Dennis at <a href="#106459240858964969">9/26/2003 09:06:48 AM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	
    	<h2><a name="2003-09-25" href="#2003-09-25"><font color="#660000">2003-09-25</font></a></h2>
   	

	<div class="posts">
	<a name="106452668060621761">&nbsp;</a><br>
	I find that the path to sanity through the web services stack and all of the specifications, in all of their different stages of development and authority, is the WS-I effort and the WS-I Basic Profile 1.0a.  Last night, as part of homework, I used the WSDL 1.1 Schemas for WSDL and for the WSDL SOAP Binding.  I found bugs and inconsistencies with the official XML Schema (1.0) Recommendation.  I corrected some of them, having to do with WSDL 1.1 being designed against a preliminary version of the XML Schema and XML Schema datatypes.   Now I see that the WS-I Basic Profile 1.0a document may have addressed that and specified the schema definitions to be used.  I will want to go retrieve copies of them, as well as have my validator cache them.  Here they are:<br /><br />For namespace http://schemas.xmlsoap.org/wsdl/ (used with no qualifier or qualifier wsdl: in specifications and examples), the WS-I profile specifies that the schema to conform to is at <a href="http://schemas.xmlsoap.org/wsdl/2003-02-11.xsd">http://schemas.xmlsoap.org/wsdl/2003-02-11.xsd</a>.<br /><br />For namespace http://schemas.xmlsoap.org/wsdl/soap/ (used with qualifier soap: and soapbind: in specifications and examples), the WS-I profile specifies that the schema to conform to is at <a href="http://schemas.xmlsoap.org/wsdl/soap/2003-02-11.xsd">http://schemas.xmlsoap.org/wsdl/soap/2003-02-11.xsd</a>.<br /><br />I have used these in an xsi:schemaLocation attribute for a WSDL 1.1 <definitions> document and the validation errors that I couldn't resolve have disappeared.&nbsp; Hooray for this.<br>
	<span class="byline">posted by Dennis at <a href="#106452668060621761">9/25/2003 02:51:20 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	
    	<h2><a name="2003-09-24" href="#2003-09-24"><font color="#660000">2003-09-24</font></a></h2>
   	

	<div class="posts">
	<a name="106444808076554920">&nbsp;</a><br>
	<h1>Computing Milieu</h1><h2>Education and Learning</h2><h3>Distant Learning</h3><a href="http://www.wired.com/wired/archive/11.09/mit.html">Wired 11.09: MIT Everyware</a>.&nbsp; I brought myself to tears reading this article.  (I guess that makes me a bleading-heart moderate?)  This is what I want to be part of and to support and forward.&nbsp; I have watched this from the initial announcement, when there was still great trepidation inside of MIT and cynicism or resentment outside.&nbsp; What I find great about this is that it is being done in a way that there are measures of the effectiveness of the effort so far.&nbsp; And great anecdotal reporting of the farflung impact of going about this in a systematic way.&nbsp; It is the experiences of those farflung students, and the contributions they are making, that inspires me about the value of this initiative.<br>
	<span class="byline">posted by Dennis at <a href="#106444808076554920">9/24/2003 05:01:20 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	
    	<h2><a name="2003-09-23" href="#2003-09-23"><font color="#660000">2003-09-23</font></a></h2>
   	

	<div class="posts">
	<a name="106438267220901946">&nbsp;</a><br>
	<h1>Information Systems</h1><h2>Service Oriented Architecture</h2><h3>Web Services and UDDI</h3><a href="http://msdn.microsoft.com/webservices/understanding/advancedwebservices/default.aspx?pull=/library/en-us/dnwebsrv/html/wsoverview.asp#top">Advanced Web Services: Secure, Reliable, Transacted Web Services: Architecture and Composition (Web Services Technical Articles)</a>.&nbsp; Here is a joint IBM-Microsoft paper on having composed services work in parctice in a transactioned, secure way.  It is very comprehensive.  [dh:2003-09-25-14:19pdt - It also ties in to Service Oriented Architecture.  I find that fascinating.]<br>
	<span class="byline">posted by Dennis at <a href="#106438267220901946">9/23/2003 10:51:12 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106437915039121711">&nbsp;</a><br>
	<a href="http://www.alphaworks.ibm.com/tech/be4ws">alphaWorks : Business Explorer for Web Services</a>.&nbsp; Interesting description of BE4WS, now part of WSTK since 3.1.  No sooner had I looked at this based on classmate Fernando's recommendation, that I ran into the IBM-Microsoft White Paper on Architecture and Composition of Transacted Web Services.&nbsp; I found more interesting coverage.&nbsp;  I need to get my clippings and gleanings and citations all in one place.&nbsp; Any day now ...<br>
	<span class="byline">posted by Dennis at <a href="#106437915039121711">9/23/2003 09:52:30 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106437832313479381">&nbsp;</a><br>
	<a href="http://www.acmqueue.org/modules.php?name=Content&pa=printer_friendly&pid=31">Web Services: Promises and Compromises</a>.&nbsp; An interesting link into the maiden issue of ACM Queue.  I must have the print copy somewhere.  I wonder if I thought to keep this article at the time.<br>
	<span class="byline">posted by Dennis at <a href="#106437832313479381">9/23/2003 09:38:43 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106434937763206586">&nbsp;</a><br>
	<a href="http://uddi.microsoft.com/search/frames.aspx?frames=true&search=458dd9ea-bcfd-4db1-9b9f-42cf0fd9ef50">NuovoDoc in the Microsoft UDDI Business Registry (UBR)</a>.&nbsp; These registries are federated and they replicate with each other.&nbsp; It happens very quickly, generally.<br>
	<span class="byline">posted by Dennis at <a href="#106434937763206586">9/23/2003 01:36:17 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106434922303083756">&nbsp;</a><br>
	<a href="https://uddi.ibm.com/ubr/findbusiness?action=details&businesskey=0BE13510-ED89-11D7-B602-000629DC0A53">NuovoDoc on the IBM UDDI Business Registry</a>.&nbsp; My consultancy as listed in the Business Registry Version 2.<br>
	<span class="byline">posted by Dennis at <a href="#106434922303083756">9/23/2003 01:33:43 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106433358825332144">&nbsp;</a><br>
	<a href="http://www.stencilgroup.com/ideas/reports/2003/wsrules/">Web Services Rules: Real-World Lessons from Early Adopters (The Stencil Group)</a>.&nbsp; I think my grand-nephew would say "Web Services Rule [Dude]" but this posting answers my question about what an update to their April 2001 prediction would be like.&nbsp; This is a comprehensive report and I am not going to digest it now.  From coverage alone I would give it high marks.&nbsp; Now for the content ...<br>
	<span class="byline">posted by Dennis at <a href="#106433358825332144">9/23/2003 09:13:08 AM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106433340436847349">&nbsp;</a><br>
	<a href="http://www.stencilgroup.com/ideas_scope_200104uddi.html">The Stencil Group: The Stencil Scope: Why UDDI Will Succeed, Quietly</a>.&nbsp; An interesting analysis from April 2001.&nbsp; It would be interesting to see what an update would say.&nbsp; What I find interesting is that the connection to Component Based Development and some other features of technology dependence in business models is being anticipated.<br>
	<span class="byline">posted by Dennis at <a href="#106433340436847349">9/23/2003 09:10:04 AM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106433213861258040">&nbsp;</a><br>
	<a href="http://www.uddi.org/faqs.html">UDDI.org FAQ</a>.&nbsp; Although I haven't found the UDDI.org locator codes yet, this FAQ page provides useful information about Business Registry node operators and business models, and other aspects.<br>
	<span class="byline">posted by Dennis at <a href="#106433213861258040">9/23/2003 08:48:58 AM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106433198711452905">&nbsp;</a><br>
	<a href="http://www.uddi.org/">UDDI.org</a>.&nbsp; It is claimed there is a UDDI Business Registry here, and I finally found it through the little toolbar at the top of the page.  (It looks like an invitation to register for or search the site, which is what has it not be clear.)  Also, there is no UDDI.org registry.  There are the UDDI Version 2 registries currently operated by Microsoft, SAP, IBM, and a few others that one can go to and use.  The UDDI.org does provide information about each of them.  There are also test sites.  What I can't find is the catalog of services that can be used as "locators" according to the IBM UDDI Business Registry.  (It links to this page.)<br /><br />So, as I said in the class discussion, welcome to the learning curve.  It is not the same as the bleading edge, since WS-I provides a very conservative baseline.  And everyone is praying for the network effect to kick in.<br>
	<span class="byline">posted by Dennis at <a href="#106433198711452905">9/23/2003 08:46:27 AM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106432785624283803">&nbsp;</a><br>
	<a href="http://www-106.ibm.com/developerworks/webservices/wsdk/">developerWorks : IBM WebSphere SDK for Web Services : Overview</a>.&nbsp; Ah, they do also support command-line versions of the tools as well as Eclipse plug-ins.<br>
	<span class="byline">posted by Dennis at <a href="#106432785624283803">9/23/2003 07:37:36 AM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106432775639588029">&nbsp;</a><br>
	<a href="http://www-106.ibm.com/developerworks/webservices/wsdk/">developerWorks : IBM WebSphere SDK for Web Services : Overview</a>.&nbsp; This is now at WSDK 5.1, and its relationship to the WS-I baseline is a little confusing to me (because it supports UDDI 2.0 and some other more-recent specifications).  [dh:2003-09-25-14:15pdt - The confusion was mine.  WS-I Base Profile 1.0 does specify UDDI 2.0.  I simply missed it.]<br /><br />The bigger concern is that it is tied to Eclipse and then, for production, WebSphere Studio 5.1.  I have the same problem with some of the new .NET technologies which are tied to Visual Studio .NET.  [dh:2003-09-25-14:16pdt - They still have command-line versions.  I don't know if that holds for the lastest .NET ones or not.   I do want to bring this back to Kent Beck's notion of traveling light though.  And I have been finding that it is smarter to go back to the original sources.  For example, I just found a bug in the WSDL Schema in the WSDL 1.1 note, and am beginning to appreciate not relying on tools, which are doing it their programmer's way and probably not validating against the official definition.&nbsp; I can't find enough in WSDL 1.1 to know how the SOAP binding is really meant to work in a predicable, interoperable way, so I must go look at WS-I Base Profile 1.0 and see if they caught all of this.] <br /><br />What's a girl to do?<br>
	<span class="byline">posted by Dennis at <a href="#106432775639588029">9/23/2003 07:35:56 AM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106430608395111163">&nbsp;</a><br>
	<a href="http://www-106.ibm.com/developerworks/webservices/library/ws-proxy/">Service Registry Proxy</a>.&nbsp; Here's an interesting demonstration of IBM's UDDI4J and WSDL4J APIs. I was sent here for evidence that someone has found a convention for describing, in WSDL, services that accept and deliver services.&nbsp; I don't think I have found that, but this is an interesting resource, along with much else avaiable here on the IBM Developer Works area for Web Services.<br>
	<span class="byline">posted by Dennis at <a href="#106430608395111163">9/23/2003 01:34:43 AM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	
    	<h2><a name="2003-09-22" href="#2003-09-22"><font color="#660000">2003-09-22</font></a></h2>
   	

	<div class="posts">
	<a name="106429912908956956">&nbsp;</a><br>
	<h1>Information Systems</h1><h2>Service Oriented Architecture</h2><h3>UDDI and Web Services Integration</h3><a href="http://www-106.ibm.com/developerworks/webservices/library/ws-rpu1.html?dwzone=webservices">The role of private UDDI nodes in Web services, Part 1: Six species of UDDI</a>.&nbsp; This is a highly-informative article that was linked by classmate Fernando.  I just used the IBM UDDI Business Registry site to register my small consulting business.  I will have to come up with something to have a tModel for!<br>
	<span class="byline">posted by Dennis at <a href="#106429912908956956">9/22/2003 11:38:49 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106427180273727286">&nbsp;</a><br>
	<h1>Computing Milieu</h1><h2>Security, Safety, and Trust</h2><a href="http://www.csoonline.com/read/090103/evolution.html">The Evolution of a Cryptographer - CSO Magazine - September 2003</a>.&nbsp; Another great interview with Bruce Schneier, while promoting his new book, <em>Beyond Fear: Thinking Sensibly About Security in an Uncertain World</em>.&nbsp; There are some great links to follow.&nbsp; And, as usual, a remarkably level-headed perspective.&nbsp; CSO Magazine looks like an interesting resource on security matters, too.<br>
	<span class="byline">posted by Dennis at <a href="#106427180273727286">9/22/2003 04:03:22 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106427138099286386">&nbsp;</a><br>
	<a href="http://www.fortune.com/fortune/print/0,15935,485825,00.html">Fortune.com: Taking Back the Net</a>.&nbsp; This article is a summary of the problems of dealing with spam, viruses, hackers, and so on, in order to take back the Net for the rest of us, including commerce.&nbsp; I am finally tired of the opt-out approach.&nbsp; It simply fails to grant individuals sovereignty.&nbsp; I don't want to deal with anyone that does not demonstrate their regard for my sovereignty in their dealings with me.&nbsp; It may take a while to find substitutes in all places where that is missing, but I am up for it, whatever it takes.<br>
	<span class="byline">posted by Dennis at <a href="#106427138099286386">9/22/2003 03:56:20 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106427095103658559">&nbsp;</a><br>
	<a href="http://newsvote.bbc.co.uk/mpapps/pagetools/print/news.bbc.co.uk/2/hi/technology/3116780.stm">BBC NEWS | Technology | Chatbot bids to fool humans</a>.&nbsp; Here is a nice article about Jabberwacky and its prospects for winning the Loebner Prize this year.&nbsp; One would think that the approach is promising and certainly entertaining.&nbsp; It is not clear what the AI insight will be, but I find this an engaging prospect for promoting more understanding of the boundaries.<br>
	<span class="byline">posted by Dennis at <a href="#106427095103658559">9/22/2003 03:49:11 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106427056242440500">&nbsp;</a><br>
	<a href="http://www.zdnet.com/filters/printerfriendly/0,6061,2914696-92,00.html">ZDNet: Printer Friendly - Got extra horsepower in your system? Not for long</a>.&nbsp; This is an interesting piece.  One problem is all of the background tasks it will take to keep a system secure.&nbsp; There is also some scary observations about our ability to maintain effective backups because of system complexity.&nbsp; I am a little afraid to find out what that is all about.<br>
	<span class="byline">posted by Dennis at <a href="#106427056242440500">9/22/2003 03:42:42 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106426997711622760">&nbsp;</a><br>
	<h1>Information Technology</h1><h2>Industry Trends</h2><h3>Waving Your Career Goodby as It Sails Away</h3><a href="http://www.computerworld.com/printthis/2003/0,4814,85055,00.html">Study: IT worker unemployment at 'unprecedented' levels - Computerworld</a>.&nbsp; Well, here we are.  Of course, I am in the middle of a late-career M.Sc in IT on-line program and won't be complete until Summer, 2005.  And I am equipping myself to teach in this area.&nbsp; So it may be that the field will be left to those who love it and not so much those who expected to be .COM millionaires.<br /><br />But mostly, computing and computer science are the fields I have loved for 45 years, and I have no reason to stop now.<br>
	<span class="byline">posted by Dennis at <a href="#106426997711622760">9/22/2003 03:32:57 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106426868032045930">&nbsp;</a><br>
	<a href="http://www.computerworld.com/printthis/2003/0,4814,84861,00.html">IT's Global Itinerary: Offshore Outsourcing Is Inevitable - Computerworld</a>.&nbsp; This strikes me of far more of the tide and not the waves.&nbsp; Although there is almost no press other than how inevitable this trend is, it strikes me that it is in some sense self-inflicted by IT and the developer community.&nbsp; It is easy to say we are all getting what we deserve, just like the saying that, in a democracy, the people get exactly the government they deserve.  (That might be true for any governance structure, but it is particularly apt for democracies.)<br>
	<span class="byline">posted by Dennis at <a href="#106426868032045930">9/22/2003 03:27:31 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106426962593460617">&nbsp;</a><br>
	<a href="http://www.computerworld.com/printthis/2003/0,4814,85047,00.html">IT outsourcing: It's not just India anymore - Computerworld</a>.&nbsp; More on this hot topic.&nbsp; What is important here is what the Internet has fostered.&nbsp; It is difficult to see backlash to this being effective, and it is consistent with the notion of trade as the leveler for the world economies.&nbsp; I have this sneaking suspicion that the commoditization of web services will, at some point, displace this concern with new ones.&nbsp; It will be interesting to see how that could play out.&nbps; It will take a while.&nbsp; I am not one who raves optimistic about AI technologies, but I do think that efforts to provide simplification and reliability, along with the Web Services move, will bear fruit.  (The shadow knows, ... maniacal laughter ... .)<br>
	<span class="byline">posted by Dennis at <a href="#106426962593460617">9/22/2003 03:27:05 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106426932536641542">&nbsp;</a><br>
	<h1>Computing Milieu</h1><h2>Disaster Recovery and Business Interruption Precautions</h2><h3>It applies on the home front too</h3><a href="http://www.computerworld.com/printthis/2003/0,4814,85028,00.html">First a blackout, now a hurricane: What's an IT manager to do? - Computerworld</a>.&nbsp; I have always kept my eye on disaster-recovery and business-interruption provisions ever since I consulted on a study for a local telephone company.&nbsp; What I notice is that it is more personal and closer to home than that.  My cat slept on my laptop keyboard the other night, and it took several cleanings and other tries to get the machine to start up the next day.&nbps; Along with that, I have currently quarantined over 600 arriving e-mails since Thursday evening, September 18, when a new worm started roaming around.  This is far more than the spam I received in the same interval and, in fact, there was a reduction in spam for a time.&nbsp; But what this reminds me about is that I don't have adequate backup and recovery provisions for (1) hardware loss or (2) system corruption as the result of a successful exploit.  Even though I have a tough gateway/firewall, and even more firewall protection on the machine itself, along with current antivirus and e-mail protection, I don't feel all that safe.  And the prospect of a catastrophic hardware failure is something I am in denial about.&nbsp; By this time next week, I will have done something about that.  (I now have a makeshift keyboard cover so that when my laptop is running as an unattended server to the household network, I don't have to worry about the cat screwing up the keyboard.  It is also training me to use the external keyboard instead of the integrated keyboard, which is wearing out on this 1998-production machine.<br>
	<span class="byline">posted by Dennis at <a href="#106426932536641542">9/22/2003 03:22:05 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	
    	<h2><a name="2003-09-21" href="#2003-09-21"><font color="#660000">2003-09-21</font></a></h2>
   	

	<div class="posts">
	<a name="106417744705842061">&nbsp;</a><br>
	<h1>Information Systems</h1><h2>Service Oriented Architecture</h2><h3>UDDI and Web Services Integration</h3><a href="http://www.oasis-open.org/committees/uddi-spec/ipr.php">OASIS UDDI Specification TC IPR Statements</a>.&nbsp; A small cautionary statement at the end of the IPR page for UDDI: "Intellectual Property Rights - UDDI Version 1 Specification<br />The UDDI Ver. 1.0 specification and implementations thereof have been alleged to infringe U.S. Patent 5,799,151 in Steven M. Hoffer v. Microsoft Corporation, International Business Machines Corporation, and Ariba, Inc. and Does 1 through 20 (U.S. District Court for the Northern District of California, San Jose Division, No. C 01-20731 JW). Those seeking additional information are referred to the papers filed by the parties in the District Court."<br>
	<span class="byline">posted by Dennis at <a href="#106417744705842061">9/21/2003 01:50:47 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106417699981849705">&nbsp;</a><br>
	<a href="http://www.oasis-open.org/committees/tc_home.php?wg_abbrev=uddi-spec">OASIS UDDI Specification TC</a>.&nbsp; Describes the OASIS UDDI Specification TC, the current status of UDDI specifications, and the current work of the Technical Committee.<br>
	<span class="byline">posted by Dennis at <a href="#106417699981849705">9/21/2003 01:43:19 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106417660708013505">&nbsp;</a><br>
	<a href="http://www.oasis-open.org/committees/uddi-spec/doc/tn/uddi-spec-tc-tn-wsdl-v2.htm">Using WSDL in a UDDI Registry, Version 2.0 - OASIS UDDI Spec TC Technical Note</a>.&nbsp; This defines a new approach to using WSDL in a UDDI Registry, as of June 27, 2003.&nbsp; The updated practice is applied with UDDI 2.03 and with UDDI 3.0.<br>
	<span class="byline">posted by Dennis at <a href="#106417660708013505">9/21/2003 01:36:47 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106417613377984867">&nbsp;</a><br>
	<a href="http://www-106.ibm.com/developerworks/webservices/library/ws-udmod1/">A new approach to UDDI and WSDL: Introduction to the new OASIS UDDI WSDL Technical Note</a>.&nbsp; Well, there is more going on here.  OASIS has the Best Practices profile for WSDL-UDDI and here's a good introduction to it.<br>
	<span class="byline">posted by Dennis at <a href="#106417613377984867">9/21/2003 01:28:53 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106417497807488921">&nbsp;</a><br>
	<a href="http://www.w3schools.com/browsers/browsers_stats.asp">Browser Statistics</a>.&nbsp; Nice information on the relative distribution among browsers, screens, and use of JavaScript.<br>
	<span class="byline">posted by Dennis at <a href="#106417497807488921">9/21/2003 01:09:38 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106417418083635630">&nbsp;</a><br>
	<a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/dnwebsrv/html/wsdlexplained.asp">Web Services Description Language (WSDL) Explained</a>.&nbsp; I am reading this page and I keep thinking I have already read it somewhere.&nbsp; This paragraph jumps out at me:<br /><br />"It has been argued that SOAP does not really need an interface description language to go with it. If SOAP is a standard for communicating pure content, then it needs a language for describing that content. SOAP messages do carry type information, and so SOAP allows for dynamic determination of type. But I cannot call a function correctly unless I know its name and the number of parameters and the types of each. Without WSDL, I can determine the calling syntax from documentation that must be provided, or by examining wire messages. Either way, a human will have to be involved, and so the process is prone to error. With WSDL, I can automate the generation of proxies for Web services in a truly language- and platform-independent way. Like the IDL file for COM and CORBA, a WSDL file is a contract between client and server."<br /><br />This is a July 2001 article, but it does provide an example that works close to the code.<br /><br /><br>
	<span class="byline">posted by Dennis at <a href="#106417418083635630">9/21/2003 12:56:20 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106417368772747835">&nbsp;</a><br>
	<a href="http://www.ws-i.org/FAQ.aspx#A04">FAQ: How WS-I.org achieves its goals</a>.&nbsp; This is an important definition of the WS-I approach to <br /><br />1. Web Services testing and implementation guidance to assist customer deployments<br />2. Web Services profiles help with adoption and support for key Web services standards<br />3. Roadmap to help customers understand the long-term direction for Web services evolution.<br /><br>
	<span class="byline">posted by Dennis at <a href="#106417368772747835">9/21/2003 12:48:07 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106417312475911517">&nbsp;</a><br>
	<a href="http://www.ws-i.org/Profiles/Basic/2003-08/BasicProfile-1.0a.htm">Basic Profile - Version 1.0 (BdAD)</a>.&nbsp; This is a profile for the use of XML Schema 1.0, SOAP 1.1, WSDL 1.1, and UDDI 1.0 together in an interoperable way, with provisions for defining clear conformance.  Issued on August 8, 2003, this suggests how far behind the development of specifications this activity will be (SOAP 1.2 is an approved W3C Recommendation and WSDL 1.2 is in Working DRaft).&nbsp; It looks like we are locking down this 1.0 level of profiled combination and it will be a while before there is more.&nbsp; How this works with regard to versioning and migration of profiles as well as the specs and conformant implementations, remains to be figured out from this material.<br>
	<span class="byline">posted by Dennis at <a href="#106417312475911517">9/21/2003 12:38:44 PM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="10641705092590733">&nbsp;</a><br>
	<a href="http://webservices.xml.com/pub/au/134">XML.com: Will Provost</a>.&nbsp; Here is a list of Will's articles on xml.com.&nbsp; There is some juicy material here.<br>
	<span class="byline">posted by Dennis at <a href="#10641705092590733">9/21/2003 11:55:09 AM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106417036452966169">&nbsp;</a><br>
	<a href="http://webservices.xml.com/pub/a/ws/2003/09/02/interop.html">webservices.xml.com: What Interoperability Isn't [Sep. 02, 2003]</a>.&nbsp; Here's a great article about Interoperability that also comes at, in a high-level way, difficulties with the current state of Web Services specifications and today's operation with implementations of <em>proposals</em>.&nbsp; Author Will Provost also suggests approaches as well as ways to recognize where the interoperabilty binds really are.&nbsp; Finally, there is advice on how to navigate this particular swamp.<br>
	<span class="byline">posted by Dennis at <a href="#106417036452966169">9/21/2003 11:52:44 AM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106416985261102802">&nbsp;</a><br>
	<a href="http://webservices.xml.com/pub/au/138">XML.com: Rich Salz</a>.&nbsp; This is the home page for Rich Salz on webservices.xml.com, part of the O'Reilly Network.  I really must bring my "Situating XML" discussion to this place.<br>
	<span class="byline">posted by Dennis at <a href="#106416985261102802">9/21/2003 11:44:12 AM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106416968851149359">&nbsp;</a><br>
	<a href="http://webservices.xml.com/pub/a/ws/2002/05/15/ends.html">webservices.xml.com: Examining WSDL [May. 15, 2002]</a>.&nbsp; This Rich Salz article raises the same concerns that I have about WSDL, especially now that SOAP 1.2 is on the street and the WSDL 1.1-SOAP 1.1 regime may start to unravel.&nbsp; I am busy reading the latest specifications, naturally, and I wonder what the Notes that are the original proposals that go by SOAP 1.1 and WSDL 1.1 say about migration, end-of-life and movement of negotiations up to the "official" versions when they exist.<br>
	<span class="byline">posted by Dennis at <a href="#106416968851149359">9/21/2003 11:41:28 AM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106416897190512885">&nbsp;</a><br>
	<a href="http://www.oreilly.com/catalog/webservess/chapter/ch06.html">Web Services Essentials: Chapter 6: WSDL Essentials</a>.&nbsp; This book was published in February 2002, so it is based on the proposal for WSDL (a.k.a WSDL 1.1) and not any W3C Recommendation for WSDL. (The Working Draft for WSDL 1.2 did not appear until June, 2003.)&nbsp; I wonder what publishers and writers are thinking about, or are they too wrapped up in the victim-of-innovation survival game?&nbsp; This is giving me pause as a writer, too.  When I pull together "Situating XML" I am going to have to deal with that situation [;<)<br>
	<span class="byline">posted by Dennis at <a href="#106416897190512885">9/21/2003 11:29:31 AM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106416860655439397">&nbsp;</a><br>
	<a href="http://searchwebservices.techtarget.com/bestWebLinks/0,289521,sid26_tax288880,00.html">SearchWebServices.com, the source for information on Web services and application integration</a>.&nbsp; This page provides an accurate statement about the condition of WSDL 1.1 and its status.&nbsp; It some how doesn't sink in that these are proposals, and that the W3C Recommendation (someplace beyond the current WSDL 1.2 Working Draft) will be different and all of those stacks built atop of some version of WSDL 1.1 are going to be only interoperable with themselves.&nbsp; This reminds me of a talk that I heard rebroadcast on NPR yesterday, that spoke to how we are being trained to operate as victims by the media and by commercial advertisting.&nbsp; What I am thinking is the fear instilled in developers and to some degree commercial operations, that they need these innovations or they will perish (be obsolete, etc.).&nbsp; I think these technologies will be cool.&nbsp; That they address an artificially stoked survival need for developers or IT operations is useless.&nbsp; I need to go find that talk.<br>
	<span class="byline">posted by Dennis at <a href="#106416860655439397">9/21/2003 11:23:26 AM</a></span></div>
<br>
  <!-- 2002-11-08 Change date format to yyyy-mm-dd and bookmark it 
                2002-11-09 Tune the color and make a purplized link out of it -->
	

	<div class="posts">
	<a name="106416820127032573">&nbsp;</a><br>
	<a href="http://searchwebservices.techtarget.com/bestWebLinks/0,289521,sid26_tax288854,00.html">SearchWebServices.com, the source for information on Web services and application integration</a>.&nbsp; We are looking at WSDL and UDDI this week.  What is interesting is the comparison of the W3C effort and where they are (e.g., June 2003 working drafts on WSDL 1.2) versus all of the early-adopter activity.&nbsp; Since there is no W3C recommendation at this point, there is the interesting problem of what is it that early-adopter's adopt.  Are they reading the WSDL 1.1 Note or are they simply using what is supplied in .NET, Java J2EE, and other offerings that may have not specific relationships to either the WSDL 1.1 Note nor to the subsequent technical and working-draft activities.&nbsp; So, where will the interoperability come from?  <br>
	<span class="byline">posted by Dennis at <a href="#106416820127032573">9/21/2003 11:16:41 AM</a></span></div>
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