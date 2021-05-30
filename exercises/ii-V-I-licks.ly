\version "2.22.0"

\include "../titling.ily"
\paper {
  #(set-paper-size "letter")
  left-margin = 0.5\in
  top-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in
}

\layout {
  indent = 0
  \context {
    \Voice
    \consists "Horizontal_bracket_engraver"
    % \override HorizontalBracket.thickness = #0
    % \override HorizontalBracket.Y-offset = #-3.75
  }
}

\language "english"

% 0
music = {
  \key g \major
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #4
  e'8 c a g( f-sharp) a c e-flat( |
  \set TabStaff.minimumFret = #2
  d) c a a-sharp( b2) |
}

\score {
  <<
    \chords {
      a2:m7 d2:7
      g1:maj7
    }
    \new Staff \with {
      instrumentName = \markup { \bold "0 " }
    } \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

theChords = \chords {
  d1:m7
  g1:7
  c1:maj7
}

% 1
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #9
  d'8 e f g a f e d |
  g8 e \tuplet 3/2 { f a c } e16 f e d d-flat8 d |
  \set TabStaff.minimumFret = #8
  c4
}

\score {
  <<
    \theChords
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
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #6
  f'8 a, a-sharp b e e-flat d d-flat |
  \set TabStaff.minimumFret = #5
  c8-\tweak HorizontalBracketText.text \markup { \concat { "Dm" \super "7" } "arpeggio" } \startGroup a f d\stopGroup b' b-flat a a-flat |
  g4
}

\score {
  <<
    \theChords
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
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #9
  d'8 e f g a f e d |
  g8 f-sharp f e \set TabStaff.minimumFret = #8 e-flat b a-sharp a-flat |
  g4
}

\score {
  <<
    \theChords
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
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #9
  d'8 e g g-flat f e d c |
  \set TabStaff.minimumFret = #7
  b8 a g g-flat f a e d |
  \tuplet 3/2 { c8 e g } b4
}

\score {
  <<
    \theChords
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
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #9
  r8 d'-\tweak HorizontalBracketText.text \markup { \concat { "Dm" \super "7" } "arpeggio" } \startGroup f a c \stopGroup a a-sharp b |
  \set TabStaff.minimumFret = #8 g8 g-sharp a f \set TabStaff.minimumFret = #9 f-sharp g g f |
  e8 c~4
}

\score {
  <<
    \theChords
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

% 6
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #5
  g'8 f a, c e d c a |
  \set TabStaff.minimumFret = #4 b-\tweak HorizontalBracketText.text \markup { \concat { "B" \super "o" } "triad" } \startGroup d f d\stopGroup \set TabStaff.minimumFret = #3 \tuplet 3/2 { a-flat'-\tweak HorizontalBracketText.text "G Altered scale" \startGroup a-sharp a-flat } g f\stopGroup |
  c4
}

\score {
  <<
    \theChords
    \new Staff \with {
      instrumentName = \markup { \bold "6 " }
    } \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

% 7
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #9
  \partial 4 { d'8 e | }
  f8 g e f d e f g |
  \set TabStaff.minimumFret = #8
  a-sharp4 \tuplet 3/2 { a-flat8 e-flat b } b-flat g-sharp~4 |
  <g \tweak font-size #-2 c>4
}

\score {
  <<
    \chords {
      d4:m7 s1
      g1:7
      c1:maj7
    }
    \new Staff \with {
      instrumentName = \markup { \bold "7 " }
    } \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

% 8
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #2
  d'8 c b a g g-flat f e |
  d8 e f g \set TabStaff.minimumFret = #3 a-flat g e-flat' d-flat |
  c4
}

\score {
  <<
    \theChords
    \new Staff \with {
      instrumentName = \markup { \bold "8 " }
    } \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

% 9
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #9
  f'8 e d e d c b \set TabStaff.minimumFret = #7 a |
  g8 g-flat f a e d g f |
  a8 c e g~2 |
}

\score {
  <<
    \theChords
    \new Staff \with {
      instrumentName = \markup { \bold "9 " }
    } \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}
