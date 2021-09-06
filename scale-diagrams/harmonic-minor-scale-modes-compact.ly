\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\markup {
  \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        (place-fret 6 4  "7" ,@fret-diagram-light-other-format)
        (place-fret 6 5  "1" ,@fret-diagram-root-format)
        (place-fret 6 7  "2" ,@fret-diagram-other-format)
        (place-fret 6 8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 5 5  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 5 7  "5" ,@fret-diagram-triad-format)
        (place-fret 5 8 "♭6" ,@fret-diagram-other-format)
        (place-fret 4 6  "7" ,@fret-diagram-other-format)
        (place-fret 4 7  "1" ,@fret-diagram-root-format)
        (place-fret 4 9  "2" ,@fret-diagram-light-other-format)
        (place-fret 3 4  "2" ,@fret-diagram-other-format)
        (place-fret 3 5 "♭3" ,@fret-diagram-triad-format)
        (place-fret 3 7  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 2 5  "5" ,@fret-diagram-triad-format)
        (place-fret 2 6 "♭6" ,@fret-diagram-other-format)
        (place-fret 1 4  "7" ,@fret-diagram-other-format)
        (place-fret 1 5  "1" ,@fret-diagram-root-format)
        (place-fret 1 7  "2" ,@fret-diagram-other-format)
        (place-fret 1 8 "♭3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Harmonic minor"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6 5  "1" ,@fret-diagram-root-format)
        (place-fret 6 6 "♭2" ,@fret-diagram-other-format)
        (place-fret 6 8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 5 5  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 5 6 "♭5" ,@fret-diagram-other-format)
        (place-fret 4 4  "6" ,@fret-diagram-other-format)
        (place-fret 4 5 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 4 7  "1" ,@fret-diagram-root-format)
        (place-fret 4 8 "♭2" ,@fret-diagram-other-format)
        (place-fret 3 5 "♭3" ,@fret-diagram-triad-format)
        (place-fret 3 7  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 3 8 "♭5" ,@fret-diagram-other-format)
        (place-fret 2 7  "6" ,@fret-diagram-other-format)
        (place-fret 2 8 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 1 5  "1" ,@fret-diagram-root-format)
        (place-fret 1 6 "♭2" ,@fret-diagram-other-format)
        (place-fret 1 8 "♭3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Locrian ♮6"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6 5  "1" ,@fret-diagram-root-format)
        (place-fret 6 7  "2" ,@fret-diagram-other-format)
        (place-fret 6 8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 5 6 "♯4" ,@fret-diagram-other-format)
        (place-fret 5 7  "5" ,@fret-diagram-triad-format)
        (place-fret 5 9  "6" ,@fret-diagram-other-format)
        (place-fret 4 5 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 4 7  "1" ,@fret-diagram-root-format)
        (place-fret 4 9  "2" ,@fret-diagram-other-format)
        (place-fret 3 5 "♭3" ,@fret-diagram-triad-format)
        (place-fret 3 8 "♯4" ,@fret-diagram-other-format)
        (place-fret 2 5  "5" ,@fret-diagram-triad-format)
        (place-fret 2 7  "6" ,@fret-diagram-other-format)
        (place-fret 2 8 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 1 5  "1" ,@fret-diagram-root-format)
        (place-fret 1 7  "2" ,@fret-diagram-other-format)
        (place-fret 1 8 "♭3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Lydian diminished (Dorian ♯4)"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6 4  "1" ,@fret-diagram-root-format)
        (place-fret 6 5 "♭2" ,@fret-diagram-other-format)
        (place-fret 6 7 "♭3" ,@fret-diagram-triad-format)
        (place-fret 5 3 "♭4" ,@fret-diagram-other-format)
        (place-fret 5 5 "♭5" ,@fret-diagram-other-format)
        (place-fret 5 7 "♭6" ,@fret-diagram-other-format)
        (place-fret 4 3 "𝄫7" ,@fret-diagram-other-format)
        (place-fret 4 6  "1" ,@fret-diagram-root-format)
        (place-fret 4 7 "♭2" ,@fret-diagram-other-format)
        (place-fret 3 4 "♭3" ,@fret-diagram-triad-format)
        (place-fret 3 5 "♭4" ,@fret-diagram-other-format)
        (place-fret 2 3 "♭5" ,@fret-diagram-other-format)
        (place-fret 2 5 "♭6" ,@fret-diagram-other-format)
        (place-fret 2 6 "𝄫7" ,@fret-diagram-other-format)
        (place-fret 1 4  "1" ,@fret-diagram-root-format)
        (place-fret 1 5 "♭2" ,@fret-diagram-other-format)
        (place-fret 1 7 "♭3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Ultralocrian"
    }

    \hspace #5

    \right-column {
      \fret-diagram-verbose #`(
        (place-fret 6  6  "1" ,@fret-diagram-root-format)
        (place-fret 6  8  "2" ,@fret-diagram-pentatonic-format)
        (place-fret 6 10  "3" ,@fret-diagram-triad-format)
        (place-fret 5  6  "4" ,@fret-diagram-other-format)
        (place-fret 5  9 "♯5" ,@fret-diagram-other-format)
        (place-fret 5 10  "6" ,@fret-diagram-pentatonic-format)
        (place-fret 4  7  "7" ,@fret-diagram-other-format)
        (place-fret 4  8  "1" ,@fret-diagram-root-format)
        (place-fret 4 10  "2" ,@fret-diagram-pentatonic-format)
        (place-fret 3  7  "3" ,@fret-diagram-triad-format)
        (place-fret 3  8  "4" ,@fret-diagram-other-format)
        (place-fret 2  7 "♯5" ,@fret-diagram-other-format)
        (place-fret 2  8  "6" ,@fret-diagram-pentatonic-format)
        (place-fret 2 10  "7" ,@fret-diagram-other-format)
        (place-fret 1  6  "1" ,@fret-diagram-root-format)
        (place-fret 1  8  "2" ,@fret-diagram-pentatonic-format)
        (place-fret 1 10  "3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Major augmented (Ionian ♯5)"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6 5  "1" ,@fret-diagram-root-format)
        (place-fret 6 6 "♭2" ,@fret-diagram-other-format)
        (place-fret 5 4  "3" ,@fret-diagram-triad-format)
        (place-fret 5 5  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 5 7  "5" ,@fret-diagram-triad-format)
        (place-fret 5 8 "♭6" ,@fret-diagram-other-format)
        (place-fret 4 5 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 4 7  "1" ,@fret-diagram-root-format)
        (place-fret 4 8 "♭2" ,@fret-diagram-other-format)
        (place-fret 3 6  "3" ,@fret-diagram-triad-format)
        (place-fret 3 7  "4" ,@fret-diagram-pentatonic-format)
        (place-fret 2 5  "5" ,@fret-diagram-triad-format)
        (place-fret 2 6 "♭6" ,@fret-diagram-other-format)
        (place-fret 2 8 "♭7" ,@fret-diagram-pentatonic-format)
        (place-fret 1 5  "1" ,@fret-diagram-root-format)
        (place-fret 1 6 "♭2" ,@fret-diagram-other-format))
      \vspace #0.5
      "Phrygian dominant (Phrygian ♯3)"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6  6  "1" ,@fret-diagram-root-format)
        (place-fret 6  9 "♯2" ,@fret-diagram-other-format)
        (place-fret 6 10  "3" ,@fret-diagram-triad-format)
        (place-fret 5  7 "♯4" ,@fret-diagram-other-format)
        (place-fret 5  8  "5" ,@fret-diagram-triad-format)
        (place-fret 5 10  "6" ,@fret-diagram-pentatonic-format)
        (place-fret 4  7  "7" ,@fret-diagram-other-format)
        (place-fret 4  8  "1" ,@fret-diagram-root-format)
        (place-fret 3  6 "♯2" ,@fret-diagram-other-format)
        (place-fret 3  7  "3" ,@fret-diagram-triad-format)
        (place-fret 3  9 "♯4" ,@fret-diagram-other-format)
        (place-fret 2  6  "5" ,@fret-diagram-triad-format)
        (place-fret 2  8  "6" ,@fret-diagram-pentatonic-format)
        (place-fret 2 10  "7" ,@fret-diagram-other-format)
        (place-fret 1  6  "1" ,@fret-diagram-root-format)
        (place-fret 1  9 "♯2" ,@fret-diagram-other-format)
        (place-fret 1 10  "3" ,@fret-diagram-triad-format))
      \vspace #0.5
      "Aeolian harmonic (Lydian ♯2)"
    }
  }
}
