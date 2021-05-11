\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\markup {
  \fret-diagram-container {
    \center-column {
      \fret-diagram-verbose #'(
        (place-fret 6 5  "1")
        (place-fret 6 7  "2" inverted plum4)
        (place-fret 6 8 "♭3" inverted)
        (place-fret 5 5  "4" inverted burlywood4)
        (place-fret 5 7  "5" inverted)
        (place-fret 5 8 "♭6" inverted plum4)
        (place-fret 4 6  "7" inverted burlywood4)
        (place-fret 4 7  "1")
        (place-fret 3 4  "2" inverted plum4)
        (place-fret 3 5 "♭3" inverted)
        (place-fret 3 7  "4" inverted burlywood4)
        (place-fret 2 5  "5" inverted)
        (place-fret 2 6 "♭6" inverted plum4)
        (place-fret 1 4  "7" inverted burlywood4)
        (place-fret 1 5  "1")
        (place-fret 1 7  "2" inverted plum4)
        (place-fret 1 8 "♭3" inverted))
      \vspace #0.5
      "Harmonic minor"

      \vspace #1

      \fret-diagram-verbose #'(
        (place-fret 6 5  "1")
        (place-fret 6 7  "2" inverted plum4)
        (place-fret 6 8 "♭3" inverted)
        (place-fret 5 5  "4" inverted burlywood4)
        (place-fret 5 7  "5" inverted)
        (place-fret 5 8 "♭6" inverted plum4)
        (place-fret 4 5 "♭7" inverted burlywood4)
        (place-fret 4 7  "1")
        (place-fret 3 4  "2" inverted plum4)
        (place-fret 3 5 "♭3" inverted)
        (place-fret 3 7  "4" inverted burlywood4)
        (place-fret 2 5  "5" inverted)
        (place-fret 2 6 "♭6" inverted plum4)
        (place-fret 2 8 "♭7" inverted burlywood4)
        (place-fret 1 5  "1")
        (place-fret 1 7  "2" inverted plum4)
        (place-fret 1 8 "♭3" inverted))
      \vspace #0.5
      "Natural minor"
    }
  }
}
