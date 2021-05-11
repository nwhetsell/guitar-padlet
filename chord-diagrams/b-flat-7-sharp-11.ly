\version "2.22.0"

\include "predefined-guitar-fretboards.ly"
\include "../titling.ily"
#(ly:set-option 'backend 'eps)

\language "english"

\storePredefinedDiagram
  #default-fret-table
  \chordmode { b-flat:7.11+^5 }
  #guitar-tuning
  #'(
    (place-fret 6 6 "B♭")
    (mute 5)
    (place-fret 4 6 "A♭" inverted)
    (place-fret 3 7 "D" inverted)
    (place-fret 2 5 "E♮" inverted)
    (mute 1)
  )

chord = \chordmode { b-flat:7.11+^5 }

<<
  \new ChordNames { \chord }

  \new FretBoards {
    \override-FretBoard
    \override FretBoard.fret-diagram-details.fret-count = 3
    \chord
  }
>>
