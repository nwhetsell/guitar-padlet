\version "2.22.0"

\include "../titling.ily"
\paper {
  #(set-paper-size "letter")
  left-margin = 0.5\in
  top-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in
}

\language "english"

music = \relative {
  \key c \major
  \time 4/4

  c4-2 d8-4 e-1 f-2 g-4 a-1 b-3 |
  c4-1 d8-3 e-1 f-2 g-4 a-1 b-3 |
  c4-1 b8-3 a-1 g-4 f-3 e-1 d-3 |
  c4-1 b8-3 a-1 g-4 f-2 e-1 d-4 |
  c4-2
}

fret-diagram-size = 2.5

\score {
  <<
    \new Staff {
      \clef "treble_8"
      <<
        \music
        {
          s4^\markup { \combine
            % x-coordinate = size * fret-distance * (fret-number - 0.5) + 0.16
            %              = 2.5 * 1.5 * (fret-number − 0.5) + 0.16
            \postscript #"
              5.785 1.24 0.8 0 360 arc closepath
              13.285 1.24 0.8 0 360 arc closepath
              20.785 1.24 0.8 0 360 arc closepath
              28.285 1.24 0.8 0 360 arc closepath
              0.85 setgray fill
            "
            \override #`(size . ,fret-diagram-size)
            \fret-diagram-container {
              \fret-diagram-verbose #`(
                (place-fret 5 3 "C" ,@fret-diagram-root-format)
                (place-fret 5 5 "D" ,@fret-diagram-pentatonic-format)
                (place-fret 4 2 "E" ,@fret-diagram-triad-format)
                (place-fret 4 3 "F" ,@fret-diagram-other-format)
                (place-fret 4 5 "G" ,@fret-diagram-triad-format)
                (place-fret 3 2 "A" ,@fret-diagram-pentatonic-format)
                (place-fret 3 4 "B" ,@fret-diagram-other-format)
                (place-fret 3 5 "C" ,@fret-diagram-root-format)
                (place-fret 3 7 "D" ,@fret-diagram-pentatonic-format)
                (place-fret 2 5 "E" ,@fret-diagram-triad-format)
                (place-fret 2 6 "F" ,@fret-diagram-other-format)
                (place-fret 2 8 "G" ,@fret-diagram-triad-format)
                (place-fret 1 5 "A" ,@fret-diagram-pentatonic-format)
                (place-fret 1 7 "B" ,@fret-diagram-other-format)
                (place-fret 1 8 "C" ,@fret-diagram-root-format))
            }
          }
        }
      >>
    }
    \new TabStaff {
      <<
        \music
        {
          \set TabStaff.restrainOpenStrings = ##t
          \set TabStaff.minimumFret = #2
          s1 |
          \set TabStaff.minimumFret = #5
          s1*2 |
          s4 \set TabStaff.minimumFret = #2
        }
      >>
    }
  >>
}

\markup { \vspace #1 }

\score {
  <<
    \new Staff {
      \clef "treble_8"
      <<
        { \transpose c d-flat { \music } }
        {
          s4^\markup { \combine
            \postscript #"
              2.035 1.24 0.8 0 360 arc closepath
              9.535 1.24 0.8 0 360 arc closepath
              17.035 1.24 0.8 0 360 arc closepath
              24.535 1.24 0.8 0 360 arc closepath
              0.85 setgray fill
            "
            \override #`(size . ,fret-diagram-size)
            \fret-diagram-container {
              \fret-diagram-verbose #`(
                (place-fret 5 3 "D♭" ,@fret-diagram-root-format)
                (place-fret 5 5 "E♭" ,@fret-diagram-pentatonic-format)
                (place-fret 4 2 "F"  ,@fret-diagram-triad-format)
                (place-fret 4 3 "G♭" ,@fret-diagram-other-format)
                (place-fret 4 5 "A♭" ,@fret-diagram-triad-format)
                (place-fret 3 2 "B♭" ,@fret-diagram-pentatonic-format)
                (place-fret 3 4 "C"  ,@fret-diagram-other-format)
                (place-fret 3 5 "D♭" ,@fret-diagram-root-format)
                (place-fret 3 7 "E♭" ,@fret-diagram-pentatonic-format)
                (place-fret 2 5 "F"  ,@fret-diagram-triad-format)
                (place-fret 2 6 "G♭" ,@fret-diagram-other-format)
                (place-fret 2 8 "A♭" ,@fret-diagram-triad-format)
                (place-fret 1 5 "B♭" ,@fret-diagram-pentatonic-format)
                (place-fret 1 7 "C"  ,@fret-diagram-other-format)
                (place-fret 1 8 "D♭" ,@fret-diagram-root-format))
            }
          }
        }
      >>
    }
    \new TabStaff {
      <<
        { \transpose c d-flat { \music } }
        {
          \set TabStaff.restrainOpenStrings = ##t
          \set TabStaff.minimumFret = #3
          s1 |
          \set TabStaff.minimumFret = #6
          s1*2 |
          s4 \set TabStaff.minimumFret = #3
        }
      >>
    }
  >>
}

\markup { \vspace #1 }

\score {
  <<
    \new Staff {
      \clef "treble_8"
      <<
        { \transpose c d { \music } }
        {
          s4^\markup { \combine
            \postscript #"
              5.785 1.24 0.8 0 360 arc closepath
              13.285 1.24 0.8 0 360 arc closepath
              20.785 1.24 0.8 0 360 arc closepath
              0.85 setgray fill
            "
            \override #`(size . ,fret-diagram-size)
            \fret-diagram-container {
              \fret-diagram-verbose #`(
                (place-fret 5 3 "D"  ,@fret-diagram-root-format)
                (place-fret 5 5 "E"  ,@fret-diagram-pentatonic-format)
                (place-fret 4 2 "F♯" ,@fret-diagram-triad-format)
                (place-fret 4 3 "G"  ,@fret-diagram-other-format)
                (place-fret 4 5 "A"  ,@fret-diagram-triad-format)
                (place-fret 3 2 "B"  ,@fret-diagram-pentatonic-format)
                (place-fret 3 4 "C♯" ,@fret-diagram-other-format)
                (place-fret 3 5 "D"  ,@fret-diagram-root-format)
                (place-fret 3 7 "E"  ,@fret-diagram-pentatonic-format)
                (place-fret 2 5 "F♯" ,@fret-diagram-triad-format)
                (place-fret 2 6 "G"  ,@fret-diagram-other-format)
                (place-fret 2 8 "A"  ,@fret-diagram-triad-format)
                (place-fret 1 5 "B"  ,@fret-diagram-pentatonic-format)
                (place-fret 1 7 "C♯" ,@fret-diagram-other-format)
                (place-fret 1 8 "D"  ,@fret-diagram-root-format))
            }
          }
        }
      >>
    }
    \new TabStaff {
      <<
        { \transpose c d { \music } }
        {
          \set TabStaff.restrainOpenStrings = ##t
          \set TabStaff.minimumFret = #4
          s1 |
          \set TabStaff.minimumFret = #7
          s1*2 |
          s4 \set TabStaff.minimumFret = #4
        }
      >>
    }
  >>
}

\markup { \vspace #1 }

\score {
  <<
    \new Staff {
      \clef "treble_8"
      <<
        { \transpose c e-flat { \music } }
        {
          s4^\markup { \combine
            \postscript #"
              2.035 1.24 0.8 0 360 arc closepath
              9.535 1.24 0.8 0 360 arc closepath
              17.035 1.24 0.8 0 360 arc closepath
              28.285 3.72 0.8 0 360 arc closepath
              28.285 -1.24 0.8 0 360 arc closepath
              0.85 setgray fill
            "
            \override #`(size . ,fret-diagram-size)
            \fret-diagram-container {
              \fret-diagram-verbose #`(
                (place-fret 5 3 "E♭" ,@fret-diagram-root-format)
                (place-fret 5 5 "F"  ,@fret-diagram-pentatonic-format)
                (place-fret 4 2 "G"  ,@fret-diagram-triad-format)
                (place-fret 4 3 "A♭" ,@fret-diagram-other-format)
                (place-fret 4 5 "B♭" ,@fret-diagram-triad-format)
                (place-fret 3 2 "C"  ,@fret-diagram-pentatonic-format)
                (place-fret 3 4 "D"  ,@fret-diagram-other-format)
                (place-fret 3 5 "E♭" ,@fret-diagram-root-format)
                (place-fret 3 7 "F"  ,@fret-diagram-pentatonic-format)
                (place-fret 2 5 "G"  ,@fret-diagram-triad-format)
                (place-fret 2 6 "A♭" ,@fret-diagram-other-format)
                (place-fret 2 8 "B♭" ,@fret-diagram-triad-format)
                (place-fret 1 5 "C"  ,@fret-diagram-pentatonic-format)
                (place-fret 1 7 "D"  ,@fret-diagram-other-format)
                (place-fret 1 8 "E♭" ,@fret-diagram-root-format))
            }
          }
        }
      >>
    }
    \new TabStaff {
      <<
        { \transpose c e-flat { \music } }
        {
          \set TabStaff.restrainOpenStrings = ##t
          \set TabStaff.minimumFret = #5
          s1 |
          \set TabStaff.minimumFret = #8
          s1*2 |
          s4 \set TabStaff.minimumFret = #5
        }
      >>
    }
  >>
}

\markup { \vspace #1 }

music = \relative {
  \key f \major
  \time 4/4

  f,4-1 g8-3 a-0 b-flat-1 c-3 d-1 e-3 |
  f4-4 g8-1 a-3 b-flat-4 c-1 d-3 e-1 |
  f4-2 g8-4 a-1 b-flat-2 c-4 d-1 e-3 |
  f4-4 e8-3 d-1 c-4 b-flat-2 a-1 g-4 |
  f4-2 e8-1 d-3 c-1 b-flat-4 a-3 g-1 |
  f4-4 e8-3 d-1 c-3 b-flat-1 a-0 g-3 |
  f4-1
}

\score {
  <<
    \new Staff {
      \clef "treble_8"
      <<
        { \music }
        {
          s4^\markup { \combine
            % x-coordinate = size * fret-distance * (fret-number - 0.5) + 0.16
            %              = 2.5 * 1.5 * (fret-number − 0.5) + 1.5
            \postscript #"
              10.875 1.24 0.8 0 360 arc closepath
              18.375 1.24 0.8 0 360 arc closepath
              25.875 1.24 0.8 0 360 arc closepath
              33.375 1.24 0.8 0 360 arc closepath
              44.625 3.72 0.8 0 360 arc closepath
              44.625 -1.24 0.8 0 360 arc closepath
              0.85 setgray fill
            "
            \override #`(size . ,fret-diagram-size)
            \fret-diagram-container {
              \fret-diagram-verbose #`(
                (place-fret 6 1 "F" ,@fret-diagram-root-format)
                (place-fret 6 3 "G"  ,@fret-diagram-pentatonic-format)
                (open       5   "A"  ,@fret-diagram-triad-format)
                (place-fret 5 1 "B♭" ,@fret-diagram-other-format)
                (place-fret 5 3 "C" ,@fret-diagram-triad-format)
                (place-fret 5 5 "D"  ,@fret-diagram-pentatonic-format)
                (place-fret 5 7 "E"  ,@fret-diagram-other-format)
                (place-fret 5 8 "F" ,@fret-diagram-root-format)
                (place-fret 4 5 "G"  ,@fret-diagram-pentatonic-format)
                (place-fret 4 7 "A"  ,@fret-diagram-triad-format)
                (place-fret 4 8 "B♭" ,@fret-diagram-other-format)
                (place-fret 3 5 "C" ,@fret-diagram-triad-format)
                (place-fret 3 7 "D"  ,@fret-diagram-pentatonic-format)
                (place-fret 2 5 "E"  ,@fret-diagram-other-format)
                (place-fret 2 6 "F" ,@fret-diagram-root-format)
                (place-fret 2 8 "G"  ,@fret-diagram-pentatonic-format)
                (place-fret 1 5 "A"  ,@fret-diagram-triad-format)
                (place-fret 1 6 "B♭" ,@fret-diagram-other-format)
                (place-fret 1 8 "C" ,@fret-diagram-triad-format)
                (place-fret 1 10 "D"  ,@fret-diagram-pentatonic-format)
                (place-fret 1 12 "E"  ,@fret-diagram-other-format)
                (place-fret 1 13 "F" ,@fret-diagram-root-format))
            }
          }
        }
      >>
    }
    \new TabStaff {
      <<
        { \music }
        {
          s2. \set TabStaff.minimumFret = #5 \set TabStaff.restrainOpenStrings = ##t s4 |
          s1*4 |
          s2 \unset TabStaff.minimumFret \set TabStaff.restrainOpenStrings = ##f s2 |
        }
      >>
    }
  >>
}
