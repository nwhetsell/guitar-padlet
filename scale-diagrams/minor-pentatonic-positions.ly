\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\markup {
  \fret-diagram-container {
    \center-column {
      \fret-diagram-verbose #'(
        (place-fret 6 5 "1")
        (place-fret 6 8 "♭3" inverted)
        (place-fret 5 5 "4" inverted burlywood4)
        (place-fret 5 7 "5" inverted)
        (place-fret 4 5 "♭7" inverted burlywood4)
        (place-fret 4 7 "1")
        (place-fret 3 5 "♭3" inverted)
        (place-fret 3 7 "4" inverted burlywood4)
        (place-fret 2 5 "5" inverted)
        (place-fret 2 8 "♭7" inverted burlywood4)
        (place-fret 1 5 "1")
        (place-fret 1 8 "♭3" inverted))
      \vspace #0.5
      "Position 1"
    }
    \hspace #5
    \center-column {
        \fret-diagram-verbose #'(
        (place-fret 6 8 "♭3" inverted)
        (place-fret 6 10 "4" inverted burlywood4)
        (place-fret 5 7 "5" inverted)
        (place-fret 5 10 "♭7" inverted burlywood4)
        (place-fret 4 7 "1")
        (place-fret 4 10 "♭3" inverted)
        (place-fret 3 7 "4" inverted burlywood4)
        (place-fret 3 9 "5" inverted)
        (place-fret 2 8 "♭7" inverted burlywood4)
        (place-fret 2 10 "1")
        (place-fret 1 8 "♭3" inverted)
        (place-fret 1 10 "4" inverted burlywood4))
      \vspace #0.5
      "Position 2"
    }
    \hspace #5
    \center-column {
      \fret-diagram-verbose #'(
        (place-fret 6 10 "4" inverted burlywood4)
        (place-fret 6 12 "5" inverted)
        (place-fret 5 10 "♭7" inverted burlywood4)
        (place-fret 5 12 "1")
        (place-fret 4 10 "♭3" inverted)
        (place-fret 4 12 "4" inverted burlywood4)
        (place-fret 3 9 "5" inverted)
        (place-fret 3 12 "♭7" inverted burlywood4)
        (place-fret 2 10 "1")
        (place-fret 2 13 "♭3" inverted)
        (place-fret 1 10 "4" inverted burlywood4)
        (place-fret 1 12 "5" inverted))
      \vspace #0.5
      "Position 3"
    }
    \hspace #5
    \center-column {
      \fret-diagram-verbose #'(
        (place-fret 6 12 "5" inverted)
        (place-fret 6 15 "♭7" inverted burlywood4)
        (place-fret 5 12 "1")
        (place-fret 5 15 "♭3" inverted)
        (place-fret 4 12 "4" inverted burlywood4)
        (place-fret 4 14 "5" inverted)
        (place-fret 3 12 "♭7" inverted burlywood4)
        (place-fret 3 14 "1")
        (place-fret 2 13 "♭3" inverted)
        (place-fret 2 15 "4" inverted burlywood4)
        (place-fret 1 12 "5" inverted)
        (place-fret 1 15 "♭7" inverted burlywood4))
      \vspace #0.5
      "Position 4"
    }
    \hspace #5
    \center-column {
      \fret-diagram-verbose #'(
        (place-fret 6 15 "♭7" inverted burlywood4)
        (place-fret 6 17 "1")
        (place-fret 5 15 "♭3" inverted)
        (place-fret 5 17 "4" inverted burlywood4)
        (place-fret 4 14 "5" inverted)
        (place-fret 4 17 "♭7" inverted burlywood4)
        (place-fret 3 14 "1")
        (place-fret 3 17 "♭3" inverted)
        (place-fret 2 15 "4" inverted burlywood4)
        (place-fret 2 17 "5" inverted)
        (place-fret 1 15 "♭7" inverted burlywood4)
        (place-fret 1 17 "1"))
      \vspace #0.5
      "Position 5"
    }
  }
}
