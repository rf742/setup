.nr PO 0.5i
.nr LL 10i
.nr LT 0.5i
.nr HM 0.5i
.nr FM 0.5i
.R1
accumulate
.R2
.MC 45
.TL
My Title
.AU
First Last
.NH 1
Introduction
.LP
This is a paragraph to start the three column cheatsheet.
Somestimes things need to written in paragraph form.
.PP
This is another paragraph, notice the difference in indentation.
The one above was given with
.ft CW
\&.LP
.ft
while this paragraph was given with the
.ft CW
\&.PP
.ft
command. In summary, we can see:
.TS
allbox tab(@);
l l.
\&.LP@Leading Paragraph
\&.PP@Regular Paragraph
.TE
.NH 2
Page Formatting
.LP
As this is a cheatsheet, we should have pretty narrow margins, as we want
to include as much information as possible on this page.
Below
we will see a chemical structure. This is allowed as the makefile
has the -j command used in it, which preprocesses with chem, which
also implies preprocessing with pic (which could be manually done
via the inclusion of -p).
.cstart
CH3
bond
CH2
bond
CH3
.cend
Sometimes we also need to include information in tabular format, which
requires us to pass -t to groff to preprocess with tbl. See a sample table or two
below.
.TS 
allbox tab(@); 
c c c. 
This@is@centered
Well,@this@also
.TE
.PP
Sometimes we need to cite things. This requires the use of the program refer. Let's 
say for example that we need to cite the orignal paper on tbl to get more examples
of how to format tables, we will do that right here.
.[
cherry tbl
.]
We could also want to see the original manual on the chem program which I will cite
here.
.[
chem kernighan
.]
Here, in this document, I am passing the accumulate flag to refer. This can be done
either by throwing 
.ft CW 
-e
.ft
to the cli, or by including accumulate in the area between .R1 and .R2 at the top of the
document.
