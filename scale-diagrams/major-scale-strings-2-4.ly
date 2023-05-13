\version "2.24.0"

\include "../titling.ily"
#(ly:set-option 'crop #t)

\markup {
  \override #'(size . 6) \fret-diagram-container {
    \overlay {
      \with-color #grey \put-adjacent #Y #UP
        \path #0.2 #'(
          (moveto 0.15 25)
          (rmoveto 1 0.5)
          (rlineto 0 2.5)
          (rlineto 34 0)
          (rlineto 0 -2.5))
        \translate #'(1.15 . 0) \column { "Segovia-based scale" \vspace #0.1 }

      \with-color #grey \put-adjacent #Y #UP
        \path #0.2 #'(
          (moveto 0.15 25)
          (rmoveto 36 0)
          (rmoveto 1 0.5)
          (rlineto 0 2.5)
          (rlineto 43 0)
          (rlineto 0 -2.5))
        \translate #'(37.15 . 0) \column { "3 notes per string" \vspace #0.1 }

      \with-color #grey \put-adjacent #Y #UP
        \path #0.2 #'(
          (moveto 0.15 25)
          (rmoveto 72 0)
          (rmoveto 1 0.5)
          (rlineto 0 2)
          (rmoveto 0 1)
          (rlineto 0 0.5)
          (rlineto 25 0)
          (rlineto 0 -3.5))
        \translate #'(73.15 . 0) \column { "B.B. King box" \vspace #0.1 }

      \with-color #grey \put-adjacent #Y #UP
        \path #0.2 #'(
          (moveto 0.15 25)
          (rmoveto 108 0)
          (rmoveto 1 0.5)
          (rlineto 0 2.5)
          (rlineto 34 0)
          (rlineto 0 -2.5))
        \translate #'(109.15 . 0) \column { "Segovia-based scale" \vspace #0.1 }

      \fret-diagram-verbose #`(
        (place-fret 4  9 "7" ,@fret-diagram-light-other-format)
        (place-fret 4 10 "1" ,@fret-diagram-root-format)
        (place-fret 4 12 "2" ,@fret-diagram-pentatonic-format)
        (place-fret 3  9 "3" ,@fret-diagram-triad-format)
        (place-fret 3 10 "4" ,@fret-diagram-other-format)
        (place-fret 3 12 "5" ,@fret-diagram-triad-format)
        (place-fret 2 10 "6" ,@fret-diagram-pentatonic-format)
        (place-fret 2 12 "7" ,@fret-diagram-other-format)
        (place-fret 2 13 "1" ,@fret-diagram-root-format)
        (place-fret 1 10 "2" ,@fret-diagram-pentatonic-format)
        (place-fret 1 12 "3" ,@fret-diagram-triad-format)
        (place-fret 1 13 "4" ,@fret-diagram-other-format)

        (place-fret 3  5 "1" ,@fret-diagram-root-format)
        (place-fret 3  7 "2" ,@fret-diagram-other-format)
        (place-fret 2  5 "3" ,@fret-diagram-triad-format)
        (place-fret 2  6 "4" ,@fret-diagram-other-format)
        (place-fret 2  8 "5" ,@fret-diagram-triad-format)
        (place-fret 1  5 "6" ,@fret-diagram-pentatonic-format)
        (place-fret 1  7 "7" ,@fret-diagram-other-format)
        (place-fret 1  8 "1" ,@fret-diagram-root-format)

        (place-fret 3 17 "1" ,@fret-diagram-root-format)
        (place-fret 3 19 "2" ,@fret-diagram-other-format)
        (place-fret 2 17 "3" ,@fret-diagram-triad-format)
        (place-fret 2 18 "4" ,@fret-diagram-other-format)
        (place-fret 2 20 "5" ,@fret-diagram-triad-format)
        (place-fret 1 17 "6" ,@fret-diagram-pentatonic-format)
        (place-fret 1 19 "7" ,@fret-diagram-other-format)
        (place-fret 1 20 "1" ,@fret-diagram-root-format)

        (place-fret 3 14 "6" ,@fret-diagram-pentatonic-format)
        (place-fret 2 15 "2" ,@fret-diagram-pentatonic-format)
        (place-fret 1 15 "5" ,@fret-diagram-triad-format))
    }
  }
}
