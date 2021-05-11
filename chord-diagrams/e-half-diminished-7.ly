\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\storePredefinedDiagram
  #default-fret-table
  \chordmode { e:m7.5- }
  #guitar-tuning
  #'(
    (mute 6)
    (place-fret 5 7 "E")
    (place-fret 4 8 "B♭" inverted)
    (place-fret 3 7 "D" inverted)
    (place-fret 2 8 "G" inverted)
    (mute 1)
  )

chord = \chordmode { e:m7.5- }

<<
  \new ChordNames { \chord }

  \new FretBoards {
    \override-FretBoard
    \override FretBoard.fret-diagram-details.fret-count = 2
    \chord
  }
>>
