\version "2.24.0"

\include "../titling.ily"
#(ly:set-option 'crop #t)

\markup {
  \override #'(size . 6) \fret-diagram-container {
    \fret-diagram-verbose #`(
      (place-fret 6  3 "♭7" ,@fret-diagram-light-pentatonic-format)
      (place-fret 6  5  "1" ,@fret-diagram-root-format)
      (place-fret 5  3 "♭3" ,@fret-diagram-triad-format)

      (place-fret 5  5  "4" ,@fret-diagram-pentatonic-format)
      (place-fret 5  6 "♭5" ,@fret-diagram-other-format)
      (place-fret 5  7  "5" ,@fret-diagram-triad-format)
      (place-fret 4  5 "♭7" ,@fret-diagram-pentatonic-format)
      (place-fret 4  7  "1" ,@fret-diagram-root-format)
      (place-fret 3  5 "♭3" ,@fret-diagram-triad-format)
      (place-fret 3  7  "4" ,@fret-diagram-pentatonic-format)

      (place-fret 3  8 "♭5" ,@fret-diagram-light-other-format)

      (place-fret 3  9  "5" ,@fret-diagram-triad-format)
      (place-fret 2  8 "♭7" ,@fret-diagram-pentatonic-format)
      (place-fret 2 10  "1" ,@fret-diagram-root-format)
      (place-fret 1  8 "♭3" ,@fret-diagram-triad-format)
      (place-fret 1 10  "4" ,@fret-diagram-pentatonic-format)

      (place-fret 1 11 "♭5" ,@fret-diagram-light-other-format)
      (place-fret 1 12  "5" ,@fret-diagram-light-triad-format))
  }
}
