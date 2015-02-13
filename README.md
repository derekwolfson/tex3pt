# tex3pt

tex3pt is a user-written Stata command that creates LaTeX tables. It postprocesses LaTeX output from the Stata package [estout] [estout], using the LaTeX package [threeparttable] [threeparttable] for better formatting of captions and notes.

# Installation and Updating

Install with `ssc install tex3pt`.

Check for updates with `adoupdate tex3pt`.

Update with `adoupdate tex3pt, update`.

# Credits

tex3pt is written by Derek Wolfson.

Thanks to Jörg Weber, whose [series of posts] [weberblog] on integrating Stata and LaTeX was the basis for much of tex3pt's code.

Thanks to Ben Jann for estout and to Donald Arseneau for threeparttable.

Additional thanks to Matt White, Raymond Guiteras, Joseph Wright, David Carlisle, and Nils Enevoldsen.

[estout]: http://repec.org/bocode/e/estout/
[threeparttable]: http://www.ctan.org/pkg/threeparttable
[weberblog]: http://www.jwe.cc/2012/03/stata-latex-tables-estout/
