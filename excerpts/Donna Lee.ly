\version "2.24.0"

\header {
  title = "Donna Lee"
  time-interval = "2:59–3:50"
  artist = "Charlie Parker"
}

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
    \TabStaff
    restrainOpenStrings = ##t
  }
}

\language "english"

measures-one-to-five = \relative {
  \key a-flat \major
  \time 4/4

  r2 \set TabStaff.minimumFret = #8 \tuplet 3/2 { g'8( a-flat g) } f e |
  e-flat!8 d-flat c b-flat \set TabStaff.minimumFret = #7 a \set TabStaff.minimumFret = #8 c, e-flat f |
  \tuplet 3/2 { g-flat8( a-flat! g-flat) } f e-flat d f a-flat c |
  g8 f r4 r \set TabStaff.minimumFret = #4 e8 d |

  e-flat!8 a, b-flat d-flat f a-flat! \set TabStaff.minimumFret = #5 c e-flat |
}

measure-six = \relative {
  \set TabStaff.minimumFret = #4 d-flat'8 f, a-flat c b? e, e-flat \set TabStaff.minimumFret = #6 d-flat |
}
measure-six-cory-henry = {
  \set TabStaff.minimumFret = #5 d-flat'8 e,-3\glissando \set TabStaff.minimumFret = #6 \tuplet 3/2 { f a-flat c } b-flat! e,!-2\glissando e-flat d-flat |
}

measures-seven-to-twelve = \relative {
  \set TabStaff.minimumFret = #6 c8 e-flat g b-flat a-flat4 e-flat8 f |
  g-flat8 b-flat d-flat \set TabStaff.minimumFret = #9 f e \set TabStaff.minimumFret = #5 c r4 |

  \set TabStaff.minimumFret = #3 e-flat!2-2~8 d-flat c b-flat |
  d-flat8 c r4 \set TabStaff.minimumFret = #4 g-flat'8-4 f-flat e-flat d-flat |
  \set TabStaff.minimumFret = #5 c8-2 8 d-flat d e-flat d-flat c b-flat |
  a8 c e-flat f \tuplet 3/2 { g-flat( a-flat! g-flat) } f e-flat |
}

measures-thirteen-to-sixteen = \relative {
  \set TabStaff.minimumFret = #6 d'8 c b a b-flat a-flat c, e-flat |
  \tuplet 3/2 { g8( g-flat f) } e4 r2 |
  \set TabStaff.minimumFret = #8 e-flat'8 d-flat f, a-flat c b-flat f a-flat |
  g8 b-flat d-flat b-flat \tuplet 3/2 { f-flat'( g-flat f-flat) } e-flat d-flat |
}
measures-thirteen-to-sixteen-cory-henry = \relative {
  \set TabStaff.minimumFret = #5 d'8 d-flat c \set TabStaff.minimumFret = #3 b b-flat d-flat,! e a-flat |
  \tuplet 3/2 { g8( g-flat f) } \set TabStaff.minimumFret = #2 e4 r2 |
  \set TabStaff.minimumFret = #8 e-flat'8 c a-flat f c' b-flat r g-flat |
  g!8 b-flat d-flat \set TabStaff.minimumFret = #9 f-flat \tuplet 3/2 { g-flat( g g-flat) } f-flat! e-flat16( d-flat) |
}

measures-seventeen-to-twenty-three = \relative {
  \set TabStaff.minimumFret = #8 c'4 r \tuplet 3/2 { g'8( a-flat g) } f e |
  e-flat!8 d-flat c b-flat \set TabStaff.minimumFret = #7 a \set TabStaff.minimumFret = #8 c, e-flat f |
  \tuplet 3/2 { g-flat8( a-flat! g-flat) } f e-flat d f a-flat c |
  g8 f r4 r \set TabStaff.minimumFret = #7 g8 f |

  e8 f g \set TabStaff.minimumFret = #6 a? b-flat a-flat! r f |
  \tuplet 3/2 { d-flat'8( e-flat d-flat) } \set TabStaff.minimumFret = #5 c b-flat \tuplet 3/2 { a-flat( b-flat a-flat) } g e |
  f4 r r2 |
}

measures-twenty-four-to-twenty-six = \relative {
  r2 r4 r8 g

  \set TabStaff.minimumFret = #4 c8 b c c-sharp \set TabStaff.minimumFret = #6 d c-sharp! d d-sharp |
  e8 d-sharp! e d-sharp! d c-sharp! c b-flat! |
}
measures-twenty-four-to-twenty-six-cory-henry = \relative {
  R1

  \set TabStaff.minimumFret = #4 c'8 b c c-sharp \set TabStaff.minimumFret = #6 d c-sharp! d d-sharp |
  e8 d-sharp! e d-sharp! d c-sharp! d a-flat! |
}

measures-twenty-seven-to-thirty-one = \relative {
  \tuplet 3/2 { a-flat8( b-flat a-flat) } \set TabStaff.minimumFret = #5 g a-flat b-flat a-flat g f |
  b,8 d f \set TabStaff.minimumFret = #6 a-flat b g' f e |
  e-flat!8 d-flat \set TabStaff.minimumFret = #5 c \set TabStaff.minimumFret = #6 b-flat a g-flat f e-flat |
  d-flat8 f a-flat c b-flat a-flat g e-flat |
  a-flat4 % a-flat g a-flat r a-flat g a-flat r a-flat g a-flat g c-flat c
}

\score {
  <<
    \chords {
      a-flat1:maj7 |
      g-flat2:7 f |
      b-flat1:7 |
      s1 |
      b-flat1:7 |
      e-flat1 |
      a-flat1:maj7 |
      g-flat2:7 a-flat:7 |
      d-flat1:maj7 |
      s1 |
      a-flat1:maj7 |
      f1:7 |
      b-flat2:7 b-flat2:dim |
      s1 |
      b-flat1:7 |
      e-flat1 |

      a-flat1:maj7 |
      g-flat2:7 f |
      b-flat1:7 |
      s1 |
      g1:m7.5- |
      c1:7 |
      f1:m |
      s1 |
      f2 d:m |
      g2:6 d:m |
      e-flat2 d:m |
      b1:dim7 |
      c2:m7 f:7 |
      b-flat2:m7 e-flat:7 |
      a-flat4
    }

    \new StaffGroup \with { \remove "System_start_delimiter_engraver" }
    {
      <<
        \new Staff="main" \relative {
          \clef "treble_8"
          \measures-one-to-five

          <<
            \measure-six

            \new StaffGroup
            \with {
              \remove "System_start_delimiter_engraver"
              % alignAboveContext = "main"
            }
            <<
              \new Staff \with {
                \remove "Time_signature_engraver"
                \magnifyStaff #(magstep -3)
              } {
                \set Staff.explicitKeySignatureVisibility = #all-invisible
                \clef "treble_8"
                \key a-flat \major
                \measure-six-cory-henry
              }
              \new TabStaff \with {
                \remove "Time_signature_engraver"
                \magnifyStaff #(magstep -3)
              } {
                \measure-six-cory-henry
              }
            >>
          >>

          \measures-seven-to-twelve

          <<
            \measures-thirteen-to-sixteen

            \new StaffGroup
            \with {
              \remove "System_start_delimiter_engraver"
              % alignAboveContext = "main"
            }
            <<
              \new Staff \with {
                \remove "Time_signature_engraver"
                \magnifyStaff #(magstep -3)
              } {
                \set Staff.explicitKeySignatureVisibility = #all-invisible
                \clef "treble_8"
                \key a-flat \major
                \measures-thirteen-to-sixteen-cory-henry
              }
              \new TabStaff \with {
                \remove "Time_signature_engraver"
                \magnifyStaff #(magstep -3)
              } {
                \measures-thirteen-to-sixteen-cory-henry
              }
            >>
          >>

          \measures-seventeen-to-twenty-three

          <<
            \measures-twenty-four-to-twenty-six

            \new StaffGroup
            \with {
              \remove "System_start_delimiter_engraver"
              % alignAboveContext = "main"
            }
            <<
              \new Staff \with {
                \remove "Time_signature_engraver"
                \magnifyStaff #(magstep -3)
              } {
                \set Staff.explicitKeySignatureVisibility = #all-invisible
                \clef "treble_8"
                \key a-flat \major
                \measures-twenty-four-to-twenty-six-cory-henry
              }
              \new TabStaff \with {
                \remove "Time_signature_engraver"
                \magnifyStaff #(magstep -3)
              } {
                \measures-twenty-four-to-twenty-six-cory-henry
              }
            >>
          >>

          \measures-twenty-seven-to-thirty-one
        }
        \new TabStaff \relative {
          \measures-one-to-five
          \measure-six
          \measures-seven-to-twelve
          \measures-thirteen-to-sixteen
          \measures-seventeen-to-twenty-three
          \measures-twenty-four-to-twenty-six
          \measures-twenty-seven-to-thirty-one
        }
      >>
    }
  >>
  \layout { }
}
