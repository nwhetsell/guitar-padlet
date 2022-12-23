\version "2.24.0"

\include "../titling.ily"
#(ly:set-option 'crop #t)

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

#(begin
  (define string-six-frets `(
    (place-fret 6  1 "E♯" ,@fret-diagram-other-format)
    (place-fret 6  2 "F♯" ,@fret-diagram-root-format)
    (place-fret 6  4 "G♯" ,@fret-diagram-other-format)
    (place-fret 6  5 "A"  ,@fret-diagram-triad-format)
    (place-fret 6  7 "B"  ,@fret-diagram-pentatonic-format)
    (place-fret 6  9 "C♯" ,@fret-diagram-triad-format)
    (place-fret 6 10 "D"  ,@fret-diagram-other-format)
    (place-fret 6 13 "E♯" ,@fret-diagram-other-format)
    (place-fret 6 14 "F♯" ,@fret-diagram-root-format)))
  (define string-five-frets `(
    (place-fret 5  2 "B"  ,@fret-diagram-pentatonic-format)
    (place-fret 5  4 "C♯" ,@fret-diagram-triad-format)
    (place-fret 5  5 "D"  ,@fret-diagram-other-format)
    (place-fret 5  8 "E♯" ,@fret-diagram-other-format)
    (place-fret 5  9 "F♯" ,@fret-diagram-root-format)
    (place-fret 5 11 "G♯" ,@fret-diagram-other-format)
    (place-fret 5 12 "A"  ,@fret-diagram-triad-format)
    (place-fret 5 14 "B"  ,@fret-diagram-pentatonic-format)))
  (define string-four-frets `(
    (place-fret 4  3 "E♯" ,@fret-diagram-other-format)
    (place-fret 4  4 "F♯" ,@fret-diagram-root-format)
    (place-fret 4  6 "G♯" ,@fret-diagram-other-format)
    (place-fret 4  7 "A"  ,@fret-diagram-triad-format)
    (place-fret 4  9 "B"  ,@fret-diagram-pentatonic-format)
    (place-fret 4 11 "C♯" ,@fret-diagram-triad-format)
    (place-fret 4 12 "D"  ,@fret-diagram-other-format)
    (place-fret 4 14 "E♯" ,@fret-diagram-other-format)))
  (define string-three-frets `(
    (place-fret 3  1 "G♯" ,@fret-diagram-other-format)
    (place-fret 3  2 "A"  ,@fret-diagram-root-format)
    (place-fret 3  4 "B"  ,@fret-diagram-pentatonic-format)
    (place-fret 3  6 "C♯" ,@fret-diagram-triad-format)
    (place-fret 3  7 "D"  ,@fret-diagram-other-format)
    (place-fret 3 10 "E♯" ,@fret-diagram-other-format)
    (place-fret 3 11 "F♯" ,@fret-diagram-root-format)
    (place-fret 3 13 "G♯" ,@fret-diagram-other-format)
    (place-fret 3 14 "A"  ,@fret-diagram-triad-format)))
  (define string-two-frets `(
    (place-fret 2  2 "C♯" ,@fret-diagram-triad-format)
    (place-fret 2  3 "D"  ,@fret-diagram-other-format)
    (place-fret 2  6 "E♯" ,@fret-diagram-other-format)
    (place-fret 2  7 "F♯" ,@fret-diagram-root-format)
    (place-fret 2  9 "G♯" ,@fret-diagram-other-format)
    (place-fret 2 10 "A"  ,@fret-diagram-triad-format)
    (place-fret 2 12 "B"  ,@fret-diagram-pentatonic-format)
    (place-fret 2 14 "C♯" ,@fret-diagram-triad-format)))
  (define string-one-frets `(
    (place-fret 1  1 "E♯" ,@fret-diagram-other-format)
    (place-fret 1  2 "F♯" ,@fret-diagram-root-format)
    (place-fret 1  4 "G♯" ,@fret-diagram-other-format)
    (place-fret 1  5 "A"  ,@fret-diagram-triad-format)
    (place-fret 1  7 "B"  ,@fret-diagram-pentatonic-format)
    (place-fret 1  9 "C♯" ,@fret-diagram-triad-format)
    (place-fret 1 10 "D"  ,@fret-diagram-other-format)
    (place-fret 1 13 "E♯" ,@fret-diagram-other-format)
    (place-fret 1 14 "F♯" ,@fret-diagram-root-format)))
)

\markup {
  \fret-markers-markup
  \override #'(fret-count . 14) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        ,@(list-head (list-tail string-six-frets 0) 4)
        ,@(list-head (list-tail string-five-frets 0) 3)
        ,@(list-head (list-tail string-four-frets 0) 2)
        ,@(list-head (list-tail string-three-frets 0) 3)
        ,@(list-head (list-tail string-two-frets 0) 2)
        ,@(list-head (list-tail string-one-frets 0) 4)
        (place-fret 4  6 "G♯" ,@fret-diagram-light-other-format))
      \vspace #0.5
      "Positions 7 and 1 – Ultralocrian and harmonic minor"

      \vspace #1
    }
  }
}

\markup {
  \fret-markers-markup
  \override #'(fret-count . 14) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        ,@(list-head (list-tail string-six-frets 2) 3)
        ,@(list-head (list-tail string-five-frets 1) 2)
        ,@(list-head (list-tail string-four-frets 0) 4)
        ,@(list-head (list-tail string-three-frets 2) 3)
        ,@(list-head (list-tail string-two-frets 2) 2)
        ,@(list-head (list-tail string-one-frets 2) 3))
      \vspace #0.5
      "Position – Locrian ♮6"

      \vspace #1
    }
  }
}

\markup {
  \fret-markers-markup
  \override #'(fret-count . 14) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        ,@(list-head (list-tail string-six-frets 3) 3)
        ,@(list-head (list-tail string-five-frets 2) 3)
        ,@(list-head (list-tail string-four-frets 2) 3)
        ,@(list-head (list-tail string-three-frets 3) 2)
        ,@(list-head (list-tail string-two-frets 2) 3)
        ,@(list-head (list-tail string-one-frets 3) 3))
      \vspace #0.5
      "Position 3 – Major augmented (Ionian ♯5)"

      \vspace #1
    }
  }
}

\markup {
  \fret-markers-markup
  \override #'(fret-count . 14) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        ,@(list-head (list-tail string-six-frets 4) 3)
        ,@(list-head (list-tail string-five-frets 3) 3)
        ,@(list-head (list-tail string-four-frets 3) 3)
        ,@(list-head (list-tail string-three-frets 4) 2)
        ,@(list-head (list-tail string-two-frets 3) 3)
        ,@(list-head (list-tail string-one-frets 4) 3))
      \vspace #0.5
      "Position 4 – Lydian diminished (Dorian ♯4)"

      \vspace #1
    }
  }
}

\markup {
  \fret-markers-markup
  \override #'(fret-count . 14) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        ,@(list-head (list-tail string-six-frets 5) 2)
        ,@(list-head (list-tail string-five-frets 3) 4)
        ,@(list-head (list-tail string-four-frets 4) 3)
        ,@(list-head (list-tail string-three-frets 5) 2)
        ,@(list-head (list-tail string-two-frets 4) 3)
        ,@(list-head (list-tail string-one-frets 5) 2))
      \vspace #0.5
      "Position 5 – Phrygian dominant (Phrygian ♯3)"

      \vspace #1
    }
  }
}

\markup {
  \fret-markers-markup
  \override #'(fret-count . 14) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        ,@(list-head (list-tail string-six-frets 6) 3)
        ,@(list-head (list-tail string-five-frets 5) 3)
        ,@(list-head (list-tail string-four-frets 5) 2)
        ,@(list-head (list-tail string-three-frets 5) 3)
        ,@(list-head (list-tail string-two-frets 5) 3)
        ,@(list-head (list-tail string-one-frets 6) 3))
      \vspace #0.5
      "Position 6 – Aeolian harmonic (Lydian ♯2)"

      \vspace #1
    }
  }
}

\markup {
  \fret-markers-markup
  \override #'(fret-count . 14) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        ,@string-six-frets
        ,@string-five-frets
        ,@string-four-frets
        ,@string-three-frets
        ,@string-two-frets
        ,@string-one-frets)
      \vspace #0.5
      "All positions (up to fret 14)"
    }
  }
}
