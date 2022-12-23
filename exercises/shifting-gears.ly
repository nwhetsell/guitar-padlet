\version "2.24.0"

\include "../titling.ily"
\paper {
  page-breaking = #ly:one-line-auto-height-breaking
}

music = {
  \set TabStaff.minimumFret = #5
  a'4^"Repeat measures in any order" \repeat unfold 3 a |
  \repeat unfold 8 a8 |
  \tuplet 3/2 4 { \repeat unfold 12 a8 } |
  \repeat unfold 16 a16 |
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
