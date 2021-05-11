\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\markup {
  \fret-diagram-container {
    \center-column {
      \fret-diagram-verbose #'(
        (place-fret 6 8 "1")
        (place-fret 6 10 "2" inverted burlywood4)
        (place-fret 5 7 "3" inverted)
        (place-fret 5 10 "5" inverted)
        (place-fret 4 7 "6" inverted burlywood4)
        (place-fret 4 10 "1")
        (place-fret 3 7 "2" inverted burlywood4)
        (place-fret 3 9 "3" inverted)
        (place-fret 2 8 "5" inverted)
        (place-fret 2 10 "6" inverted burlywood4)
        (place-fret 1 8 "1")
        (place-fret 1 10 "2" inverted burlywood4)
      )
      \vspace #0.5
      "Position 1"
    }
    \hspace #5
    \center-column {
      \fret-diagram-verbose #'(
        (place-fret 6 10 "2" inverted burlywood4)
        (place-fret 6 12 "3" inverted)
        (place-fret 5 10 "5" inverted)
        (place-fret 5 12 "6" inverted burlywood4)
        (place-fret 4 10 "1")
        (place-fret 4 12 "2" inverted burlywood4)
        (place-fret 3 9 "3" inverted)
        (place-fret 3 12 "5" inverted)
        (place-fret 2 10 "6" inverted burlywood4)
        (place-fret 2 13 "1")
        (place-fret 1 10 "2" inverted burlywood4)
        (place-fret 1 12 "3" inverted)
      )
      \vspace #0.5
      "Position 2"
    }
    \hspace #5
    \center-column {
      \fret-diagram-verbose #'(
        (place-fret 6 12 "3" inverted)
        (place-fret 6 15 "5" inverted)
        (place-fret 5 12 "6" inverted burlywood4)
        (place-fret 5 15 "1")
        (place-fret 4 12 "2" inverted burlywood4)
        (place-fret 4 14 "3" inverted)
        (place-fret 3 12 "5" inverted)
        (place-fret 3 14 "6" inverted burlywood4)
        (place-fret 2 13 "1")
        (place-fret 2 15 "2" inverted burlywood4)
        (place-fret 1 12 "3" inverted)
        (place-fret 1 15 "5" inverted)
      )
      \vspace #0.5
      "Position 3"
    }
    \hspace #5
    \center-column {
      \fret-diagram-verbose #'(
        (place-fret 6 15 "5" inverted)
        (place-fret 6 17 "6" inverted burlywood4)
        (place-fret 5 15 "1")
        (place-fret 5 17 "2" inverted burlywood4)
        (place-fret 4 14 "3" inverted)
        (place-fret 4 17 "5" inverted)
        (place-fret 3 14 "6" inverted burlywood4)
        (place-fret 3 17 "1")
        (place-fret 2 15 "2" inverted burlywood4)
        (place-fret 2 17 "3" inverted)
        (place-fret 1 15 "5" inverted)
        (place-fret 1 17 "6" inverted burlywood4)
      )
      \vspace #0.5
      "Position 4"
    }
    \hspace #5
    \center-column {
      \fret-diagram-verbose #'(
        (place-fret 6 5 "6" inverted burlywood4)
        (place-fret 6 8 "1")
        (place-fret 5 5 "2" inverted burlywood4)
        (place-fret 5 7 "3" inverted)
        (place-fret 4 5 "5" inverted)
        (place-fret 4 7 "6" inverted burlywood4)
        (place-fret 3 5 "1")
        (place-fret 3 7 "2" inverted burlywood4)
        (place-fret 2 5 "3" inverted)
        (place-fret 2 8 "5" inverted)
        (place-fret 1 5 "6" inverted burlywood4)
        (place-fret 1 8 "1")
      )
      \vspace #0.5
      "Position 5"
    }
  }
}
