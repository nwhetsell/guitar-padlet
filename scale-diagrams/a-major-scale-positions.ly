\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'backend 'eps)

fret-markers-markup = \markup {
  \postscript #"
    16.1 5 1 0 360 arc closepath
    28.1 5 1 0 360 arc closepath
    40.1 5 1 0 360 arc closepath
    52.1 5 1 0 360 arc closepath
    70.1 9 1 0 360 arc closepath
    70.1 1 1 0 360 arc closepath
    88.1 5 1 0 360 arc closepath
    0.85 setgray fill
  "
}

\markup {
  \fret-markers-markup
  \override #'(fret-count . 15) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        (place-fret 6 2 "F♯" ,@fret-diagram-pentatonic-format)
        (place-fret 6 4 "G♯" ,@fret-diagram-other-format)
        (place-fret 6 5 "A"  ,@fret-diagram-root-format)
        (place-fret 5 2 "B"  ,@fret-diagram-pentatonic-format)
        (place-fret 5 4 "C♯" ,@fret-diagram-triad-format)
        (place-fret 5 5 "D"  ,@fret-diagram-other-format)
        (place-fret 4 2 "E"  ,@fret-diagram-triad-format)
        (place-fret 4 4 "F♯" ,@fret-diagram-pentatonic-format)
        (place-fret 3 1 "G♯" ,@fret-diagram-other-format)
        (place-fret 3 2 "A"  ,@fret-diagram-root-format)
        (place-fret 3 4 "B"  ,@fret-diagram-pentatonic-format)
        (place-fret 2 2 "C♯" ,@fret-diagram-triad-format)
        (place-fret 2 3 "D"  ,@fret-diagram-other-format)
        (place-fret 2 5 "E"  ,@fret-diagram-triad-format)
        (place-fret 1 2 "F♯" ,@fret-diagram-pentatonic-format)
        (place-fret 1 4 "G♯" ,@fret-diagram-other-format)
        (place-fret 1 5 "A"  ,@fret-diagram-root-format))
      \vspace #0.5
      "Position 6 – Aeolian (natural minor)"

      \vspace #1
    }
  }
}

\markup {
  \fret-markers-markup
  \override #'(fret-count . 15) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        (place-fret 6 4 "G♯" ,@fret-diagram-other-format)
        (place-fret 6 5 "A"  ,@fret-diagram-root-format)
        (place-fret 6 7 "B"  ,@fret-diagram-pentatonic-format)
        (place-fret 5 4 "C♯" ,@fret-diagram-triad-format)
        (place-fret 5 5 "D"  ,@fret-diagram-other-format)
        (place-fret 5 7 "E"  ,@fret-diagram-triad-format)
        (place-fret 4 4 "F♯" ,@fret-diagram-pentatonic-format)
        (place-fret 4 6 "G♯" ,@fret-diagram-other-format)
        (place-fret 4 7 "A"  ,@fret-diagram-root-format)
        (place-fret 3 4 "B"  ,@fret-diagram-pentatonic-format)
        (place-fret 3 6 "C♯" ,@fret-diagram-triad-format)
        (place-fret 3 7 "D"  ,@fret-diagram-other-format)
        (place-fret 2 5 "E"  ,@fret-diagram-triad-format)
        (place-fret 2 7 "F♯" ,@fret-diagram-pentatonic-format)
        (place-fret 1 4 "G♯" ,@fret-diagram-other-format)
        (place-fret 1 5 "A"  ,@fret-diagram-root-format)
        (place-fret 1 7 "B"  ,@fret-diagram-pentatonic-format))
      \vspace #0.5
      "Positions 7 and 1 – Locrian and Ionian (major)"

      \vspace #1
    }
  }
}

\markup {
  \fret-markers-markup
  \override #'(fret-count . 15) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        (place-fret 6  7 "B"  ,@fret-diagram-pentatonic-format)
        (place-fret 6  9 "C♯" ,@fret-diagram-triad-format)
        (place-fret 6 10 "D"  ,@fret-diagram-other-format)
        (place-fret 5  7 "E"  ,@fret-diagram-triad-format)
        (place-fret 5  9 "F♯" ,@fret-diagram-pentatonic-format)
        (place-fret 4  6 "G♯" ,@fret-diagram-other-format)
        (place-fret 4  7 "A"  ,@fret-diagram-root-format)
        (place-fret 4  9 "B"  ,@fret-diagram-pentatonic-format)
        (place-fret 3  6 "C♯" ,@fret-diagram-triad-format)
        (place-fret 3  7 "D"  ,@fret-diagram-other-format)
        (place-fret 3  9 "E"  ,@fret-diagram-triad-format)
        (place-fret 2  7 "F♯" ,@fret-diagram-pentatonic-format)
        (place-fret 2  9 "G♯" ,@fret-diagram-other-format)
        (place-fret 2 10 "A"  ,@fret-diagram-root-format)
        (place-fret 1  7 "B"  ,@fret-diagram-pentatonic-format)
        (place-fret 1  9 "C♯" ,@fret-diagram-triad-format)
        (place-fret 1 10 "D"  ,@fret-diagram-other-format))
      \vspace #0.5
      "Position 2 – Dorian"

      \vspace #1
    }
  }
}

\markup {
  \fret-markers-markup
  \override #'(fret-count . 15) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        (place-fret 6  9 "C♯" ,@fret-diagram-triad-format)
        (place-fret 6 10 "D"  ,@fret-diagram-other-format)
        (place-fret 6 12 "E"  ,@fret-diagram-triad-format)
        (place-fret 5  9 "F♯" ,@fret-diagram-pentatonic-format)
        (place-fret 5 11 "G♯" ,@fret-diagram-other-format)
        (place-fret 5 12 "A"  ,@fret-diagram-root-format)
        (place-fret 4  9 "B"  ,@fret-diagram-pentatonic-format)
        (place-fret 4 11 "C♯" ,@fret-diagram-triad-format)
        (place-fret 4 12 "D"  ,@fret-diagram-other-format)
        (place-fret 3  9 "E"  ,@fret-diagram-triad-format)
        (place-fret 3 11 "F♯" ,@fret-diagram-pentatonic-format)
        (place-fret 2  9 "G♯" ,@fret-diagram-other-format)
        (place-fret 2 10 "A"  ,@fret-diagram-root-format)
        (place-fret 2 12 "B"  ,@fret-diagram-pentatonic-format)
        (place-fret 1  9 "C♯" ,@fret-diagram-triad-format)
        (place-fret 1 10 "D"  ,@fret-diagram-other-format)
        (place-fret 1 12 "E"  ,@fret-diagram-triad-format))
      \vspace #0.5
      "Positions 3 and 4 – Phrygian and Lydian"

      \vspace #1
    }
  }
}

\markup {
  \fret-markers-markup
  \override #'(fret-count . 15) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        (place-fret 6 12 "E"  ,@fret-diagram-triad-format)
        (place-fret 6 14 "F♯" ,@fret-diagram-pentatonic-format)
        (place-fret 5 11 "G♯" ,@fret-diagram-other-format)
        (place-fret 5 12 "A"  ,@fret-diagram-root-format)
        (place-fret 5 14 "B"  ,@fret-diagram-pentatonic-format)
        (place-fret 4 11 "C♯" ,@fret-diagram-triad-format)
        (place-fret 4 12 "D"  ,@fret-diagram-other-format)
        (place-fret 4 14 "E"  ,@fret-diagram-triad-format)
        (place-fret 3 11 "F♯" ,@fret-diagram-pentatonic-format)
        (place-fret 3 13 "G♯" ,@fret-diagram-other-format)
        (place-fret 3 14 "A"  ,@fret-diagram-root-format)
        (place-fret 2 12 "B"  ,@fret-diagram-pentatonic-format)
        (place-fret 2 14 "C♯" ,@fret-diagram-triad-format)
        (place-fret 2 15 "D"  ,@fret-diagram-other-format)
        (place-fret 1 10 "D"  ,@fret-diagram-light-other-format)
        (place-fret 1 12 "E"  ,@fret-diagram-triad-format)
        (place-fret 1 14 "F♯" ,@fret-diagram-pentatonic-format))
      \vspace #0.5
      "Position 5 – Mixolydian"

      \vspace #1
    }
  }
}

\markup {
  \fret-markers-markup
  \override #'(fret-count . 15) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        (place-fret 6  2 "F♯" ,@fret-diagram-pentatonic-format)
        (place-fret 6  4 "G♯" ,@fret-diagram-other-format)
        (place-fret 6  5 "A"  ,@fret-diagram-root-format)
        (place-fret 6  7 "B"  ,@fret-diagram-pentatonic-format)
        (place-fret 6  9 "C♯" ,@fret-diagram-triad-format)
        (place-fret 6 10 "D"  ,@fret-diagram-other-format)
        (place-fret 6 12 "E"  ,@fret-diagram-triad-format)
        (place-fret 6 14 "F♯" ,@fret-diagram-pentatonic-format)

        (place-fret 5  2 "B"  ,@fret-diagram-pentatonic-format)
        (place-fret 5  4 "C♯" ,@fret-diagram-triad-format)
        (place-fret 5  5 "D"  ,@fret-diagram-other-format)
        (place-fret 5  7 "E"  ,@fret-diagram-triad-format)
        (place-fret 5  9 "F♯" ,@fret-diagram-pentatonic-format)
        (place-fret 5 11 "G♯" ,@fret-diagram-other-format)
        (place-fret 5 12 "A"  ,@fret-diagram-root-format)
        (place-fret 5 14 "B"  ,@fret-diagram-pentatonic-format)

        (place-fret 4  2 "E"  ,@fret-diagram-triad-format)
        (place-fret 4  4 "F♯" ,@fret-diagram-pentatonic-format)
        (place-fret 4  6 "G♯" ,@fret-diagram-other-format)
        (place-fret 4  7 "A"  ,@fret-diagram-root-format)
        (place-fret 4  9 "B"  ,@fret-diagram-pentatonic-format)
        (place-fret 4 11 "C♯" ,@fret-diagram-triad-format)
        (place-fret 4 12 "D"  ,@fret-diagram-other-format)
        (place-fret 4 14 "E"  ,@fret-diagram-triad-format)

        (place-fret 3  1 "G♯" ,@fret-diagram-other-format)
        (place-fret 3  2 "A"  ,@fret-diagram-root-format)
        (place-fret 3  4 "B"  ,@fret-diagram-pentatonic-format)
        (place-fret 3  6 "C♯" ,@fret-diagram-triad-format)
        (place-fret 3  7 "D"  ,@fret-diagram-other-format)
        (place-fret 3  9 "E"  ,@fret-diagram-triad-format)
        (place-fret 3 11 "F♯" ,@fret-diagram-pentatonic-format)
        (place-fret 3 13 "G♯" ,@fret-diagram-other-format)
        (place-fret 3 14 "A"  ,@fret-diagram-root-format)

        (place-fret 2  2 "C♯" ,@fret-diagram-triad-format)
        (place-fret 2  3 "D"  ,@fret-diagram-other-format)
        (place-fret 2  5 "E"  ,@fret-diagram-triad-format)
        (place-fret 2  7 "F♯" ,@fret-diagram-pentatonic-format)
        (place-fret 2  9 "G♯" ,@fret-diagram-other-format)
        (place-fret 2 10 "A"  ,@fret-diagram-root-format)
        (place-fret 2 12 "B"  ,@fret-diagram-pentatonic-format)
        (place-fret 2 14 "C♯" ,@fret-diagram-triad-format)
        (place-fret 2 15 "D"  ,@fret-diagram-other-format)

        (place-fret 1  2 "F♯" ,@fret-diagram-pentatonic-format)
        (place-fret 1  4 "G♯" ,@fret-diagram-other-format)
        (place-fret 1  5 "A"  ,@fret-diagram-root-format)
        (place-fret 1  7 "B"  ,@fret-diagram-pentatonic-format)
        (place-fret 1  9 "C♯" ,@fret-diagram-triad-format)
        (place-fret 1 10 "D"  ,@fret-diagram-other-format)
        (place-fret 1 12 "E"  ,@fret-diagram-triad-format)
        (place-fret 1 14 "F♯" ,@fret-diagram-pentatonic-format))
      \vspace #0.5
      "All positions (up to fret 15)"
    }
  }
}
