\version "2.22.0"

\include "../titling.ily"
\paper {
  page-breaking = #ly:one-line-auto-height-breaking
}

music = {
  \time 2/4
  \set TabStaff.minimumFret = #5
  \set TabStaff.restrainOpenStrings = ##t
  \repeat volta 2 {
    a,16^"Repeat many times" ais b c d dis e f |
    g16 gis a ais c cis d dis |
    e f fis g a ais b c |
    c b bes a g ges f e |
    ees d des c bes a aes g |
    f e ees d c b bes a |
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
