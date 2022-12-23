\version "2.24.0"

\include "../titling.ily"
\paper {
  page-breaking = #ly:one-line-auto-height-breaking
}

notes = \relative {
  a,8 d c e |
  d8 g e a |
  g8 c a d |
  c8 e d g |
  e8 a g c |
}

music = {
  \time 2/4
  \set TabStaff.minimumFret = #5
  \set TabStaff.restrainOpenStrings = ##t
  \notes
  \retrograde \notes
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
