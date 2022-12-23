\version "2.24.0"

\include "../titling.ily"
#(ly:set-option 'crop #t)

\markup {
  \override #'(fret-count . 3)
  \override #'(fret-distance . 1)
  \override #'(orientation . 'normal)
  \override #'(size . 6)
  \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        (place-fret 6 8  "1" ,@fret-diagram-root-format)
        (mute 5)
        (place-fret 4 8 "♭7" ,@fret-diagram-other-format)
        (place-fret 3 9  "3" ,@fret-diagram-triad-format)
        (place-fret 2 8  "5" ,@fret-diagram-triad-format)
        (mute 1))
      \vspace #0.5
      "Dominant 7th, root on string 6"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6 8  "1" ,@fret-diagram-root-format)
        (mute 5)
        (place-fret 4 8 "♭7" ,@fret-diagram-other-format)
        (place-fret 3 8 "♭3" ,@fret-diagram-triad-format)
        (place-fret 2 8  "5" ,@fret-diagram-triad-format)
        (mute 1))
      \vspace #0.5
      "Minor 7th, root on string 6"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6 8 "1" ,@fret-diagram-root-format)
        (mute 5)
        (place-fret 4 9 "7" ,@fret-diagram-other-format)
        (place-fret 3 9 "3" ,@fret-diagram-triad-format)
        (place-fret 2 8 "5" ,@fret-diagram-triad-format)
        (mute 1))
      \vspace #0.5
      "Major 7th, root on string 6"
    }

    \hspace #5

    \right-column {
      \fret-diagram-verbose #`(
        (mute 6)
        (place-fret 5 5  "1" ,@fret-diagram-root-format)
        (place-fret 4 7  "5" ,@fret-diagram-triad-format)
        (place-fret 3 5 "♭7" ,@fret-diagram-other-format)
        (place-fret 2 7  "3" ,@fret-diagram-triad-format)
        (mute 1))
      \vspace #0.5
      "Dominant 7th, root on string 5"

      \vspace #1

      \fret-diagram-verbose #`(
        (mute 6)
        (place-fret 5 5  "1" ,@fret-diagram-root-format)
        (place-fret 4 7  "5" ,@fret-diagram-triad-format)
        (place-fret 3 5 "♭7" ,@fret-diagram-other-format)
        (place-fret 2 6 "♭3" ,@fret-diagram-triad-format)
        (mute 1))
      \vspace #0.5
      "Minor 7th, root on string 5"

      \vspace #1

      \fret-diagram-verbose #`(
        (mute 6)
        (place-fret 5 5 "1" ,@fret-diagram-root-format)
        (place-fret 4 7 "5" ,@fret-diagram-triad-format)
        (place-fret 3 6 "7" ,@fret-diagram-other-format)
        (place-fret 2 7 "3" ,@fret-diagram-triad-format)
        (mute 1))
      \vspace #0.5
      "Major 7th, root on string 5"
    }

    \hspace #5

    \right-column {
      \fret-diagram-verbose #`(
        (mute 6)
        (place-fret 5 7  "1" ,@fret-diagram-root-format)
        (place-fret 4 6  "3" ,@fret-diagram-triad-format)
        (place-fret 3 7 "♭7" ,@fret-diagram-other-format)
        (place-fret 2 5  "1" ,@fret-diagram-root-format)
        (mute 1))
      \vspace #0.64
      "“Beatles” dominant"

      \vspace #1

      \fret-diagram-verbose #`(
        (mute 6)
        (place-fret 5 7  "1" ,@fret-diagram-root-format)
        (place-fret 4 5 "♭3" ,@fret-diagram-triad-format)
        (place-fret 3 7 "♭7" ,@fret-diagram-other-format)
        (place-fret 2 8 "♭3" ,@fret-diagram-triad-format)
        (mute 1))
      \vspace #0.5
      "Minor 7th (alternate)"
    }
  }
}
