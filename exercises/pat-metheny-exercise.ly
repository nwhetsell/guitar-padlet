\version "2.23.82"

% https://www.youtube.com/watch?v=6R4LKZLhHb0

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

  \set TabStaff.minimumFret = #3
  \tuplet 3/2 4 { a-flat,8 \mf e-flat' c' c, a-flat' e-flat' e-flat, c' a-flat' a-flat,8 e-flat' c' } |
  \tuplet 3/2 4 { d-flat,,8 a-flat' f' f, d-flat' a-flat' a-flat, f' d-flat'~ } 4 |
  \set TabStaff.minimumFret = #4
  \tuplet 3/2 4 { b-flat,8 g-flat' d-flat' g-flat,, d-flat' b-flat' \set TabStaff.minimumFret = #3 f, d-flat' a-flat' \set TabStaff.minimumFret = #1 e-flat, b-flat' g-flat' } |
  \set TabStaff.minimumFret = #4
  \tuplet 3/2 4 { d-flat,8 a-flat' f' \set TabStaff.minimumFret = #1 c-flat, g-flat' e-flat' b-flat, g-flat' d-flat'~ } 4 |
  \tuplet 3/2 4 { b-flat,8 g-flat' d-flat' c-flat, g-flat' e-flat' \set TabStaff.minimumFret = #4 d-flat,8 a-flat' f' \set TabStaff.minimumFret = #6 e-flat, c-flat' g-flat' } | \bar "||"
  \time 5/4
  \set TabStaff.minimumFret = #8
  \tuplet 3/2 4 { f,8 d-flat' a-flat' g-flat, d-flat' b-flat' b-flat,8 g-flat' d-flat' d-flat, b-flat' g-flat'~ } 4 | \bar "||"
  \time 4/4
  \set TabStaff.minimumFret = #10
  \tuplet 3/2 4 { e-flat,8 c-flat' g-flat' d-flat, a-flat' f' c, a-flat' e-flat' \set TabStaff.minimumFret = #8 b-flat, g-flat' d-flat' } | \bar "||"
  \set TabStaff.minimumFret = #5
  \time 3/4
  \tuplet 3/2 4 { a-flat,8 e-flat' c' g, e-flat' b-flat' \set TabStaff.minimumFret = #2 f, c' a-flat' } | \bar "||"
  \time 5/4
  \set TabStaff.minimumFret = #5
  \tuplet 3/2 4 { e,8 b-flat' g' g, d-flat' b-flat' \set TabStaff.minimumFret = #8 b-flat, e d-flat' \set TabStaff.minimumFret = #11 d-flat, g e' \set TabStaff.minimumFret = #13 e, b-flat' g' } | \bar "||"
  \time 4/4
  \tuplet 3/2 { f,8 c' a-flat'~ } 4 r2 | \bar "|."
}

\score {
  <<
    \chords {
      a-flat4 a-flat/c a-flat/e-flat a-flat |
      d-flat4 d-flat/f d-flat2/a-flat |
      g-flat4/b-flat g-flat d-flat/f e-flat:m |
      d-flat4 c-flat g-flat2/b-flat |
      g-flat4/b-flat c-flat d-flat c-flat/e-flat |
      d-flat4/f g-flat g-flat/b-flat g-flat2/d-flat |
      c-flat4/e-flat d-flat a-flat g-flat/b-flat |
      a-flat4 e-flat/g f:m |
      e:dim
    }
    \new Staff \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
  \layout { \numericTimeSignature }
  \midi { }
}
