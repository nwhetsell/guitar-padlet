\version "2.24.0"

\include "../titling.ily"
#(ly:set-option 'crop #t)

\markup {
  \fret-diagram-container {
    \center-column {
      \fret-diagram-verbose #`(
        (place-fret 6 5  "1" ,@fret-diagram-root-format)
        (place-fret 6 8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 5 5  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 5 7  "5" ,@fret-diagram-triad-format)
        (place-fret 4 5 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 4 7  "1" ,@fret-diagram-root-format)
        (place-fret 3 5 "♭3" ,@fret-diagram-triad-format)
        (place-fret 3 7  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 2 5  "5" ,@fret-diagram-triad-format)
        (place-fret 2 8 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 1 5  "1" ,@fret-diagram-root-format)
        (place-fret 1 8 "♭3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Position 1"
    }
    \hspace #5
    \center-column {
        \fret-diagram-verbose #`(
        (place-fret 6  8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 6 10  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 5  7  "5" ,@fret-diagram-triad-format)
        (place-fret 5 10 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 4  7  "1" ,@fret-diagram-root-format)
        (place-fret 4 10 "♭3" ,@fret-diagram-triad-format)
        (place-fret 3  7  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 3  9  "5" ,@fret-diagram-triad-format)
        (place-fret 2  8 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 2 10  "1" ,@fret-diagram-root-format)
        (place-fret 1  8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 1 10  "4" ,@fret-diagram-pentatonic-format))
      \vspace #0.5
      "Position 2"
    }
    \hspace #5
    \center-column {
      \fret-diagram-verbose #`(
        (place-fret 6 10  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 6 12  "5" ,@fret-diagram-triad-format)
        (place-fret 5 10 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 5 12  "1" ,@fret-diagram-root-format)
        (place-fret 4 10 "♭3" ,@fret-diagram-triad-format)
        (place-fret 4 12  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 3  9  "5" ,@fret-diagram-triad-format)
        (place-fret 3 12 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 2 10  "1" ,@fret-diagram-root-format)
        (place-fret 2 13 "♭3" ,@fret-diagram-triad-format)
        (place-fret 1 10  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 1 12  "5" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Position 3"
    }
    \hspace #5
    \center-column {
      \fret-diagram-verbose #`(
        (place-fret 6 12  "5" ,@fret-diagram-triad-format)
        (place-fret 6 15 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 5 12  "1" ,@fret-diagram-root-format)
        (place-fret 5 15 "♭3" ,@fret-diagram-triad-format)
        (place-fret 4 12  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 4 14  "5" ,@fret-diagram-triad-format)
        (place-fret 3 12 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 3 14  "1" ,@fret-diagram-root-format)
        (place-fret 2 13 "♭3" ,@fret-diagram-triad-format)
        (place-fret 2 15  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 1 12  "5" ,@fret-diagram-triad-format)
        (place-fret 1 15 "♭7" ,@fret-diagram-pentatonic-format))
      \vspace #0.5
      "Position 4"
    }
    \hspace #5
    \center-column {
      \fret-diagram-verbose #`(
        (place-fret 6 15 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 6 17  "1" ,@fret-diagram-root-format)
        (place-fret 5 15 "♭3" ,@fret-diagram-triad-format)
        (place-fret 5 17  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 4 14  "5" ,@fret-diagram-triad-format)
        (place-fret 4 17 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 3 14  "1" ,@fret-diagram-root-format)
        (place-fret 3 17 "♭3" ,@fret-diagram-triad-format)
        (place-fret 2 15  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 2 17  "5" ,@fret-diagram-triad-format)
        (place-fret 1 15 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 1 17  "1" ,@fret-diagram-root-format))
      \vspace #0.5
      "Position 5"
    }
  }
}
