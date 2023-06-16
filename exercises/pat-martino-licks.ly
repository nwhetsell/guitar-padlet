\version "2.24.0"

\include "../lilypond-bending-additions/bending-additions.ily"

\include "../titling.ily"
\paper {
  #(set-paper-size "letter")
  left-margin = 0.5\in
  top-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in
}
\layout {
  \context {
    \TabVoice
    \consists #Bent_grace_engraver
  }
  \context {
    \Voice
    \consists #Bent_grace_engraver
  }
}

\language "english"

% 1
music = {
  \key g \major
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #2
  r8 \grace c-sharp'16 \glissando d8 g,4 c16 b-flat c b-flat~8 c |
  r8 \grace c-sharp16 \glissando d8 g,4 c16 b-flat c b-flat~8 d, |
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
  \layout { }
  \midi { \tempo 8 = 120 }
}

% 2
music = {
  \key g \major
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #4
  r8 \grace c-sharp'16 \glissando d8~8. c-sharp,16 \glissando d e f a e' c-sharp \glissando d e |
  f16 g a b \glissando c8. a16 f e r8 r4 |
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
  \layout { }
  \midi { \tempo 8 = 120 }
}

% 3
music = {
  \key g \major
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #5
  r2 r8. d'16 f8 16 16 |
  b-flat,16 g r8 r8. \set TabStaff.minimumFret = #2 \grace c-sharp16 \glissando <d>_~ <d g>8 \tuplet 3/2 { d16\3( c b-flat) } g d f g |
  f16 g r8 r4 r2 |
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
  \layout { \omit Voice.StringNumber }
  \midi { \tempo 8 = 120 }
}

% 4
music = {
  \key g \major
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #7
  \partial 8 { b-flat'16 a-flat } |
  g16 f d e-flat e g b-flat d c8 \grace a-flat16 \glissando a8 g \grace e-flat16 \glissando e8 |
  \set TabStaff.minimumFret = #5
  d8[ \grace { a16 \glissando b-flat \glissando } a8] g2. |
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
  \layout { }
  \midi { \tempo 8 = 120 }
}

% 5
music = {
  \key g \major
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #4
  r2 r16 f g a-flat c a b-flat c |
  d-flat16 f c' b-flat \glissando a-flat f e-flat d-flat c a-flat f d-flat \set TabStaff.minimumFret = #3 c8 \grace a!16 \glissando b-flat16 a~ |
  4 r \set TabStaff.minimumFret = #5 f''8 \tuplet 3/2 { 16 b-flat, a! } \set TabStaff.minimumFret = #9 a-flat'8 \tuplet 3/2 { 16 d-flat, c } |
  a'!2 r |
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
  \layout { }
  \midi { \tempo 8 = 120 }
}

% 6
music = {
  \key g \major
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #3
  \grace a-flat'16 \glissando a4 g16 f8. d16 c8. b-flat16 g8. |
  f16 g f \grace 16 \glissando g16 r4 r2 |
}

\score {
  <<
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
  \layout { }
  \midi { \tempo 8 = 120 }
}

% 7
music = {
  \key g \major
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #6
  \partial 4 { \grace f'16 \glissando g b-flat c8 } |
  \grace c16 \glissando d8. g,16 r4 r16 \grace f \glissando g b-flat8 c b-flat |
  \grace c16 \glissando d8 g, f16 g8. r2 |
}

\score {
  <<
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
  \layout { }
  \midi { \tempo 8 = 120 }
}

% 8
music = {
  \key g \major
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #5
  r4 f-sharp'!16( g) b-flat \repeat unfold 3 { f-sharp( g) b-flat } |
  \repeat unfold 4 { f-sharp( g) b-flat } d d-flat c b-flat |
  g16 f d c a a-flat g8 f g16 \grace e-flat \glissando e~8 g |
  \set TabStaff.minimumFret = #7
  r16 f-sharp! g a! b-flat d a' g( f-sharp) d b-flat8 a16 g r8 |
}

\score {
  <<
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
  \layout { }
  \midi { \tempo 8 = 120 }
}

% 9
music = {
  \key g \major
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #4
  r8. a!16 c a b-flat c d-flat f c' b-flat a-flat f r8 |
  \set TabStaff.minimumFret = #6
  d'!16 c \glissando b-flat g f e-flat d r \set TabStaff.minimumFret = #8 f' e-flat \glissando d-flat b-flat a-flat f-sharp f e-flat! |
  \set TabStaff.minimumFret = #6
  d!16[ g r d] g4 r8. g16 b-flat8 16 16 |
  g16[ b-flat r g] b-flat4 r2 |
}

\score {
  <<
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
  \layout { }
  \midi { \tempo 8 = 120 }
}

% 10
music = {
  \key g \major
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #9
  \partial 2 { r16 \grace e'16 \glissando g8. b-flat8 c } |
  <d-flat f>4~8 c b-flat g b-flat c |
  \repeat unfold 2 { <d-flat f>4 c8. b-flat16 r \grace e,16 \glissando g8. b-flat8 c } |
  \set TabStaff.minimumFret = #12
  \grace c16 \glissando d g8. d16( c) b-flat g~4 r |
}

\score {
  <<
    \new Staff \with {
      instrumentName = \markup { \bold "10 " }
    } \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
  \layout { }
  \midi { \tempo 8 = 120 }
}
