\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\markup {
  \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        (place-fret 6  8 "3" ,@fret-diagram-triad-format)
        (place-fret 6 11 "5" ,@fret-diagram-triad-format)
        (place-fret 5 11 "1" ,@fret-diagram-root-format)
        (place-fret 4 10 "3" ,@fret-diagram-triad-format)
        (place-fret 3  8 "5" ,@fret-diagram-triad-format)
        (place-fret 2  9 "1" ,@fret-diagram-root-format)
        (place-fret 1  8 "3" ,@fret-diagram-triad-format)
        (place-fret 1 11 "5" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Major, root on string 5"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6  8 "1" ,@fret-diagram-root-format)
        (place-fret 6 12 "3" ,@fret-diagram-triad-format)
        (place-fret 5 10 "5" ,@fret-diagram-triad-format)
        (place-fret 4 10 "1" ,@fret-diagram-root-format)
        (place-fret 3  9 "3" ,@fret-diagram-triad-format)
        (place-fret 2  8 "5" ,@fret-diagram-triad-format)
        (place-fret 1  8 "1" ,@fret-diagram-root-format)
        (place-fret 1 12 "3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Major, root on string 6"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6  8  "1" ,@fret-diagram-root-format)
        (place-fret 6 12  "3" ,@fret-diagram-triad-format)
        (place-fret 5 11 "♯5" ,@fret-diagram-other-format)
        (place-fret 4 10  "1" ,@fret-diagram-root-format)
        (place-fret 3  9  "3" ,@fret-diagram-triad-format)
        (place-fret 2  9 "♯5" ,@fret-diagram-other-format)
        (place-fret 1  8  "1" ,@fret-diagram-root-format)
        (place-fret 1 12  "3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Augmented"
    }

    \hspace #5

    \right-column {
      \fret-diagram-verbose #`(
        (place-fret 6  8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 6 12  "5" ,@fret-diagram-triad-format)
        (place-fret 5 12  "1" ,@fret-diagram-root-format)
        (place-fret 4 10 "♭3" ,@fret-diagram-triad-format)
        (place-fret 3  9  "5" ,@fret-diagram-triad-format)
        (place-fret 2 10  "1" ,@fret-diagram-root-format)
        (place-fret 1  8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 1 12  "5" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Minor, root on string 5"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6  8  "1" ,@fret-diagram-root-format)
        (place-fret 6 11 "♭3" ,@fret-diagram-triad-format)
        (place-fret 5 10  "5" ,@fret-diagram-triad-format)
        (place-fret 4 10  "1" ,@fret-diagram-root-format)
        (place-fret 3  8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 2  8  "5" ,@fret-diagram-triad-format)
        (place-fret 1  8  "1" ,@fret-diagram-root-format)
        (place-fret 1 11 "♭3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Minor, root on string 6"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6  8  "1" ,@fret-diagram-root-format)
        (place-fret 6 11 "♭3" ,@fret-diagram-triad-format)
        (place-fret 5  9 "♭5" ,@fret-diagram-other-format)
        (place-fret 4 10  "1" ,@fret-diagram-root-format)
        (place-fret 3  8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 3 11 "♭5" ,@fret-diagram-other-format)
        (place-fret 1  8  "1" ,@fret-diagram-root-format)
        (place-fret 1 11 "♭3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Diminished"
    }
  }
}
