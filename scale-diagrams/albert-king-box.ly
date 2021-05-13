\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\markup {
  \override #'(size . 6) \fret-diagram-container {
    \center-column {
      \fret-diagram-verbose #`(
        (place-fret 6  8 "♭3" ,@fret-diagram-light-triad-format)
        (place-fret 6 10  "4" ,@fret-diagram-light-pentatonic-format)
        (place-fret 5  7  "5" ,@fret-diagram-light-triad-format)
        (place-fret 5 10 "♭7" ,@fret-diagram-light-pentatonic-format)
        (place-fret 4  7  "1" ,@fret-diagram-light-root-format)
        (place-fret 4 10 "♭3" ,@fret-diagram-light-triad-format)
        (place-fret 3  7  "4" ,@fret-diagram-light-pentatonic-format)
        (place-fret 3  9  "5" ,@fret-diagram-triad-format)
        (place-fret 2  8 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 2 10  "1" ,@fret-diagram-root-format)
        (place-fret 1  8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 1 10  "4" ,@fret-diagram-pentatonic-format))
      \vspace #0.5
      "Minor pentatonic, position 2"
    }
  }
}
