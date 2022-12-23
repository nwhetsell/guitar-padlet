\version "2.24.0"

\include "../titling.ily"
#(ly:set-option 'crop #t)

\markup {
  \override #'(size . 6) \fret-diagram-container {
    \center-column {
      \fret-diagram-verbose #`(
        (place-fret 5 13 "♭7" ,@fret-diagram-triad-format)
        (place-fret 5 15  "1" ,@fret-diagram-root-format)
        (place-fret 4 14  "3" ,@fret-diagram-triad-format)
        (place-fret 3 12  "5" ,@fret-diagram-triad-format)
        (place-fret 3 15 "♭7" ,@fret-diagram-triad-format)
        (place-fret 2 13  "1" ,@fret-diagram-root-format)
        (place-fret 1 12  "3" ,@fret-diagram-triad-format)
        (place-fret 1 15  "5" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Arpeggio"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6 12  "3" ,@fret-diagram-light-triad-format)
        (place-fret 6 15  "5" ,@fret-diagram-light-triad-format)
        (place-fret 5 12  "6" ,@fret-diagram-light-pentatonic-format)
        (place-fret 5 13 "♭7" ,@fret-diagram-triad-format)
        (place-fret 5 15  "1" ,@fret-diagram-root-format)
        (place-fret 4 12  "2" ,@fret-diagram-light-pentatonic-format)
        (place-fret 4 14  "3" ,@fret-diagram-triad-format)
        (place-fret 3 12  "5" ,@fret-diagram-triad-format)
        (place-fret 3 14  "6" ,@fret-diagram-light-pentatonic-format)
        (place-fret 3 15 "♭7" ,@fret-diagram-triad-format)
        (place-fret 2 13  "1" ,@fret-diagram-root-format)
        (place-fret 2 15  "2" ,@fret-diagram-light-pentatonic-format)
        (place-fret 1 12  "3" ,@fret-diagram-triad-format)
        (place-fret 1 15  "5" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Major pentatonic, position 3"
    }
  }
}
