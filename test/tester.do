
/*

set more off
set trace off
clear all
sysuse auto
pause on 


// tex3pt test
cd G:\tex3pt\test
which tex3pt


// do without a table file
tex3pt using "test.tex", preamble(info list) replace

// run some regression
eststo: reg price mpg
esttab * using "RAW/testRaw.tex", fragment booktabs replace b(2) se(2) noobs  

// now tex3pt the table
tex3pt "testRaw.tex" using "test.tex", title("this is a table") note("this is a note") clearpage  relativepath("RAW/")

// now compile
tex3pt using "test.tex", enddoc compile
*/

		// create preamble shell file
		clear
		tex3pt using master4.tex, preamble(list info) package(comment) replace
		
		// run analysis
		sysuse auto
		replace price=price/1000
		eststo example41: reg price mpg
		eststo example42: reg price mpg weight
		esttab example41 using test41.tex, b se fragment booktabs replace 
		esttab example42 using test42.tex, b se fragment booktabs replace 

		// add tables to shell file
		tex3pt "test41.tex" using "master4.tex", title("example 4.1")
		tex3pt "test42.tex" using "master4.tex", title("example 4.2")
		
		// end tex3pt file and compile
		tex3pt using "master4.tex", enddoc compile
