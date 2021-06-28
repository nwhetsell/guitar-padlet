\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\markup {
  \override #'(fret-count . 3)
  \override #'(fret-distance . 1)
  \override #'(orientation . 'normal)
  \override #'(size . 6)
  \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        (place-fret 6   8  "1" ,@fret-diagram-root-format)
        (mute 5)
        (place-fret 4   8 "♭7" ,@fret-diagram-other-format)
        (place-fret 3   9  "3" ,@fret-diagram-triad-format)
        (place-fret 2  10 "13" ,@fret-diagram-other-format)
        (mute 1))
      \vspace #0.5
      "13th"

      \vspace #1

      \fret-diagram-verbose #`(
        (mute 6)
        (place-fret 5  5  "1" ,@fret-diagram-root-format)
        (place-fret 4  4  "3" ,@fret-diagram-triad-format)
        (place-fret 3  5 "♭7" ,@fret-diagram-other-format)
        (place-fret 2  5  "9" ,@fret-diagram-other-format)
        (place-fret 1  5  "5" ,@fret-diagram-triad-format))
      \vspace #0.5
      "9th"
    }

    \hspace #5

    \right-column {
      \fret-diagram-verbose #`(
        (place-fret 6  8  "1" ,@fret-diagram-root-format)
        (mute 5)
        (place-fret 4  8 "♭7" ,@fret-diagram-other-format)
        (place-fret 3  9  "3" ,@fret-diagram-triad-format)
        (place-fret 2  8  "5" ,@fret-diagram-triad-format)
        (mute 1))
      \vspace #0.5
      "Dominant 7th, root on string 6"
    }
  }
}
