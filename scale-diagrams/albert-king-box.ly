\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\markup {
  \override #'(size . 6) \fret-diagram-container {
    \center-column {
      \fret-diagram-verbose #'(
        (place-fret 6 8 "♭3" inverted grey75)
        (place-fret 6 10 "4" inverted bisque3)
        (place-fret 5 7 "5" inverted grey75)
        (place-fret 5 10 "♭7" inverted bisque3)
        (place-fret 4 7 "1" grey75)
        (place-fret 4 10 "♭3" inverted grey75)
        (place-fret 3 7 "4" inverted bisque3)
        (place-fret 3 9 "5" inverted)
        (place-fret 2 8 "♭7" inverted burlywood4)
        (place-fret 2 10 "1")
        (place-fret 1 8 "♭3" inverted)
        (place-fret 1 10 "4" inverted burlywood4))
      \vspace #0.5
      "Minor pentatonic, position 2"
    }
  }
}
