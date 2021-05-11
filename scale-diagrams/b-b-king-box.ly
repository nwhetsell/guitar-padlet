\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\markup {
  \override #'(size . 6) \fret-diagram-container {
    \fret-diagram-verbose #'(
      (place-fret 3  9  "5" inverted grey75)
      (place-fret 2  8 "♭7" inverted bisque3)
      (place-fret 1  8 "♭3" inverted grey75)

      (place-fret 6 10  "4" inverted bisque3)
      (place-fret 6 12  "5" inverted grey75)
      (place-fret 5 10 "♭7" inverted bisque3)
      (place-fret 5 12  "1" grey75)
      (place-fret 4 10 "♭3" inverted grey75)
      (place-fret 4 12  "4" inverted bisque3)
      (place-fret 3  9  "5" inverted)
      (place-fret 3 11  "6" inverted plum4)
      (place-fret 3 12 "♭7" inverted bisque3)
      (place-fret 2 10  "1")
      (place-fret 2 12  "2" inverted plum4)
      (place-fret 2 13 "♭3" inverted grey75)
      (place-fret 2 14  "3" inverted thistle)
      (place-fret 1 10  "4" inverted burlywood4)
      (place-fret 1 12  "5" inverted)
      (place-fret 1 14  "6" inverted thistle))
  }
}
