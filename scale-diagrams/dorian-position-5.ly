\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'crop #t)

\markup {
  \override #'(size . 6) \fret-diagram-container {
    \fret-diagram-verbose #`(
      (place-fret 6 12  "5" ,@fret-diagram-light-triad-format)
      (place-fret 6 14  "6" ,@fret-diagram-light-other-format)
      (place-fret 6 15 "♭7" ,@fret-diagram-light-pentatonic-format)
      (place-fret 5 12  "1" ,@fret-diagram-root-format)
      (place-fret 5 14  "2" ,@fret-diagram-other-format)
      (place-fret 5 15 "♭3" ,@fret-diagram-triad-format)
      (place-fret 4 12  "4" ,@fret-diagram-pentatonic-format)
      (place-fret 4 14  "5" ,@fret-diagram-triad-format)
      (place-fret 3 11  "6" ,@fret-diagram-other-format)
      (place-fret 3 12 "♭7" ,@fret-diagram-pentatonic-format)
      (place-fret 3 14  "1" ,@fret-diagram-root-format)
      (place-fret 2 12  "2" ,@fret-diagram-other-format)
      (place-fret 2 13 "♭3" ,@fret-diagram-triad-format)
      (place-fret 2 15  "4" ,@fret-diagram-pentatonic-format)
      (place-fret 1 12  "5" ,@fret-diagram-triad-format)
      (place-fret 1 14  "6" ,@fret-diagram-other-format)
      (place-fret 1 15 "♭7" ,@fret-diagram-pentatonic-format))
  }
}
