\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\markup {
  \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #'(
        (place-fret 6 7 "7" inverted thistle)
        (place-fret 6 8 "1")
        (place-fret 6 10 "2" inverted burlywood4)
        (place-fret 5 7 "3" inverted)
        (place-fret 5 8 "4" inverted plum4)
        (place-fret 5 10 "5" inverted)
        (place-fret 4 7 "6" inverted burlywood4)
        (place-fret 4 9 "7" inverted plum4)
        (place-fret 4 10 "1")
        (place-fret 3 7 "2" inverted burlywood4)
        (place-fret 3 9 "3" inverted)
        (place-fret 3 10 "4" inverted plum4)
        (place-fret 2 8 "5" inverted)
        (place-fret 2 10 "6" inverted burlywood4)
        (place-fret 1 7 "7" inverted plum4)
        (place-fret 1 8 "1")
        (place-fret 1 10 "2" inverted burlywood4)
      )
      \vspace #0.5
      "Ionian (major)"

      \vspace #1

      \fret-diagram-verbose #'(
        (place-fret 6 8 "1")
        (place-fret 6 10 "2" inverted burlywood4)
        (place-fret 5 7 "3" inverted)
        (place-fret 5 8 "4" inverted plum4)
        (place-fret 5 10 "5" inverted)
        (place-fret 4 7 "6" inverted burlywood4)
        (place-fret 4 8 "♭7" inverted plum4)
        (place-fret 4 10 "1")
        (place-fret 3 7 "2" inverted burlywood4)
        (place-fret 3 9 "3" inverted)
        (place-fret 3 10 "4" inverted plum4)
        (place-fret 2 8 "5" inverted)
        (place-fret 2 10 "6" inverted burlywood4)
        (place-fret 2 11 "♭7" inverted plum4)
        (place-fret 1 8 "1")
        (place-fret 1 10 "2" inverted burlywood4)
      )
      \vspace #0.5
      "Mixolydian"

      \vspace #1

      \fret-diagram-verbose #'(
        (place-fret 6 7 "7" inverted thistle)
        (place-fret 6 8 "1")
        (place-fret 6 10 "2" inverted burlywood4)
        (place-fret 5 7 "3" inverted)
        (place-fret 5 9 "♯4" inverted plum4)
        (place-fret 5 10 "5" inverted)
        (place-fret 4 7 "6" inverted burlywood4)
        (place-fret 4 9 "7" inverted plum4)
        (place-fret 4 10 "1")
        (place-fret 3 7 "2" inverted burlywood4)
        (place-fret 3 9 "3" inverted)
        (place-fret 2 7 "♯4" inverted plum4)
        (place-fret 2 8 "5" inverted)
        (place-fret 2 10 "6" inverted burlywood4)
        (place-fret 1 7 "7" inverted plum4)
        (place-fret 1 8 "1")
        (place-fret 1 10 "2" inverted burlywood4)
      )
      \vspace #0.5
      "Lydian"
    }

    \hspace #5

    \right-column {
      \fret-diagram-verbose #'(
        (place-fret 6 5 "1")
        (place-fret 6 7 "2" inverted plum4)
        (place-fret 6 8 "♭3" inverted)
        (place-fret 5 5 "4" inverted burlywood4)
        (place-fret 5 7 "5" inverted)
        (place-fret 5 8 "♭6" inverted plum4)
        (place-fret 4 5 "♭7" inverted burlywood4)
        (place-fret 4 7 "1")
        (place-fret 3 4 "2" inverted plum4)
        (place-fret 3 5 "♭3" inverted)
        (place-fret 3 7 "4" inverted burlywood4)
        (place-fret 2 5 "5" inverted)
        (place-fret 2 6 "♭6" inverted plum4)
        (place-fret 2 8 "♭7" inverted burlywood4)
        (place-fret 1 5 "1")
        (place-fret 1 7 "2" inverted plum4)
        (place-fret 1 8 "♭3" inverted)
      )
      \vspace #0.5
      "Aeolian (natural minor)"

      \vspace #1

      \fret-diagram-verbose #'(
        (place-fret 6 5 "1")
        (place-fret 6 7 "2" inverted plum4)
        (place-fret 6 8 "♭3" inverted)
        (place-fret 5 5 "4" inverted burlywood4)
        (place-fret 5 7 "5" inverted)
        (place-fret 4 4 "6" inverted plum4)
        (place-fret 4 5 "♭7" inverted burlywood4)
        (place-fret 4 7 "1")
        (place-fret 3 4 "2" inverted plum4)
        (place-fret 3 5 "♭3" inverted)
        (place-fret 3 7 "4" inverted burlywood4)
        (place-fret 2 5 "5" inverted)
        (place-fret 2 7 "6" inverted plum4)
        (place-fret 2 8 "♭7" inverted burlywood4)
        (place-fret 1 5 "1")
        (place-fret 1 7 "2" inverted plum4)
        (place-fret 1 8 "♭3" inverted)
      )
      \vspace #0.5
      "Dorian"

      \vspace #1

      \fret-diagram-verbose #'(
        (place-fret 6 5 "1")
        (place-fret 6 6 "♭2" inverted plum4)
        (place-fret 6 8 "♭3" inverted)
        (place-fret 5 5 "4" inverted burlywood4)
        (place-fret 5 7 "5" inverted)
        (place-fret 5 8 "♭6" inverted plum4)
        (place-fret 4 5 "♭7" inverted burlywood4)
        (place-fret 4 7 "1")
        (place-fret 4 8 "♭2" inverted plum4)
        (place-fret 3 5 "♭3" inverted)
        (place-fret 3 7 "4" inverted burlywood4)
        (place-fret 2 5 "5" inverted)
        (place-fret 2 6 "♭6" inverted plum4)
        (place-fret 2 8 "♭7" inverted burlywood4)
        (place-fret 1 5 "1")
        (place-fret 1 6 "♭2" inverted plum4)
        (place-fret 1 8 "♭3" inverted)
      )
      \vspace #0.5
      "Phrygian"

      \vspace #1

      \fret-diagram-verbose #'(
        (place-fret 6 5 "1")
        (place-fret 6 6 "♭2" inverted plum4)
        (place-fret 6 8 "♭3" inverted)
        (place-fret 5 5 "4" inverted burlywood4)
        (place-fret 5 6 "♭5" inverted plum4)
        (place-fret 5 8 "♭6" inverted plum4)
        (place-fret 4 5 "♭7" inverted burlywood4)
        (place-fret 4 7 "1")
        (place-fret 4 8 "♭2" inverted plum4)
        (place-fret 3 5 "♭3" inverted)
        (place-fret 3 7 "4" inverted burlywood4)
        (place-fret 3 8 "♭5" inverted plum4)
        (place-fret 2 6 "♭6" inverted plum4)
        (place-fret 2 8 "♭7" inverted burlywood4)
        (place-fret 1 5 "1")
        (place-fret 1 6 "♭2" inverted plum4)
        (place-fret 1 8 "♭3" inverted)
      )
      \vspace #0.5
      "Locrian"
    }
  }
}
