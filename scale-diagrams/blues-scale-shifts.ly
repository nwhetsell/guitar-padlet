\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\markup {
  \override #'(size . 6) \fret-diagram-container {
    \fret-diagram-verbose #'(
      (place-fret 6  3 "♭7" inverted bisque3)
      (place-fret 6  5  "1")
      (place-fret 5  3 "♭3" inverted)

      (place-fret 5  5  "4" inverted burlywood4)
      (place-fret 5  6 "♭5" inverted plum4)
      (place-fret 5  7  "5" inverted)
      (place-fret 4  5 "♭7" inverted burlywood4)
      (place-fret 4  7  "1")
      (place-fret 3  5 "♭3" inverted)
      (place-fret 3  7  "4" inverted burlywood4)

      (place-fret 3  8 "♭5" inverted thistle)

      (place-fret 3  9  "5" inverted)
      (place-fret 2  8 "♭7" inverted burlywood4)
      (place-fret 2 10  "1")
      (place-fret 1  8 "♭3" inverted)
      (place-fret 1 10  "4" inverted burlywood4)

      (place-fret 1 11 "♭5" inverted thistle)
      (place-fret 1 12  "5" inverted grey75))
  }
}
