\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\markup {
  \override #'(fret-count . 4)
  \override #'(fret-distance . 1)
  \override #'(orientation . 'normal)
  \override #'(size . 6)
  \fret-diagram-container {
    \center-column {
      \fret-diagram-verbose #`(
        (place-fret 6  3  "1" ,@fret-diagram-root-format)
        (mute 5)
        (place-fret 4  3 "♭7" ,@fret-diagram-other-format)
        (place-fret 3  3 "♭3" ,@fret-diagram-triad-format)
        (place-fret 2  3  "5" ,@fret-diagram-triad-format)
        (mute 1))
      \vspace #0.5
      "ii (minor 7th)"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6  3  "1" ,@fret-diagram-root-format)
        (mute 5)
        (place-fret 4  3 "♭7" ,@fret-diagram-other-format)
        (place-fret 3  3 "♭3" ,@fret-diagram-triad-format)
        (place-fret 2  2 "♭5" ,@fret-diagram-other-format)
        (mute 1))
      \vspace #0.5
      "ii (half-diminished 7th)"
    }

    \hspace #5

    \center-column {
      \fret-diagram-verbose #`(
        (mute 6)
        (place-fret 5  3  "1" ,@fret-diagram-root-format)
        (place-fret 4  2  "3" ,@fret-diagram-triad-format)
        (place-fret 3  3 "♭7" ,@fret-diagram-other-format)
        (place-fret 2  3  "9" ,@fret-diagram-other-format)
        (place-fret 1  3  "5" ,@fret-diagram-triad-format))
      \vspace #0.5
      "V (dominant 9th)"

      \vspace #1

      \fret-diagram-verbose #`(
        (mute 6)
        (place-fret 5  3  "1" ,@fret-diagram-root-format)
        (place-fret 4  2  "3" ,@fret-diagram-triad-format)
        (place-fret 3  3 "♭7" ,@fret-diagram-other-format)
        (place-fret 2  2 "♭9" ,@fret-diagram-other-format parenthesized)
        (place-fret 2  4 "♯9" ,@fret-diagram-other-format)
        (mute 1))
      \vspace #0.5
      "V (dominant 7th, ♯ or ♭ 9)"
    }

    \hspace #5

    \center-column {
      \fret-diagram-verbose #`(
        (place-fret 6  1 "1" ,@fret-diagram-root-format)
        (mute 5)
        (place-fret 4  2 "7" ,@fret-diagram-other-format)
        (place-fret 3  2 "3" ,@fret-diagram-triad-format)
        (place-fret 2  1 "5" ,@fret-diagram-triad-format)
        (mute 1))
      \vspace #0.5
      "I (major 7th)"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6  1  "1" ,@fret-diagram-root-format)
        (mute 5)
        (place-fret 4  1 "♭7" ,@fret-diagram-other-format)
        (place-fret 3  1 "♭3" ,@fret-diagram-triad-format)
        (place-fret 2  1  "5" ,@fret-diagram-triad-format)
        (mute 1))
      \vspace #0.5
      "i (minor 7th)"
    }
  }
}
