# GitHub Repository orcmid.github.io Security Policy/Sandbox
<!-- ---1----|----2----|----3----|----4----|----5----|----6----|----7----|--*
     SECURITY.md 1.4.4             UTF-8                        dh:2024-11-02
     -->
## About the Orcmid on GitHub Security-Policy Sandbox

Individual projects of [Orcmid on GitHub](https://github.com/orcmid/)
have separate and specific Security Policy statements, vulnerability reports,
and procedures for reporting vulnerabilities.  Consult **those** repository
Security tabs and/or `SECURITY.md` files for their specific policies and
reporting procedures.  The same applies for the project repositories of
others.

Review
[GitHub Guidance](https://docs.github.com/en/code-security/security-advisories/guidance-on-reporting-and-writing-information-about-vulnerabilities)
for  details of GitHub support for secure reporting and handling
of vulnerabilities.

The material below applies to the
[orcmid.github.io](https://github.com/orcmid/orcmid.github.io) project
repository and the web pages produced from that repository.  It follows
the pattern of all Orcmid on GitHub project repository security policies.

## Welcome to the Sandbox

The Security Policy Sandbox is provided for completeness, as a safeguard, and
as an example.  Use the sandbox for familiarization and practice with security
advisories and the vulnerability reporting process.

The web page
[https://orcmid.github.io/SECURITY.html](https://orcmid.github.io/SECURITY.html)
 provides the same Security Policy statement that can be viewed via the
[Security-Policy Sandbox](https://github.com/orcmid/orcmid.github.io/security)
"View security policy" link.

## Supported Versions (Sandbox case)

**2024-11-01 Status**: There are no code releases at the
[orcmid.github.io](https://github.com/orcmid/orcmid.github.io)
repository/project.  Content consists of HTML, Markdown, images, and text
files published as static GitHub Pages to
[Orcmid on GitHub](https://orcmid.github.io).  See the project
[README](https://github.com/orcmid/orcmid.github.io/blob/master/README.md)
for further details.

| Version | Supported          |
| ------- | ------------------ |
| none    | :x:                |

## Finding Vulnerability Announcements

Public vulnerability announcements confirm vulnerabilities, reporting their
nature, their mitigation, and any actions required by those who may be
employing vulnerable software versions. Occassionally, a vulnerability
announcement can explain why a particular situation does not qualify as a
vulnerability.

*Already-issued vulnerability announcements are found via the Security
tab of specific [Orcmid on GitHub](https://github.com/orcmid/) project
repositories.*

Vulnerability announcements for sandbox trials are identified as PRACTICE
announcements.  In the unlikely case that an actual vulnerability arises
at the `orcmid.github.io` repository, the title will reveal that case.

## Reporting a Vulnerability

**IMPORTANT: Please report vulnerability discoveries at the specific
GitHub repository for software having the suspected/detected cybersecurity
defect.** That is where analysis, resolution, and any vulnerability
announcement must occur.  Use the Sandbox only for practice and trial
submissions to observe how the process works.

*There is no support for vulnerabilities of independently-released
distributions of modified forks, clones, or other derivatives provided by
others.*

It can be worthwhile to confirm that a derivative's
vulnerability does not arise from the origin Orcmid on GitHub project; when
that is the case, no support is available and any vulnerability announcement
here will reflect that conclusion.

### What to Expect

Being a cybersecurity expert is *not* a requirement for reporting an observed
vulnerability. The form provided for entering a vulnerability report is
structured for use by cybersecurity experts as well as non-experts.

An initial vulnerability report can be very simple:

- Reporters must have a GitHub account and be logged into GitHub to submit
a report.
- English language is required, even if very brief.
- A title must be chosen for the report.  For a practice report, please
include the word PRACTICE in the title.
- There must be a brief description of the identified vulnerability.  This can
be a simple statement.  This is also where any non-English communication
should be requested.
- There must be an "ecosystem" choice.  It is not necessary to know what
that is.  The "other" entry is always appropriate.

Other details and entries are *optional*.  Some depend on expert knowledge and
practices around cybersecurity procedures, including use of the Cybersecurity
Vulnerability and Exposures
([CVE](https://en.wikipedia.org/wiki/Common_Vulnerabilities_and_Exposures))
identifiers and associated reports, and use of the Common Weakness Scoring
System
([CVSS](https://en.wikipedia.org/wiki/Common_Vulnerability_Scoring_System)).

### The Simplest Path

Where there is an established Security Policy, the page displayed for the
repository's Security tab will have a "Report a vulnerability" button.

![Report a vulnerability](https://orcmid.github.io/images/report-button.png)

#### Click the button.  An Advisory Details form template will open.

![Describe vulnerability](https://orcmid.github.io/images/describe-vuln.png)

#### Provide a Title and enter a simple Summary.

If you have additional information, use the topics that are listed;
otherwise, leave remaining topics in the template unchanged.

#### Scroll down in the page to the "Affected products" topic.

The "Select an ecosystem" item provides a pull-down when clicked.

![Ecosystem Selection](https://orcmid.github.io/images/Ecosystem-Other.png)

#### For Orcmid on GitHub, "Other" is always a good selection.

After you submit the form, there is a confirmation and invitation to
be credited with the report.

![Report Confirmation](https://orcmid.github.io/images/ReportConfirmation.png)

#### Further discussion occurs with private messages to your GitHub account.

### Alternative Secure Communication

An alternative is available for those equipped to use PGP (Pretty Good
Privacy) public key cryptography features.

For direct private secure communication, send an ASCII-armored
PGP-encrypted report in a plaintext email to [orcmid](mailto:orcmid@msn.com).
Download and use the
[orcmid Apache public key](https://people.apache.org/keys/committer/orcmid.asc).

Provide equivalent information to that solicited in the Description portion
of the Vulnerability Report template.
