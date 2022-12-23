\version "2.24.0"

\include "../titling.ily"
\paper {
  page-breaking = #ly:one-line-auto-height-breaking
}

music = {
  \time 2/4
  \set TabStaff.minimumFret = #5
  \set TabStaff.restrainOpenStrings = ##t
  c''16 a g e a g e d |
  g16 e d c e d c a |
  d16 c a g c a g e |
  a16 g e d g e d c |
  a16 r r8 r4 | \bar "|."
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
