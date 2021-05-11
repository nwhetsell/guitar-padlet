\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\markup {
  \override #'(size . 6) \fret-diagram-container {
    \center-column {
      \fret-diagram-verbose #'(
        (place-fret 5 13 "♭7" inverted)
        (place-fret 5 15 "1")
        (place-fret 4 14 "3" inverted)
        (place-fret 3 12 "5" inverted)
        (place-fret 3 15 "♭7" inverted)
        (place-fret 2 13 "1")
        (place-fret 1 12 "3" inverted)
        (place-fret 1 15 "5" inverted)
      )
      \vspace #0.5
      "Arpeggio"

      \vspace #1

      \fret-diagram-verbose #'(
        (place-fret 6 12 "3" inverted grey50)
        (place-fret 6 15 "5" inverted grey50)
        (place-fret 5 12 "6" inverted bisque3)
        (place-fret 5 13 "♭7" inverted)
        (place-fret 5 15 "1")
        (place-fret 4 12 "2" inverted bisque3)
        (place-fret 4 14 "3" inverted)
        (place-fret 3 12 "5" inverted)
        (place-fret 3 14 "6" inverted bisque3)
        (place-fret 3 15 "♭7" inverted)
        (place-fret 2 13 "1")
        (place-fret 2 15 "2" inverted bisque3)
        (place-fret 1 12 "3" inverted)
        (place-fret 1 15 "5" inverted)
      )
      \vspace #0.5
      "Major pentatonic, position 3"
    }
  }
}
