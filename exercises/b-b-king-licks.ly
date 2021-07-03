\version "2.22.0"

\include "../lilypond-bend-spanner/bending.ily"
\include "../lilypond-bending-additions/bending-additions.ily"
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
  \key b \major
  \time 12/8
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #7
  \partial 2. { r4 b8-. \acciaccatura d16 d-sharp8 f-sharp g-sharp-. } |
  \set TabStaff.minimumFret = #12
  b4. c-sharp8.\startBend \bent-grace { d-sharp16\stopBend } b16 c-sharp g-sharp f-sharp'32 b,4 r16. c-sharp4.\startBend |
  d4.\stopBend
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
  \key b \major
  \time 12/8
  \set TabStaff.restrainOpenStrings = ##t
  \partial 4.*3 {
    r4 \set TabStaff.minimumFret = #11 \ottava #1 \grace f-sharp'16\glissando \set TabStaff.minimumFret = #12 g-sharp b
    \bent-grace c-sharp16\preBend\startBend d-sharp\stopBend\startBend c-sharp64\stopBend( b32.) b8. g-sharp16
    c-sharp8\startBend \bent-grace { d-sharp16\stopBend } e16 f-sharp c-sharp\startBend \bent-grace { d-sharp16\stopBend } c-sharp
  } |
  b4 r16 g-sharp c-sharp8\startBend \bent-grace { d-sharp16\stopBend\startBend } c-sharp4\stopBend\startBend~4.~ \afterGrace c-sharp8 { \afterGrace-stopBend d-sharp16 } \ottava #0 r8 r |
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
  \key b \major
  \time 12/8
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #9
  r4 g-sharp'16 b \grace d\glissando d-sharp b f-sharp f e r \set TabStaff.minimumFret = #7 \grace d\glissando d-sharp \grace d\glissando d-sharp b4~4 r8 |
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
  \layout { }
  \midi { \tempo 8 = 120 }
}

% 4
music = {
  \key b \major
  \time 12/8
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #12
  \ottava #1
  b''4\bendAfter #-8 r8
  f-sharp4.\startBend \bent-grace { a4\stopBend c-sharp,\preBend\startBend }
  d-sharp16\stopBend\startBend \bent-grace c-sharp16\stopBend b32 g-sharp b8. g-sharp16
  c-sharp8\startBend[ \bent-grace { d16\stopBend } e32 f-sharp r16 \bent-grace c-sharp16\preBend\startBend d-sharp16\stopBend\startBend \bent-grace c-sharp16\stopBend b32 g-sharp] |
  d'32( b16.~) 8 c-sharp16 \ottava #0 r16
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
  \key b \major
  \time 12/8
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #6
  \partial 2. { r8. f-sharp16 g-sharp b d[( d-sharp) f-sharp-. r g-sharp8] } |
  g-sharp4\startBend \bent-grace { a4\stopBend\startBend g-sharp\stopBend } f-sharp16 g-sharp \acciaccatura d d-sharp b~8 \tuplet 3/2 { a16 f-sharp f } e16 d-sharp~4 r4. |
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
  \key b \major
  \time 12/8
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #7
  \partial 2. { r4. r8 \ottava #1 f-sharp'16 g-sharp b8-. } |
  c-sharp4\startBend \bent-grace { d-sharp16\stopBend } c-sharp8-. c-sharp\startBend \bent-grace { d-sharp16\stopBend } c-sharp8-. c-sharp\startBend \bent-grace { d-sharp16\stopBend } c-sharp16 f-sharp, f-sharp4~8. \ottava #0 r16 r8 |
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
  \key b \minor
  \time 12/8
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #10
  \partial 2. { r4. r4 \ottava #1 a'32 b d16-. } |
  e4.\startBend \bent-grace { f-sharp16\stopBend } b,4. \tuplet 4/6 { e16( d-sharp!) e( d-sharp) } \grace e16\glissando f-sharp8-. d8.\startBend \bent-grace { d-sharp16\stopBend } b32 a |
  b4. d4\startBend \bent-grace { d-sharp16\stopBend } \tuplet 3/2 { b16 a f-sharp } \ottava #0 r2. |
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
  \key b \minor
  \time 12/8
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #6
  \partial 2. { r4. \acciaccatura d'16 d-sharp f-sharp b f-sharp \grace d\glissando d-sharp r } |
  b4. r8 \tuplet 3/2 { f-sharp16 g-sharp b } \grace d16\glissando d-sharp16. b32 f-sharp4. r |
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
