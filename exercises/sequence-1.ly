\version "2.22.0"

\include "../titling.ily"
\paper {
  page-breaking = #ly:one-line-auto-height-breaking
}

music = {
  \time 2/4
  \set TabStaff.minimumFret = #5
  \set TabStaff.restrainOpenStrings = ##t
  \tuplet 3/2 4 {
    a,8 c d c d e |
    d e g e g a |
    g a c a c d |
    c d e d e g |
    e g a g a c | \bar "|."
  }
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
