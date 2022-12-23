\version "2.24.0"

\header {
  title = "Goodbye Pork Pie Hat"
  artist = "Charles Mingus"
  album = "Mingus Ah Um"
}

\include "../titling.ily"
\paper {
  #(set-paper-size "letter")
  left-margin = 0.5\in
  top-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in
}

\language "english"

music = {
  \key e-flat \major
  \time 4/4

  \set TabStaff.restrainOpenStrings = ##t

  s1*12
}

\score {
  <<
    \chords {
      s8 |
      e-flat2:7.9+ b:9.13 |
      e2:maj9 a:7.11+ |
      d-flat2:9.4^3 b:9.13 |
      d-flat2:7.4^3 e-flat:7 |
      a-flat:m11 b:7.13 |
      f2:m7.5- b-flat:7.5+.9+ |
      c2:13.11+ f:7.13 |
      b2:7 e:maj7 |
      a2:7.13 a-flat:7 |
      b-flat2:7 d-flat:7 |
      e-flat2:7.9+ b:7 |
      e2:maj7.11+ a:7.11+ |
    }

    \new Staff \relative {
      \tempo "Ballad" 4=56

      \key e-flat \major
      \time 4/4

      \partial 8 b-flat8 \mf |

      <<
        {
          e-flat8 g-flat~8 e-flat16 g-flat a-flat8 g-flat~8 e-flat16 d-flat |
          e-flat8 g-flat~8 e-flat16 d-flat e-flat4. \breathe b-flat8 |
          e-flat8 a-flat~8 e-flat16 a-flat( a8) a-flat~8 e-flat16 d-flat |
          e-flat8 g-flat~8 e-flat16 d-flat e-flat4. \breathe 8 |
          b-flat'8 d-flat~8 e-flat,16 g-flat a-flat8 g-flat~8 e-flat16 g-flat |
          b-flat8 e-flat~8 g-flat,16 a-flat \tuplet 3/2 4 { d-flat4 b-flat8 g-flat d b } |
          \tuplet 3/2 { f-sharp'4 a8~ } 8 <d-sharp, e> \tuplet 3/2 { d4 a'8~ } 8 f |
          f-sharp2 \< d-sharp4. \! \breathe a'16 g-sharp |
          f-sharp2 \< e-flat \! \breathe |
          a-flat?8 \< g-flat e-flat d-flat a' \< a-flat g-flat e-flat \! |
          f-sharp2 d-sharp \breathe |
          \tuplet 3/2 2 { a-sharp'4 g-sharp f-sharp d-sharp c-sharp \breathe b-flat } |
        }

        {
          \override Voice.TextScript.size = 1.5
          \override Voice.TextScript.fret-diagram-details.finger-code = #'below-string

          % E♭7 ♯9
          s2^\markup { \left-align
            \fret-diagram-verbose #'(
              (mute 6)
              (place-fret 5 6 2)
              (place-fret 4 5 1)
              (place-fret 3 6 3)
              (place-fret 2 7 4)
              (mute 1)
            )
          }
          % B9 13
          s^\markup { \left-align
            % This is actually B9
            \fret-diagram-verbose #'(
              (place-fret 6 7 2)
              (mute 5)
              (place-fret 4 7 3)
              (place-fret 3 6 1)
              (place-fret 2 7 4)
              (mute 1)
            )
          } |

          % E△9
          s2^\markup { \left-align
            \fret-diagram-verbose #'(
              (mute 6)
              (place-fret 5 5 2)
              (place-fret 4 4 1)
              (place-fret 3 6 4)
              (place-fret 2 5 3)
              (mute 1)
            )
          }
          % A7 ♯11
          s^\markup { \left-align
            \fret-diagram-verbose #'(
              (place-fret 6 5 2)
              (mute 5)
              (place-fret 4 5 3)
              (place-fret 3 6 4)
              (place-fret 2 4 1)
              (mute 1)
            )
          } |

          % D♭9 sus4
          s2^\markup { \left-align
            \fret-diagram-verbose #'(
              (mute 6)
              (place-fret 5 4 1)
              (place-fret 4 4 1)
              (place-fret 3 4 1)
              (place-fret 2 4 1)
              (place-fret 1 4 1)
              (barre 5 1 4)
            )
          }
          % B9 13
          s^\markup { \left-align
            % This is actually B9
            \fret-diagram-verbose #'(
              (place-fret 6 7 2)
              (mute 5)
              (place-fret 4 7 3)
              (place-fret 3 6 1)
              (place-fret 2 7 4)
              (mute 1)
            )
          } |

          % D♭7 sus4
          s2^\markup { \left-align
            \fret-diagram-verbose #'(
              (mute 6)
              (place-fret 5 4 1)
              (place-fret 4 6 3)
              (place-fret 3 4 1)
              (place-fret 2 7 4)
              (place-fret 1 4 1)
              (barre 5 1 4)
            )
          }
          % E♭7
          \textLengthOn
          s^\markup { \with-dimension #X #'(0 . 3.5) \left-align
            \fret-diagram-verbose #'(
              (mute 6)
              (place-fret 5 6 1)
              (place-fret 4 8 3)
              (place-fret 3 6 1)
              (place-fret 2 8 4)
              (place-fret 1 6 1)
              (barre 5 1 6)
            )
          } |
          \textLengthOff

          % A♭m11
          s2^\markup { \left-align
            \fret-diagram-verbose #'(
              (place-fret 6 4 2)
              (mute 5)
              (place-fret 4 4 3)
              (place-fret 3 4 4)
              (place-fret 2 2 1)
              (mute 1)
            )
          }
          % B7 13
          s^\markup { \left-align
            \fret-diagram-verbose #'(
              (place-fret 6 7 1)
              (mute 5)
              (place-fret 4 7 2)
              (place-fret 3 8 3)
              (place-fret 2 9 4)
              (mute 1)
            )
          } |

          % F𝆩
          s2^\markup { \left-align
            \fret-diagram-verbose #'(
              (mute 6)
              (place-fret 5 8 1)
              (place-fret 4 9 3)
              (place-fret 3 8 2)
              (place-fret 2 9 4)
              (mute 1)
            )
          }
          % B♭7 ♯5 ♯9
          s^\markup { \left-align
            \fret-diagram-verbose #'(
              (place-fret 6 6 1)
              (mute 5)
              (place-fret 4 6 2)
              (place-fret 3 7 3)
              (place-fret 2 7 3)
              (barre 3 2 7)
              (place-fret 1 9 4)
            )
          } |

          % C7 ♯11 13
          s2^\markup { \left-align
            % This is actually C7 ♯11
            \fret-diagram-verbose #'(
              (place-fret 6 8 2)
              (mute 5)
              (place-fret 4 8 3)
              (place-fret 3 9 4)
              (place-fret 2 7 1)
              (mute 1)
            )
          }
          % F 7 13
          s^\markup { \left-align
            \fret-diagram-verbose #'(
              (mute 6)
              (place-fret 5  8 1)
              (place-fret 4  7 2)
              (place-fret 3  8 3)
              (place-fret 2 10 4)
              (place-fret 1 10 4)
              (barre 2 1 10)
            )
          } |

          % B7
          \textLengthOn
          s2^\markup { \left-align
            \fret-diagram-verbose #'(
              (place-fret 6 7 1)
              (mute 5)
              (place-fret 4 7 2)
              (place-fret 3 8 4)
              (place-fret 2 7 3 parenthesized)
              (mute 1)
            )
          }
          \textLengthOff
          % E△
          s^\markup { \left-align
            \fret-diagram-verbose #'(
              (mute 6)
              (place-fret 5  8 1)
              (place-fret 4 10 3)
              (place-fret 3  9 2)
              (place-fret 2 10 4)
              (mute 1)
            )
          } |

          % A 7 13
          \textLengthOn
          s2^\markup { \left-align
            \fret-diagram-verbose #'(
              (place-fret 6 5 1)
              (mute 5)
              (place-fret 4 5 2)
              (place-fret 3 6 3)
              (place-fret 2 7 4)
              (mute 1)
            )
          }
          \textLengthOff
          % A♭7
          s^\markup { \left-align
            \fret-diagram-verbose #'(
              (place-fret 6 4 1)
              (mute 5)
              (place-fret 4 4 2)
              (place-fret 3 5 4)
              (place-fret 2 4 3 parenthesized)
              (mute 1)
            )
          } |

          % B♭7
          s2^\markup { \left-align
            \fret-diagram-verbose #'(
              (place-fret 6 6 1)
              (mute 5)
              (place-fret 4 6 2)
              (place-fret 3 7 4)
              (place-fret 2 6 3 parenthesized)
              (mute 1)
            )
          }
          % D♭7
          s^\markup { \left-align
            \fret-diagram-verbose #'(
              (mute 6)
              (place-fret 5 4 1)
              (place-fret 4 6 3)
              (place-fret 3 4 1)
              (place-fret 2 6 4)
              (place-fret 1 4 1)
              (barre 5 1 4)
            )
          } |

          % E♭7 ♯9
          \textLengthOn
          s2^\markup { \left-align
            \fret-diagram-verbose #'(
              (mute 6)
              (place-fret 5 6 2)
              (place-fret 4 5 1)
              (place-fret 3 6 3)
              (place-fret 2 7 4)
              (mute 1)
            )
          }
          \textLengthOff
          % B7
          s^\markup { \left-align
            \fret-diagram-verbose #'(
              (place-fret 6 7 1)
              (mute 5)
              (place-fret 4 7 2)
              (place-fret 3 8 4)
              (place-fret 2 7 3 parenthesized)
              (mute 1)
            )
          } |

          % E lyd
          s2^\markup { \left-align
            \fret-diagram-verbose #'(
              (mute 6)
              (place-fret 5 7 2)
              (mute 4)
              (place-fret 3 8 3)
              (place-fret 2 9 4)
              (place-fret 1 6 1)
            )
          }
          % A7 ♯11
          s^\markup { \left-align
            \fret-diagram-verbose #'(
              (place-fret 6 5 2)
              (mute 5)
              (place-fret 4 5 3)
              (place-fret 3 6 4)
              (place-fret 2 4 1)
              (mute 1)
            )
          } |
        }
      >>
    }
  >>
}
