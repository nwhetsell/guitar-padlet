\version "2.22.0"

\header {
  title = "Ruiner"
  time-interval = "2:59–3:50"
  artist = "Nine Inch Nails"
  album = "The Downward Spiral"
}

\include "../lilypond-bend-spanner/bending.ily"
\include "../lilypond-bending-additions/bending-additions.ily"
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
  \key a \minor
  \time 4/4

  \set Score.currentBarNumber = #88
  \bar "" % Show the first bar number.

  \set TabStaff.restrainOpenStrings = ##t

  \set TabStaff.minimumFret = #10
  r2 \bent-grace d'16\preBend\startBend \afterGrace e4.\stopBend\startBend { \afterGrace-stopBend d16 } g,8~ |
  g2 c8( d) d( c) |
  \bent-grace d16\preBend\startBend e-flat8\stopBend\startBend d16\stopBend( c) a4 r g16( g-sharp a8) |
  \tuplet 3/2 2 { d4 d d \bent-grace d16\preBend\startBend etqf4\stopBend \bent-grace d16\preBend\startBend e-flat4\stopBend \bent-grace d16\preBend\startBend eqf4\stopBend } |
  \set TabStaff.minimumFret = #12
  \grace d16\glissando e8 g a4 r \ottava #1 d4~\startBend |
  d4 e8\stopBend r \bent-grace d16\preBend\startBend \afterGrace e4.\stopBend\startBend { \afterGrace-stopBend d16 } g,8~ |
  g2 r8 d' c d |
  d4\startBend \bent-grace { e16\stopBend } d4\startBend \bent-grace { e16\stopBend } \tuplet 3/2 { d4\startBend \bent-grace { e16\stopBend } d4 c } |
  d8\startBend \bent-grace { e16\stopBend } \set TabStaff.minimumFret = #15 e8 e4 \tuplet 3/2 { g4 g g } |
  \repeat unfold 4 { \bent-grace a16\preBend\startBend bqf4\stopBend } |
  \bent-grace a16\preBend\startBend bqf2.\stopBend \ottava #0 r8 \set TabStaff.minimumFret = #3 c,,,8~ |
  c4 d8 r \tuplet 3/2 { \bent-grace d16\preBend\startBend e4\stopBend \bent-grace d16\preBend\startBend e-flat4\stopBend d4 } |
  c16( d c \set TabStaff.restrainOpenStrings = ##f a) \set TabStaff.restrainOpenStrings = ##t c4 r c16( d c \set TabStaff.restrainOpenStrings = ##f a) \set TabStaff.restrainOpenStrings = ##t |
  r8 \grace d16\glissando \set TabStaff.minimumFret = #5 e8 g a <a d>4\startBend <b-flat e-flat>8\stopBend g8 |
  d'4\startBend e\stopBend \bent-grace d16\preBend\startBend \afterGrace e2\stopBend\startBend { \afterGrace-stopBend d16 } |
  g,8 a c\startBend \bent-grace { c-sharp16\stopBend } a8 c\startBend \bent-grace { c-sharp16\stopBend } a8 g e e-flat d c a a'4. g'8~ |
  g1 |
  <a, d>16\glissando <g c>8. <g c>4\startBend \bent-grace { <gqs cqs>16\stopBend } r2 |
  <a d>8\glissando <g c>8 r <a d f-sharp> r <d f-sharp>\startBend \bent-grace { <e-flat g>16\stopBend } r8 \bent-grace { <d f-sharp>\preBend\startBend } <e-flat! g>\stopBend\startBend |
  <d f-sharp>8\stopBend c d\bendAfter #-8 r8 r4 d,4~ |
  \tuplet 3/2 { d4\glissando \set TabStaff.minimumFret = #4 c-sharp a } c-sharp8\glissando \set TabStaff.minimumFret = #3 c g-sharp c\glissando |
  \set TabStaff.minimumFret = #2 b g b4 g8 \set TabStaff.restrainOpenStrings = ##f e \set TabStaff.restrainOpenStrings = ##t g4~ |
  g2 a2 |
  R1
}

\score {
  <<
    \chords {
      a1:m
      \repeat unfold 3 {
        c1
        g1
        d1
        a1:m
        c1
        g2/b g2:m/b-flat
        a1*2:m
      }
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
