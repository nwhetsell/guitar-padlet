\version "2.24.0"

\header {
  title = "Do Like Eddie"
  time-interval = "0:18–0:39"
  artist = "John Scofield"
  album = "Hand Jive"
}

\include "../titling.ily"
\paper {
  #(set-paper-size "letter")
  left-margin = 0.5\in
  top-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in
}

\language "english"

music = {
  \key e-flat \major % B flat mixolydian
  \time 4/4

  \set Score.barNumberVisibility = #all-bar-numbers-visible
  \set Score.currentBarNumber = #8

  \set TabStaff.restrainOpenStrings = ##t

  \set TabStaff.minimumFret = #5
  r2 r16 b-flat8 d-flat16( d) f g8 |
  a-flat4~16 g8 f16~16 b-flat, r8 r8. f'16~ |
  f16 b-flat,8 a-flat16 b-flat a-flat b-flat d-flat \^ d8 r8 r4 |
  \tuplet 3/2 { a-flat'8 b-flat g } a-flat g16 f~16 \grace f-sharp8\glissando g8.~16 f e-flat \grace d-flat8\glissando d16~ |
  d16 b-flat8 b-flat16~16 b-flat8.\bendAfter #-8 r2 |
  \grace g'8\glissando a-flat4 \grace f-sharp8\glissando g8. f16~16 b-flat,8. r4 |
  a-flat'8 b-flat16 g~16 a-flat8 f16~16 b-flat,8 f'16~16 16 g8~ |
  g16 f8 e-flat16 16 16( c) b-flat e-flat( c) g'16 f~ \^ \skipNC 16 f-sharp e-flat a-flat |
  f16 e-flat( c) b-flat d-flat( d) a-flat b-flat~4 r |
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
  \midi { \tempo 4 = 98 }
}
