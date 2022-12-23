\version "2.24.0"

\include "../titling.ily"
#(ly:set-option 'crop #t)

\markup {
  \override #'(size . 6) \fret-diagram-container {
    \center-column {
      \fret-diagram-verbose #`(
        (place-fret 6 5  "1" ,@fret-diagram-root-format)
        (place-fret 6 7  "2" ,@fret-diagram-other-format)
        (place-fret 6 8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 5 5  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 5 7  "5" ,@fret-diagram-triad-format)
        (place-fret 5 8 "♭6" ,@fret-diagram-other-format)
        (place-fret 4 5 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 4 7  "1" ,@fret-diagram-root-format)
        (place-fret 3 4  "2" ,@fret-diagram-other-format)
        (place-fret 3 5 "♭3" ,@fret-diagram-triad-format)
        (place-fret 3 7  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 2 5  "5" ,@fret-diagram-triad-format)
        (place-fret 2 6 "♭6" ,@fret-diagram-other-format)
        (place-fret 2 8 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 1 5  "1" ,@fret-diagram-root-format)
        (place-fret 1 7  "2" ,@fret-diagram-other-format)
        (place-fret 1 8 "♭3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Natural minor"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6 4  "7" ,@fret-diagram-light-other-format)
        (place-fret 6 5  "1" ,@fret-diagram-root-format)
        (place-fret 6 7  "2" ,@fret-diagram-other-format)
        (place-fret 6 8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 5 5  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 5 7  "5" ,@fret-diagram-triad-format)
        (place-fret 5 8 "♭6" ,@fret-diagram-other-format)
        (place-fret 4 6  "7" ,@fret-diagram-pentatonic-format)
        (place-fret 4 7  "1" ,@fret-diagram-root-format)
        (place-fret 3 4  "2" ,@fret-diagram-other-format)
        (place-fret 3 5 "♭3" ,@fret-diagram-triad-format)
        (place-fret 3 7  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 2 5  "5" ,@fret-diagram-triad-format)
        (place-fret 2 6 "♭6" ,@fret-diagram-other-format)
        (place-fret 1 4  "7" ,@fret-diagram-pentatonic-format)
        (place-fret 1 5  "1" ,@fret-diagram-root-format)
        (place-fret 1 7  "2" ,@fret-diagram-other-format)
        (place-fret 1 8 "♭3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Harmonic minor"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6 4  "7" ,@fret-diagram-light-other-format)
        (place-fret 6 5  "1" ,@fret-diagram-root-format)
        (place-fret 6 7  "2" ,@fret-diagram-other-format)
        (place-fret 6 8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 5 5  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 5 7  "5" ,@fret-diagram-triad-format)
        (place-fret 4 4  "6" ,@fret-diagram-other-format)
        (place-fret 4 6  "7" ,@fret-diagram-pentatonic-format)
        (place-fret 4 7  "1" ,@fret-diagram-root-format)
        (place-fret 3 4  "2" ,@fret-diagram-other-format)
        (place-fret 3 5 "♭3" ,@fret-diagram-triad-format)
        (place-fret 3 7  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 2 5  "5" ,@fret-diagram-triad-format)
        (place-fret 2 7  "6" ,@fret-diagram-other-format)
        (place-fret 1 4  "7" ,@fret-diagram-pentatonic-format)
        (place-fret 1 5  "1" ,@fret-diagram-root-format)
        (place-fret 1 7  "2" ,@fret-diagram-other-format)
        (place-fret 1 8 "♭3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Melodic minor (ascending)"
    }
  }
}
