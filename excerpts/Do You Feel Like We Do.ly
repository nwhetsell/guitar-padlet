\version "2.23.0"

\header {
  title = "Do You Feel Like We Do"
  time-interval = "0:18–0:27"
  artist = "Peter Frampton"
  album = "Frampton Comes Alive!"
}

\include "../titling.ily"
\paper {
  page-breaking = #ly:one-line-auto-height-breaking
}

\language "english"

music = {
  \key c \major
  \time 4/4

  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \set Score.currentBarNumber = #9

  \set TabStaff.restrainOpenStrings = ##t

  \set TabStaff.minimumFret = #8 c''8 a \set TabStaff.minimumFret = #10 d c~c a g4 |
  f8 d a-flat'16\glissando g16 f8~f d c4 |
  f8 d a-flat'16\glissando g16 f8~f d f4 |
  \set TabStaff.minimumFret = #8 g16\glissando \set TabStaff.minimumFret = #10 a c d r c g a \tuplet 3/2 { f( g f) } d f\glissando \set TabStaff.minimumFret = #9 e \set TabStaff.minimumFret = #10 d c8 |
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
  \layout { }
  \midi { \tempo 4 = 110 }
}
