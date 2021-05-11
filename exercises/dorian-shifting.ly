\version "2.22.0"

\include "../titling.ily"
\paper {
  page-breaking = #ly:one-line-auto-height-breaking
}

dorian-position-five = \markup {
  \fret-diagram-verbose #'(
    (place-fret 5 12 "D")
    (place-fret 5 14 "E" inverted plum4)
    (place-fret 5 15 "F" inverted)
    (place-fret 4 12 "G" inverted burlywood4)
    (place-fret 4 14 "A" inverted)
    (place-fret 3 11 "B" inverted plum4)
    (place-fret 3 12 "C" inverted burlywood4)
    (place-fret 3 14 "D")
    (place-fret 2 12 "E" inverted plum4)
    (place-fret 2 13 "F" inverted)
    (place-fret 2 15 "G" inverted burlywood4)
    (place-fret 1 12 "A" inverted)
    (place-fret 1 14 "B" inverted plum4)
    (place-fret 1 15 "C" inverted burlywood4))
}

fret-diagram-size = 2.5

music = {
  \time 7/4
  \set TabStaff.restrainOpenStrings = ##t
  \repeat volta 2 {
    \set TabStaff.minimumFret = #5

    d8^\markup { \combine
      \transparent \draw-line #'(0 . -8.5)
      \override #`(size . ,fret-diagram-size) \fret-diagram-container \dorian-position-five
    } e f g a \set TabStaff.minimumFret = #4 b-1 c

    d \set TabStaff.minimumFret = #5 e-1 f g a b c

    \set TabStaff.minimumFret = #10

    d-1^\markup { \combine
      \transparent \draw-line #'(0 . -6)
      \override #`(size . ,fret-diagram-size) \fret-diagram-container \fret-diagram-verbose #'(
        (place-fret 6 5 "D")
        (place-fret 6 7 "E" inverted plum4)
        (place-fret 6 8 "F" inverted)
        (place-fret 5 5 "G" inverted burlywood4)
        (place-fret 5 7 "A" inverted)
        (place-fret 4 4 "B" inverted plum4)
        (place-fret 4 5 "C" inverted burlywood4)
        (place-fret 4 7 "D")
        (place-fret 3 4 "E" inverted plum4)
        (place-fret 3 5 "F" inverted)
        (place-fret 3 7 "G" inverted burlywood4)
        (place-fret 2 5 "A" inverted)
        (place-fret 2 7 "B" inverted plum4)
        (place-fret 2 8 "C" inverted burlywood4)
        (place-fret 1 5 "D"))
    } c b a \set TabStaff.minimumFret = #9 g-4 f e

    d c b \set TabStaff.minimumFret = #10 a-3 g f e

    d e f g a \set TabStaff.minimumFret = #9 b-1 c

    d e f g \set TabStaff.minimumFret = #10 a-1 b c

    d \set TabStaff.minimumFret = #5 c-4^\markup { \combine
      \transparent \draw-line #'(0 . -6)
      \override #`(size . ,fret-diagram-size) \fret-diagram-container \dorian-position-five
    } b a g f e

    \set TabStaff.minimumFret = #4
    d-4 c b \set TabStaff.minimumFret = #5 a-3 g f e
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
