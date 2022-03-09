\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\markup {
  \override #'(fret-count . 3)
  \override #'(fret-distance . 1)
  \override #'(orientation . 'normal)
  \override #'(size . 6)
  \fret-diagram-container {
    \center-column {
      \fret-diagram-verbose #`(
        (mute 6)
        (place-fret 5 2  "1" ,@fret-diagram-root-format)
        (place-fret 4 3 "♭5" ,@fret-diagram-other-format)
        (place-fret 3 2 "♭7" ,@fret-diagram-other-format)
        (place-fret 2 3 "♭3" ,@fret-diagram-triad-format)
        (mute 1))
      \vspace #0.5
      "Half-diminished 7th"
    }

    \hspace #5

    \center-column {
      \fret-diagram-verbose #`(
        (mute 6)
        (place-fret 5 2  "1" ,@fret-diagram-root-format)
        (place-fret 4 3 "♭5" ,@fret-diagram-other-format)
        (place-fret 3 1  "6" ,@fret-diagram-other-format)
        (place-fret 2 3 "♭3" ,@fret-diagram-triad-format)
        (mute 1))
      \vspace #0.5
      "Diminished 7th"
    }
  }
}
