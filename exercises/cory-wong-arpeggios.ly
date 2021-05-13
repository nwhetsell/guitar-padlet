\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\markup {
  \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        (place-fret 6  3 "1" ,@fret-diagram-root-format)
        (place-fret 6  7 "3" ,@fret-diagram-triad-format)
        (place-fret 5  5 "1" ,@fret-diagram-triad-format)
        (place-fret 5 10 "3" ,@fret-diagram-root-format)
        (place-fret 4  9 "2" ,@fret-diagram-triad-format)
        (place-fret 3  7 "1" ,@fret-diagram-triad-format)
        (place-fret 2  8 "2" ,@fret-diagram-root-format)
        (place-fret 1  7 "1" ,@fret-diagram-triad-format)
        (place-fret 1 10 "4" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Major, root on string 6"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6  3 "1" ,@fret-diagram-root-format)
        (place-fret 6  6 "2" ,@fret-diagram-triad-format)
        (place-fret 5  5 "1" ,@fret-diagram-triad-format)
        (place-fret 5 10 "3" ,@fret-diagram-root-format)
        (place-fret 4  8 "2" ,@fret-diagram-triad-format)
        (place-fret 3  7 "1" ,@fret-diagram-triad-format)
        (place-fret 2  8 "2" ,@fret-diagram-root-format)
        (place-fret 1  6 "1" ,@fret-diagram-triad-format)
        (place-fret 1 10 "4" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Minor, root on string 6"
    }

    \hspace #5

    \right-column {
      \fret-diagram-verbose #`(
        (place-fret 5  3 "1" ,@fret-diagram-root-format)
        (place-fret 5  7 "3" ,@fret-diagram-triad-format)
        (place-fret 4  5 "1" ,@fret-diagram-triad-format)
        (place-fret 4 10 "3" ,@fret-diagram-root-format)
        (place-fret 3  9 "2" ,@fret-diagram-triad-format)
        (place-fret 2  8 "1" ,@fret-diagram-triad-format)
        (place-fret 2 13 "2" ,@fret-diagram-root-format)
        (place-fret 1 12 "1" ,@fret-diagram-triad-format)
        (place-fret 1 15 "4" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Major, root on string 5"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 5  3 "1" ,@fret-diagram-root-format)
        (place-fret 5  6 "3" ,@fret-diagram-triad-format)
        (place-fret 4  5 "1" ,@fret-diagram-triad-format)
        (place-fret 4 10 "3" ,@fret-diagram-root-format)
        (place-fret 3  8 "2" ,@fret-diagram-triad-format)
        (place-fret 2  8 "1" ,@fret-diagram-triad-format)
        (place-fret 2 13 "2" ,@fret-diagram-root-format)
        (place-fret 1 11 "1" ,@fret-diagram-triad-format)
        (place-fret 1 15 "4" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Minor, root on string 5"
    }
  }
}
