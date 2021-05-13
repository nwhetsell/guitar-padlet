\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\markup {
  \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        (place-fret 6  8 "1" ,@fret-diagram-root-format)
        (place-fret 6 10 "2" ,@fret-diagram-pentatonic-format)
        (place-fret 6 12 "3" ,@fret-diagram-triad-format)
        (place-fret 5  8 "4" ,@fret-diagram-other-format)
        (place-fret 5 10 "5" ,@fret-diagram-triad-format)
        (place-fret 5 12 "6" ,@fret-diagram-pentatonic-format)
        (place-fret 4  9 "7" ,@fret-diagram-other-format)
        (place-fret 4 10 "1" ,@fret-diagram-root-format)
        (place-fret 4 12 "2" ,@fret-diagram-pentatonic-format)
        (place-fret 3  9 "3" ,@fret-diagram-triad-format)
        (place-fret 3 10 "4" ,@fret-diagram-other-format)
        (place-fret 2  8 "5" ,@fret-diagram-triad-format)
        (place-fret 2 10 "6" ,@fret-diagram-pentatonic-format)
        (place-fret 2 12 "7" ,@fret-diagram-other-format)
        (place-fret 1  8 "1" ,@fret-diagram-root-format)
        (place-fret 1 10 "2" ,@fret-diagram-pentatonic-format)
        (place-fret 1 12 "3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Ionian (major)"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6  8  "1" ,@fret-diagram-root-format)
        (place-fret 6 10  "2" ,@fret-diagram-pentatonic-format)
        (place-fret 6 12  "3" ,@fret-diagram-triad-format)
        (place-fret 5  8  "4" ,@fret-diagram-other-format)
        (place-fret 5 10  "5" ,@fret-diagram-triad-format)
        (place-fret 5 12  "6" ,@fret-diagram-pentatonic-format)
        (place-fret 4  8 "♭7" ,@fret-diagram-other-format)
        (place-fret 4 10  "1" ,@fret-diagram-root-format)
        (place-fret 4 12  "2" ,@fret-diagram-pentatonic-format)
        (place-fret 3  9  "3" ,@fret-diagram-triad-format)
        (place-fret 3 10  "4" ,@fret-diagram-other-format)
        (place-fret 2  8  "5" ,@fret-diagram-triad-format)
        (place-fret 2 10  "6" ,@fret-diagram-pentatonic-format)
        (place-fret 2 11 "♭7" ,@fret-diagram-other-format)
        (place-fret 1  8  "1" ,@fret-diagram-root-format)
        (place-fret 1 10  "2" ,@fret-diagram-pentatonic-format)
        (place-fret 1 12  "3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Mixolydian"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6  8  "1" ,@fret-diagram-root-format)
        (place-fret 6 10  "2" ,@fret-diagram-pentatonic-format)
        (place-fret 6 12  "3" ,@fret-diagram-triad-format)
        (place-fret 5  9 "♯4" ,@fret-diagram-other-format)
        (place-fret 5 10  "5" ,@fret-diagram-triad-format)
        (place-fret 5 12  "6" ,@fret-diagram-pentatonic-format)
        (place-fret 4  9  "7" ,@fret-diagram-other-format)
        (place-fret 4 10  "1" ,@fret-diagram-root-format)
        (place-fret 4 12  "2" ,@fret-diagram-pentatonic-format)
        (place-fret 3  9  "3" ,@fret-diagram-triad-format)
        (place-fret 3 11 "♯4" ,@fret-diagram-other-format)
        (place-fret 2  8  "5" ,@fret-diagram-triad-format)
        (place-fret 2 10  "6" ,@fret-diagram-pentatonic-format)
        (place-fret 2 12  "7" ,@fret-diagram-other-format)
        (place-fret 1  8  "1" ,@fret-diagram-root-format)
        (place-fret 1 10  "2" ,@fret-diagram-pentatonic-format)
        (place-fret 1 12  "3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Lydian"
    }

    \hspace #5

    \right-column {
      \fret-diagram-verbose #`(
        (place-fret 6 5  "1" ,@fret-diagram-root-format)
        (place-fret 6 7  "2" ,@fret-diagram-other-format)
        (place-fret 6 8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 5 5  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 5 7  "5" ,@fret-diagram-triad-format)
        (place-fret 5 8 "♭6" ,@fret-diagram-other-format)
        (place-fret 4 5 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 4 7  "1" ,@fret-diagram-root-format)
        (place-fret 4 9  "2" ,@fret-diagram-other-format)
        (place-fret 3 5 "♭3" ,@fret-diagram-triad-format)
        (place-fret 3 7  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 2 5  "5" ,@fret-diagram-triad-format)
        (place-fret 2 6 "♭6" ,@fret-diagram-other-format)
        (place-fret 2 8 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 1 5  "1" ,@fret-diagram-root-format)
        (place-fret 1 7  "2" ,@fret-diagram-other-format)
        (place-fret 1 8 "♭3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Aeolian (natural minor)"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6 5  "1" ,@fret-diagram-root-format)
        (place-fret 6 7  "2" ,@fret-diagram-other-format)
        (place-fret 6 8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 5 5  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 5 7  "5" ,@fret-diagram-triad-format)
        (place-fret 5 9  "6" ,@fret-diagram-other-format)
        (place-fret 4 5 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 4 7  "1" ,@fret-diagram-root-format)
        (place-fret 4 9  "2" ,@fret-diagram-other-format)
        (place-fret 3 5 "♭3" ,@fret-diagram-triad-format)
        (place-fret 3 7  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 2 5  "5" ,@fret-diagram-triad-format)
        (place-fret 2 7  "6" ,@fret-diagram-other-format)
        (place-fret 2 8 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 1 5  "1" ,@fret-diagram-root-format)
        (place-fret 1 7  "2" ,@fret-diagram-other-format)
        (place-fret 1 8 "♭3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Dorian"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6 5  "1" ,@fret-diagram-root-format)
        (place-fret 6 6 "♭2" ,@fret-diagram-other-format)
        (place-fret 6 8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 5 5  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 5 7  "5" ,@fret-diagram-triad-format)
        (place-fret 5 8 "♭6" ,@fret-diagram-other-format)
        (place-fret 4 5 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 4 7  "1" ,@fret-diagram-root-format)
        (place-fret 4 8 "♭2" ,@fret-diagram-other-format)
        (place-fret 3 5 "♭3" ,@fret-diagram-triad-format)
        (place-fret 3 7  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 2 5  "5" ,@fret-diagram-triad-format)
        (place-fret 2 6 "♭6" ,@fret-diagram-other-format)
        (place-fret 2 8 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 1 5  "1" ,@fret-diagram-root-format)
        (place-fret 1 6 "♭2" ,@fret-diagram-other-format)
        (place-fret 1 8 "♭3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Phrygian"
    }
  }
}
