\version "2.22.0"

\header {
  title = "Donna Lee"
  time-interval = "2:59–3:50"
  artist = "Nine Inch Nails"
  album = "The Downward Spiral"
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
  \key a-flat \major
  \time 4/4

  \set TabStaff.restrainOpenStrings = ##t

  r4 \set TabStaff.minimumFret = #8 \tuplet 3/2 { g'16( a-flat g) } f f-flat e-flat d-flat c b-flat \set TabStaff.minimumFret = #7 a \set TabStaff.minimumFret = #8 c, e-flat f
  |
  \tuplet 3/2 { g-flat16( a-flat g-flat) } f e-flat d f a-flat c g f r8 r \set TabStaff.minimumFret = #5 e16 d
  |
  e-flat!16 a,\glissando b-flat d-flat f a-flat! c e-flat d-flat f-flat, \tuplet 3/2 { f a-flat c } b-flat f-flat e-flat d-flat
  |
  c16 e-flat g b-flat a-flat8 e-flat16 f g-flat b-flat d-flat f f-flat c r8
  |
  \set TabStaff.minimumFret = #3 e-flat4-2~16 d-flat c b-flat d-flat c r8 \set TabStaff.minimumFret = #4 g-flat'16-4 e e-flat d-flat
  |
  \set TabStaff.minimumFret = #5 c16-2 16 d-flat d e-flat d-flat c b-flat a c e-flat f \tuplet 3/2 { g-flat( a-flat g-flat) } f e-flat
  |
  d16 d-flat c \set TabStaff.minimumFret = #3 b b-flat d-flat,! e a-flat \tuplet 3/2 { g( g-flat f) } \set TabStaff.minimumFret = #2 e!8 r4
  |
  \set TabStaff.minimumFret = #8 e-flat'16 c a-flat f c'[ b-flat r g-flat] g b-flat d-flat \set TabStaff.minimumFret = #9 f-flat \tuplet 3/2 { g-flat( g g-flat) } f-flat! e-flat32( d-flat)
  |
  c8 r \set TabStaff.minimumFret = #8 \tuplet 3/2 { g'16( a-flat g) } f f-flat e-flat d-flat c b-flat \set TabStaff.minimumFret = #7 a \set TabStaff.minimumFret = #8 c, e-flat f
  |
  \tuplet 3/2 { g-flat16( a-flat g-flat) } f e-flat d f a-flat c g f r8 r \set TabStaff.minimumFret = #7 g16 f
  |
  e f g \set TabStaff.minimumFret = #6 a-flat b-flat[ a-flat r f] \tuplet 3/2 { d-flat'( e-flat d-flat) } \set TabStaff.minimumFret = #5 c b-flat \tuplet 3/2 { a-flat( b-flat a-flat) } g e!
  |
  f8 r r4 r2
  |
  \set TabStaff.minimumFret = #4 c'16 b c c-sharp \set TabStaff.minimumFret = #6 d c-sharp! d d-sharp e d-sharp! e d-sharp! d c-sharp! d a-flat! |
  \tuplet 3/2 { a-flat16( b-flat a-flat) } \set TabStaff.minimumFret = #5 g a-flat b-flat a-flat g f b, d f \set TabStaff.minimumFret = #6 a-flat b \set TabStaff.minimumFret = #5 g' f e
  |
  e-flat!16 d-flat c b-flat a g-flat f e-flat d-flat f a-flat c b-flat a-flat g e-flat
  |
  a-flat16[ r a-flat g] a-flat[ r a-flat g] a-flat[ r a-flat g] a-flat g c-flat c
  |
}

\score {
  <<
    \chords {
      a-flat2 g-flat4:7 f |
      b-flat1:7 |
      b-flat2:7 e-flat |
      a-flat2 g-flat4:7 a-flat:7 |
      d-flat1 |
      a-flat2 f:7 |
      b-flat4:7 b-flat2.:dim |
      b-flat2:7 e-flat |
      a-flat2 g-flat4:7 f |
      b-flat1:7 |
      g2:m c |
      f1:m |
      f4 d:m g:6 d:m |
      e-flat4 d:m g2:7 |
      c4:m7 f:7 b-flat:m7 e-flat:7 |
      a-flat1 |
    }
    \new Staff \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
  \layout { }
  \midi { \tempo 4 = 116 }
}
