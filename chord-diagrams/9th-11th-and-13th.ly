\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'crop #t)

\markup {
  \override #'(fret-count . 4)
  \override #'(fret-distance . 1)
  \override #'(orientation . 'normal)
  \override #'(size . 6)
  \fret-diagram-container {
    \left-column {
      \concat { \hspace #1.5 \fret-diagram-verbose #`(
        (mute 6)
        (place-fret 5 3   "1" ,@fret-diagram-root-format)
        (place-fret 4 2   "3" ,@fret-diagram-triad-format)
        (place-fret 3 3  "♭7" ,@fret-diagram-other-format)
        (place-fret 2 3   "9" ,@fret-diagram-other-format)
        (place-fret 1 3   "5" ,@fret-diagram-triad-format parenthesized))
      }
      \vspace #0.5
      "Dominant 9th"

      \vspace #1


      \fret-diagram-verbose #`(
        (place-fret 6 3   "1" ,@fret-diagram-root-format)
        (mute 5)
        (place-fret 4 3  "♭7" ,@fret-diagram-other-format)
        (place-fret 3 4   "3" ,@fret-diagram-triad-format)
        (place-fret 2 2 "♯11" ,@fret-diagram-other-format)
        (mute 1))
      \vspace #0.5
      "Dominant 7#11"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6 2   "1" ,@fret-diagram-root-format)
        (mute 5)
        (place-fret 4 2  "♭7" ,@fret-diagram-other-format)
        (place-fret 3 3   "3" ,@fret-diagram-triad-format)
        (place-fret 2 4  "13" ,@fret-diagram-other-format)
        (mute 1))
      \vspace #0.5
      "Dominant 13th"
    }

    \hspace #5

    \left-column {
      \fret-diagram-verbose #`(
        (place-fret 6 2   "1" ,@fret-diagram-root-format)
        (mute 5)
        (place-fret 4 2  "♭7" ,@fret-diagram-other-format)
        (place-fret 3 2  "♭3" ,@fret-diagram-triad-format)
        (place-fret 2 2   "5" ,@fret-diagram-triad-format)
        (place-fret 1 4   "9" ,@fret-diagram-other-format))
      \vspace #0.5
      "Minor 9th"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6 3   "1" ,@fret-diagram-root-format)
        (mute 5)
        (place-fret 4 4   "7" ,@fret-diagram-other-format)
        (place-fret 3 4   "3" ,@fret-diagram-triad-format)
        (place-fret 2 2 "♯11" ,@fret-diagram-other-format)
        (place-fret 1 2   "7" ,@fret-diagram-other-format))
      \vspace #0.5
      "Major 7#11"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6 2   "1" ,@fret-diagram-root-format)
        (mute 5)
        (place-fret 4 4   "1" ,@fret-diagram-root-format)
        (place-fret 3 3   "3" ,@fret-diagram-triad-format)
        (place-fret 2 4   "6" ,@fret-diagram-other-format)
        (mute 1))
      \vspace #0.5
      "6th"
    }

    \hspace #5

    \left-column {
      \concat { \hspace #1.5 \fret-diagram-verbose #`(
        (mute 6)
        (place-fret 5 3   "1" ,@fret-diagram-root-format)
        (place-fret 4 2   "3" ,@fret-diagram-triad-format)
        (place-fret 3 4   "7" ,@fret-diagram-other-format)
        (place-fret 2 3   "9" ,@fret-diagram-other-format)
        (mute 1))
      }
      \vspace #0.5
      "Major 9th"

      \vspace #1

      \fret-diagram-verbose #`(
        (place-fret 6 3   "1" ,@fret-diagram-root-format)
        (mute 5)
        (place-fret 4 3  "♭7" ,@fret-diagram-other-format)
        (place-fret 3 3  "♭3" ,@fret-diagram-triad-format)
        (place-fret 2 1  "11" ,@fret-diagram-other-format)
        (mute 1))
      \vspace #0.5
      "Minor 11th"
    }

    \hspace #5

    \left-column {
      \fret-diagram-verbose #`(
        (mute 6)
        (place-fret 5 3  "1" ,@fret-diagram-root-format)
        (place-fret 4 1 "♭3" ,@fret-diagram-triad-format)
        (place-fret 3 2  "6" ,@fret-diagram-other-format)
        (place-fret 2 3  "9" ,@fret-diagram-other-format)
        (mute 1))
      \vspace #0.5
      "Minor 6/9"
    }
  }
}
