\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'crop #t)

\markup {
  \override #'(fret-count . 3)
  \override #'(fret-distance . 1)
  \override #'(orientation . 'normal)
  \override #'(size . 6)
  \fret-diagram-container {
    \fret-diagram-verbose #`(
      (place-fret 6  3 "1" ,@fret-diagram-root-format)
      (mute 5)
      (place-fret 4  1 "6" ,@fret-diagram-other-format)
      (place-fret 3  4 "3" ,@fret-diagram-triad-format)
      (mute 2)
      (mute 1))
    \vspace #0.5
  }
}
