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

% 1
music = {
  \time 2/4
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #1
  \repeat volta 2 { \tuplet 3/2 4 { a-flat'8^"Repeat 100 times"-4 g-flat-2 f-1 e-flat-4 d-flat-2 c-1 } } |
  \set TabStaff.minimumFret = #2
  \repeat volta 2 { \tuplet 3/2 4 { a'8-4 g-2 g-flat-1 e-4 d-2 d-flat-1 } } |
  \set TabStaff.minimumFret = #3
  \repeat volta 2 { \tuplet 3/2 4 { b-flat'8-4 a-flat-2 g-1 f-4 e-flat-2 d-1 } } |
  \once \override Score.RehearsalMark.font-size = 0
  \once \override Score.RehearsalMark.self-alignment-X = #right
  \mark \markup { "Continue up the fretboard" }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "1 " }
    } \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

% 2
music = {
  \time 2/4
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #1
  \repeat volta 2 { \tuplet 3/2 4 { a-flat'8-4 g-3 f-1 e-flat-4 d-3 c-1 } } |
  \set TabStaff.minimumFret = #2
  \repeat volta 2 { \tuplet 3/2 4 { a'8-4 a-flat-3 g-flat-1 e-4 e-flat-3 d-flat-1 } } |
  \set TabStaff.minimumFret = #3
  \repeat volta 2 { \tuplet 3/2 4 { b-flat'8-4 a-3 g-1 f-4 e-3 d-1 } } |
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "2 " }
    } \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

% 3
music = {
  \time 2/4
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #1
  \repeat volta 2 {
    \tupletDown
    \tuplet 3/2 4 {
      a-flat'8-4 g-flat-2 f-1 e-flat-4 d-flat-2 c-1 |
      b8-4 a-2 a-flat-1 f-sharp-4 e-2 e-flat-1 |
      c-sharp8-4 b-2 b-flat-1 a-flat-4 g-flat-2 f-1~ |
    }
    \tupletNeutral
    f4 r
  }
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "3 " }
    } \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

% 4
music = {
  \time 2/4
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #1
  \repeat volta 2 { \tuplet 3/2 4 { f'8-1 g-flat-2 a-flat-4 c,-1 d-flat-2 e-flat-4 } } |
  \set TabStaff.minimumFret = #2
  \repeat volta 2 { \tuplet 3/2 4 { g-flat8-1 g-2 a-4 d-flat,-1 d-2 e-4 } } |
  \set TabStaff.minimumFret = #3
  \repeat volta 2 { \tuplet 3/2 4 { g8-1 a-flat-2 b-flat-4 d,-1 e-flat-2 f-4 } } |
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "4 " }
    } \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

% 5
music = {
  \time 2/4
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #1
  \repeat volta 2 { \tuplet 3/2 4 { f'8-1 g-3 a-flat-4 c,-1 d-3 e-flat-4 } } |
  \set TabStaff.minimumFret = #2
  \repeat volta 2 { \tuplet 3/2 4 { g-flat8-1 a-flat-3 a-4 d-flat,-1 e-flat-3 e-4 } } |
  \set TabStaff.minimumFret = #3
  \repeat volta 2 { \tuplet 3/2 4 { g8-1 a-3 b-flat-4 d,-1 e-3 f-4 } } |
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "5 " }
    } \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}
