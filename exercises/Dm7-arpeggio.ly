\version "2.24.0"

\include "../titling.ily"
\paper {
  page-breaking = #ly:one-line-auto-height-breaking
}

music = {
  \time 2/4
  \set TabStaff.minimumFret = #5
  \set TabStaff.restrainOpenStrings = ##t
  f16 d f a c f, a c |
  d16 a c d f c d f |
  a16 d, f a c f, a c |
  d16 r r8 r4 | \bar "|."
}

\score {
  <<
    \new Staff \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}
