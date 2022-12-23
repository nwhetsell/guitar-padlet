\version "2.24.0"

\include "../titling.ily"
\paper {
  #(set-paper-size "letter")
  left-margin = 0.5\in
  top-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in
  score-markup-spacing = #'((basic-distance . 10)
                            (padding . 0.5)
                            (stretchability . 0))
}

\layout {
  \context {
    \Score
    \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/64)
  }
}

\language "english"

\markup {
  \column {
    \abs-fontsize #24 "Chord Melody Concepts"
    \vspace #1.5
  }
}

\markup {
  \column {
    \abs-fontsize #16 "Diatonic Substitution"
    \vspace #0.5
    \justify {
      Diatonic substitutions occur when chords in a harmonized scale are used to
      substitute for each other. The types of diatonic substitutions are
      II ↔︎ IV, V ↔︎ VII, and I ↔︎ III ↔︎ VI.
    }
    \vspace #1
  }
}

melody = {
  c''2 d |
  e2 b' |
  a2 g |
  f2 d |
}
melody-chords = \chords {
  c1:maj7 |
  a1:m7 |
  d1:m7 |
  g1:7 |
}

\markup {
  \column {
    \italic "Substituting II for IV and IV for II"
    \vspace #0.5
    \justify {
      Using \concat { F \super △ } in place of \concat { Dm \super 7 } creates a
      \concat { Dm \super 9 } sound. Conversely, using \concat { Dm \super 7 }
      in place of \concat { F \super △ } will create an \concat { F \super 6 }
      sound. In \concat { \bold "1" , } we have a I-VI-II-V progression.
      Measure 3 uses \concat { F \super △ } and
      \concat { F \super { △ \hspace #0.25 13 } } (the IV chord) to substitute
      for \concat { Dm \super 7 } (the II chord).
    }
    \vspace #0.5
  }
}

% 1
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #1
  <c e a c>2 <c e b' d> |
  <a g' c e>2 <a g' c e b'> |
  <f' a c e a>2 <e a d g> |
  \set TabStaff.minimumFret = #3
  <g, d' f b f'>2 <g d' f b d> | \bar "|."
}

\score {
  <<
    \melody-chords
    \new Staff \with {
      instrumentName = \markup { \bold "1 " }
    } \relative {
      \melody
    }
    \chords {
      c2:6 c:maj9 |
      a2:m7 a:m9 |
      f2:maj7 f:maj13.11 |
      g1:7 |
    }
    \new Staff <<
      \new Voice=voice \relative {
        \clef "treble_8"
        \music
      }
      \new Lyrics \lyricsto voice {
        \override LyricText.font-size = #0
        \lyricmode {
          \repeat unfold 4 { \skip 1 }
          ii→IV ii→IV
        }
      }
    >>
    \new TabStaff \relative {
      \music
    }
  >>
}

\markup {
  \column {
    \italic "Substituting V for VII and VII for V"
    \vspace #0.5
    \justify {
      Using \concat { G \super 7 } in place of \concat { B \super ø } creates a
      \concat { B \super { ø \hspace #0.25 \raise #0.4 \teeny \sharp 5 } }
      sound. Conversely, using \concat { B \super ø } in place of
      \concat { G \super 7 } will create a \concat { G \super 9 } sound. In
      \concat { \bold "2" , } we again have a I-VI-II-V progression. The first
      half note in measure 3 uses \concat { F \super △ } (the IV chord) to
      substitute for \concat { Dm \super 7 } (the II chord). In measure 4, the
      first half note is \concat { B \super ø } (the VII chord) substituting for
      \concat { G \super 7 } (the V chord), creating a \concat { G \super 9 }
      sound.
    }
    \vspace #0.5
  }
}

% 2
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #1
  <c e a c>2 <c e b' d> |
  <a g' c e>2 <a g' c e b'> |
  <f' a c e a>2 <d c' f g> |
  \set TabStaff.minimumFret = #3
  <b a' d f>2 <f' b d> | \bar "|."
}

\score {
  <<
    \melody-chords
    \new Staff \with {
      instrumentName = \markup { \bold "2 " }
    } \relative {
      \melody
    }
    \chords {
      c2:6 c:maj9 |
      a2:m7 a:m9 |
      f2:maj7 d:m11 |
      b2:m7.5- g:7 |
    }
    \new Staff <<
      \new Voice=voice \relative {
        \clef "treble_8"
        \music
      }
      \new Lyrics \lyricsto voice {
        \override LyricText.font-size = #0
        \lyricmode {
          \repeat unfold 4 { \skip 1 }
          ii→IV
          \skip 1
          V→vii
        }
      }
    >>
    \new TabStaff \relative {
      \music
    }
  >>
}

\markup {
  \column {
    \italic "Substituting I, III, and VI Interchangeably"
    \vspace #0.5
    \justify {
      Using \concat { C \super △ } in place of \concat { Em \super 7 } creates
      an \concat { Em \super { 7 \hspace #0.25 \raise #0.4 \teeny \sharp 5 } }
      sound. Conversely, using \concat { Em \super 7 } in place of
      \concat { C \super △ } creates a first inversion of \concat { C \super △ }
      – or \concat { C \super △ /E. } Using \concat { Am \super 7 } in place of
      \concat { C \super △ } creates a \concat { C \super 6 } sound. Conversely,
      using \concat { C \super △ } in place of \concat { Am \super 7 } creates
      an \concat { Am \super 7 } sound. In \concat { \bold "3" , } I’ve
      reharmonized the I-VI-II-V using \concat { Am \super 7 } and
      \concat { Em \super 7 } to sub for \concat { C \super △ } (the I chord).
      In measure 2, I’ve substituted \concat { C \super △ } and
      \concat { Em \super 11 } for \concat { Am \super 7 } (the VI chord). In
      measure 3, the first half note uses \concat { F \super △ } (the IV chord)
      to substitute for \concat { Dm \super 7 } (the II chord). In measure 4,
      the first half note uses \concat { B \super ø } (the VII chord) to
      substitute for \concat { G \super 7 } (the V chord), creating a
      \concat { G \super 9 } sound.
    }
    \vspace #0.5
  }
}

% 3
music = {
  <a, e' g c>2
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #1
  <e' g b d> |

  <c g' b e>2 <e a d g b> |
  <f a c e a>2 <d c' f g> |
  \set TabStaff.minimumFret = #3
  <b a' d f>2 <f' b d> | \bar "|."
}

\score {
  <<
    \melody-chords
    \new Staff \with {
      instrumentName = \markup { \bold "3 " }
    } \relative {
      \melody
    }
    \chords {
      a2:m7 e:m7 |
      c2:maj7 e:m11 |
      f2:maj7 d:m11 |
      b2:m7.5- g:7 |
    }
    \new Staff <<
      \new Voice=voice \relative {
        \clef "treble_8"
        \music
      }
      \new Lyrics \lyricsto voice {
        \override LyricText.font-size = #0
        \lyricmode {
          I→vi
          I→iii
          vi→I
          vi→iii
          ii→IV
          \skip 1
          V→vii
        }
      }
    >>
    \new TabStaff \relative {
      \music
    }
  >>
}


\markup {
  \column {
    \vspace #0.5
    \abs-fontsize #16 "Minor 3rd Substitution"
    \vspace #0.5
    \justify {
      A minor 3rd substitution takes either the II chord, the V chord, or both
      the II and V up or down a minor 3rd before resolving to I.
    }
    \vspace #1
  }
}

melody = {
  \key g \major
  c''4 a d, g |
  a4 f c e-flat |
  f-sharp!1~ |
  1 |
}
melody-chords = \chords {
  a1:m7 |
  d1:7 |
  g1:maj7 |
}

\markup {
  \column {
    \justify { \italic { \concat { IIm \super 7 } Minor 3rd Substitution } }
    \vspace #0.5
    \justify {
      \bold "4" has a II-V-I progression in G major. I substituted the II chord
      \concat { (Am \super 7 ) } up a minor 3rd to \concat { Cm \super 7 , }
      then to \concat { D \super 7 } (the V chord), and finally to
      \concat { G \super △ } (the I chord).
    }
    \vspace #0.5
  }
}

% 4
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #4
  <c b-flat' e-flat g c>4 a'' d, g |
  <d, f-sharp! c' e! a>4 f' c e-flat |
  \set TabStaff.minimumFret = #2
  <g,, b' d f-sharp!>1~ |
  q1 | \bar "|."
}

\score {
  <<
    \melody-chords
    \new Staff \with {
      instrumentName = \markup { \bold "4 " }
    } \relative {
      \melody
    }
    \chords {
      c1:m7 |
      d1:9 |
      g1:maj7 |
    }
    \new Staff \relative {
      \clef "treble_8"
      \key g \major
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

\markup {
  \column {
    \justify { \italic { \concat { V \super 7 } Minor 3rd Substitution } }
    \vspace #0.5
    \justify {
      \bold "5" has the same II-V-I progression in G major, only I’ve
      substituted \concat { F \super 7 } for \concat { D \super 7 } (the V
      chord), resolving to \concat { G \super △ } (the I chord).
    }
    \vspace #0.5
  }
}

% 5
music = {
  \set TabStaff.minimumFret = #4
  <a, a' e' g c>4 a'' d, g |
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #2
  <f, c' e-flat a>4 f' c e-flat! |
  <g, b d f-sharp!>1~ |
  q1 | \bar "|."
}

\score {
  <<
    \melody-chords
    \new Staff \with {
      instrumentName = \markup { \bold "5 " }
    } \relative {
      \melody
    }
    \chords {
      a1:m7 |
      f1:7 |
      g1:maj7 |
    }
    \new Staff \relative {
      \clef "treble_8"
      \key g \major
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

\markup {
  \column {
    \justify { \italic {
      \concat { IIm \super 7 } and \concat { V \super 7 } Minor 3rd Substitution
    } }
    \vspace #0.5
    \justify {
      In \bold "6", I’ve substituted the \concat { Am \super 7 } and
      \concat { D \super 7 } (the II-V) up a minor 3rd using
      \concat { Cm \super 7 } and \concat { F \super 7 , } before resolving to
      \concat { G \super △ } (the I chord).
    }
    \vspace #0.5
  }
}

% 6
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #4
  <c b-flat' e-flat g c>4 a'' d, g |
  \set TabStaff.minimumFret = #2
  <f, c' e-flat a>4 f' c e-flat! |
  <g, b d f-sharp!>1~ |
  q1 | \bar "|."
}

\score {
  <<
    \melody-chords
    \new Staff \with {
      instrumentName = \markup { \bold "6 " }
    } \relative {
      \melody
    }
    \chords {
      c1:m7 |
      f1:7 |
      g1:maj7 |
    }
    \new Staff \relative {
      \clef "treble_8"
      \key g \major
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

\markup {
  \column {
    \justify {
      Play through these examples and let your ears be the judge. This is a very
      hip way to create some different sounds for a II-V-I progression.
      Remember: this concept is endless. By moving in minor 3rds, it creates
      somewhat of a diminished sound. You can experiment with soloing using the
      same concept. For example, play a II-V line over \concat { Cm \super 7 }
      and \concat { F \super 7 } and resolve it to \concat { G \super △ }.
    }
    \vspace #1
  }
}


\markup {
  \column {
    \vspace #0.5
    \abs-fontsize #16 "Chord-Note"
    \vspace #0.5
    \justify {
      Chord-note playing is just like it sounds: you hit a chord, followed by
      one, two, or three single melody notes.
    }
    \vspace #1
  }
}

melody = {
  f''4 e d c |
  a-flat'4 g f e-flat |
  e!4 g a! b |
  c4 d b a |
}
melody-chords = \chords {
  d1:m7 |
  g1:7 |
  c1:maj7 |
}

\markup {
  \column {
    \justify { \italic { Chord-Note-Note-Note } }
    \vspace #0.5
    \justify {
      A chord followed by three notes (chord-note-note-note) works well with
      uptempo tunes. \bold "7" has a II-V-I progression using this concept.
    }
    \vspace #0.5
  }
}

% 7
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #3
  <d f c' f>4 e' d c |
  <f, b e a-flat>4 g' f e-flat |
  <c, g' b e!>4 g'' a! b |
  \set TabStaff.minimumFret = #7
  <a, d g c>4 d' b a | \bar "|."
}

\score {
  <<
    \melody-chords
    \new Staff \with {
      instrumentName = \markup { \bold "7 " }
    } \relative {
      \melody
    }
    \chords {
      d1:m7 |
      g1:13.9- |
      c1:maj7 |
      c1:6.9 |
    }
    \new Staff \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

\markup {
  \column {
    \justify { \italic { Chord-Note-Note } }
    \vspace #0.5
    \justify {
      Playing a chord followed by two notes (chord-note-note) sounds best with
      tunes in \concat { \raise #0.5 \teeny \compound-meter #'(3 4) . }
      \bold "8" has a I-VI-II-V progression in
      \raise #0.5 \teeny \compound-meter #'(3 4) using this concept. Try
      experimenting with this in a \raise #0.5 \teeny \compound-meter #'(4 4)
      time signature to create some interesting three-against-four-type feels.
    }
    \vspace #0.5
  }
}

% 8
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #1
  <b-flat, f' a d>4 f'' g |
  <f, b-flat d b-flat'>4 a' g |
  <c,, e-flat b-flat' e-flat>4 d' c |
  <e-flat, a d g-flat>4 f' e-flat | \bar "|."
}

\score {
  <<
    \chords {
      b-flat2.:maj7 |
      g2.:m7 |
      c2.:m7 |
      f2.:7 |
    }
    \new Staff \with {
      instrumentName = \markup { \bold "8 " }
    } \relative {
      \key b-flat \major
      d''4 f g |
      b-flat4 a g |
      e-flat4 d c |
      g-flat'4 f e-flat |
    }
    \chords {
      b-flat2.:maj7 |
      g2.:m7 |
      c2.:m7 |
      f2.:13.9- |
    }
    \new Staff \relative {
      \clef "treble_8"
      \key b-flat \major
      \time 3/4
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

\markup {
  \column {
    \justify { \italic { Chord-Note } }
    \vspace #0.5
    \justify {
      Alternating between chords and single notes (chord-note) works well with
      a tune that has a lot of melody notes at a slower tempo. \bold "9" has a
      II-V-I progression using this concept.
    }
    \vspace #0.5
  }
}

% 9
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #3 <d f c' f>4 e' \set TabStaff.minimumFret = #1 <f, a d> c' |
  \set TabStaff.minimumFret = #3
  <f, b e a-flat>4 g' <b,, a-flat' d f> e-flat' |
  <c, g' b e!>4 g'' <f-sharp, b e a!> b' |
  \set TabStaff.minimumFret = #7
  <a, d g c>4 d' <c, e g b> a' | \bar "|."
}

\score {
  <<
    \melody-chords
    \new Staff \with {
      instrumentName = \markup { \bold "9 " }
    } \relative {
      \melody
    }
    \chords {
      d2:m7 d:m |
      g2:13.9- b:dim7 |
      c2:maj7 c:maj7.11+ |
      c2:6.9 c:maj7 |
    }
    \new Staff \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}


\markup {
  \column {
    \vspace #0.5
    \abs-fontsize #16 "Back Cycling"
    \vspace #0.5
    \justify {
      The key to back cycling is imagining the chord you will be resolving to
      and counting backwards via the V chord.
    }
    \vspace #1
  }
}

melody = {
  g''2 f |
  e2 e-flat |
  d1~ |
  1 |
}
melody-chords = \chords {
  d1:m7 |
  g1:7 |
  c1:maj7 |
}

\markup {
  \column {
    \justify { \italic { Back Cycling from I } }
    \vspace #0.5
    \justify {
      In \concat { \bold "10" , } I have a II-V-I in C major. I start at C and
      work my way backwards to put a chord over each note. The
      \concat { G \super 7 } is the V chord of C and \concat { Dm \super 7 } is
      the II chord. \concat { A \super 7 } is called V/II and
      \concat { Dm \super 7 } is the II/V/II. You can use this concept with as
      many notes as you want depending on how busy you want the harmony.
    }
    \vspace #0.5
  }
}

% 10
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #5
  <e g d' g>2 <a, g' c-sharp f> |
  \set TabStaff.minimumFret = #2
  <d f c'! e>2 <g, f' b d-sharp> |
  <c e b' d!>1~ |
  q1 | \bar "|."
}

\score {
  <<
    \melody-chords
    \new Staff \with {
      instrumentName = \markup { \bold "10 " }
    } \relative {
      g''2 f |
      e2 d-sharp |
      d!1~ |
      1 |
    }
    \chords {
      e2:m7 a:7.5+ |
      d2:m9 g:7.5+ |
      c1:maj9 |
    }
    \new Staff \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

\markup {
  \column {
    \justify { \italic { Back Cycling with Tritone Substitutions } }
    \vspace #0.5
    \justify {
      \bold "11" is exactly the same as \concat { \bold "10" , } except I
      replaced the dominant chord with a tritone substitution. The
      \concat { D \raise #0.4 \teeny \flat \super 9 } in measure 2 is subbing
      for \concat { G \super 7 , } and the
      \concat { E \raise #0.4 \teeny \flat \super 9 } in measure 1 is subbing
      for \concat { A \super 7 . } Another concept to experiment with would be
      changing the minor chords to dominant chords, creating chromatic harmony
      similar to a big band sound.
    }
    \vspace #0.5
  }
}

% 11
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #5
  <e g d' g>2 <e-flat g d-flat' f> |
  \set TabStaff.minimumFret = #2
  <d f c' e>2 <d-flat f c-flat' e-flat> |
  <c e b' d>1~ |
  q1 | \bar "|."
}

\score {
  <<
    \melody-chords
    \new Staff \with {
      instrumentName = \markup { \bold "11 " }
    } \relative {
      \melody
    }
    \chords {
      e2:m7 e-flat:9 |
      d2:m9 d-flat:9 |
      c1:maj9 |
    }
    \new Staff \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

\markup {
  \column {
    \justify { \italic {
      Back Cycling with Major 7th Tritone Substitutions (Softer Sound)
    } }
    \vspace #0.5
    \justify {
      \bold "12" is the same as \concat { \bold "11" , } except the dominant
      chords have all been changed to major 7th chords, creating a softer sound
      and resolution to I.
    }
    \vspace #0.5
  }
}

% 12
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #5
  <e g d' g>2 <e-flat g d' f> |
  \set TabStaff.minimumFret = #2
  <d f c' e>2 <d-flat f c' e-flat> |
  <c e b' d>1~ |
  q1 | \bar "|."
}

\score {
  <<
    \melody-chords
    \new Staff \with {
      instrumentName = \markup { \bold "12 " }
    } \relative {
      \melody
    }
    \chords {
      e2:m7 e-flat:maj9 |
      d2:m9 d-flat:maj9 |
      c1:maj9 |
    }
    \new Staff \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}


\markup {
  \column {
    \vspace #0.5
    \abs-fontsize #16 "The V Chord"
    \vspace #0.5
    \justify {
      The V chord concept we’ll examine takes the Ionian, Dorian, or Mixolydian
      scale and places the V chord on every other note. The V chord can always
      resolve to I, giving tension in the scale and releasing back to the chord
      used in the scale or mode.
    }
    \vspace #1
  }
}

\markup {
  \column {
    \justify { \italic { \concat { V \super 7 } of Ionian (Major) } }
    \vspace #0.5
    \justify {
      \bold "13" is the C Ionian scale, better known as the C major scale. The
      first chord is \concat { C \super 6 , } starting with C on top; the next
      melody note is D, which is the 5th of a \concat { G \super 7 ; } the next
      note is E, the 3rd of \concat { C \super △ ; } next is F, the
      \concat { \raise #0.4 \teeny \flat 7 } of \concat { G \super 7 ; } then G,
      the 5th of \concat { C \super { 6 \hspace #0.25 9 } } the next note, A, is
      the 9th of \concat { G \super 7 ; } then there’s B, which is the 7th of
      \concat { C \super △ . } With C as the melody note, this gives us
      \concat { G \super 11 . } The next note is D, the 9th of
      \concat { C \super { △ \hspace #0.25 13 } ; } the next note is E, the 13th
      of G; the next note is \concat { F \raise #0.7 \teeny \sharp ; } over a
      major 7th chord we have to raise the 4th a half step (F to
      \concat { F \raise #0.7 \teeny \sharp ), } creating Lydian. (An
      \concat { F \raise #0.7 \teeny \natural } over a \concat { C \super △ }
      chord sounds ugly. On a \concat { G \super 7 , } the F note is the
      \concat { \raise #0.4 \teeny \flat 7 , } and resolves to
      \concat { C \super △ .) } The last note is G, the root of a
      \concat { G \super 9 } chord.
    }
    \vspace #0.5
  }
}

% 13
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #1
  <c e a c>4 <g f' b d> <c g' b e> |
  \set TabStaff.minimumFret = #2
  <g d' f b f'>4 <c e a d g> <g' b f' a> |
  <g c e b'>4 <g d' f c'> <b e a d> |
  \ottava #1 <g b f' a e'>4 <c e b' d f-sharp> <f! a b g'> \ottava #0 | \bar "|."
}

\score {
  <<
    \chords {
      c2.:maj7 |
    }
    \new Staff \with {
      instrumentName = \markup { \bold "13 " }
    } \relative {
      c'4 d e |
      f4 g a |
      b4 c d |
      e4 f-sharp g |
    }
    \chords {
      c4:6 g:7 c:maj7 |
      g:7 c:6.9 g:9 |
      c4:maj7 g:11 c:maj13 |
      g:13.11 c:maj9.11+ g:9 |
    }
    \new Staff \relative {
      \clef "treble_8"
      \time 3/4
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

\markup {
  \column {
    \justify {
      \bold "14" and \bold "15" use the same concept as \concat { \bold "13" , }
      except the Dorian scale is used in \bold "14" and the Mixolydian scale is
      used in \concat { \bold "15" . }
    }
    \vspace #0.5
  }
}

\markup {
  \column {
    \justify { \italic { \concat { V \super 7 } of Dorian } }
  }
}

% 14
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #1
  <c e-flat b-flat' c>4 <g f' b d> <c e-flat b-flat' e-flat> |
  \set TabStaff.minimumFret = #2
  <g d' f b f'>4 <c f b-flat e-flat g> <g' b f' a> |
  <g c e-flat b-flat'>4 <g d' f c'> <b-flat e-flat g d'> |
  \ottava #1 <g b f' b-flat! e-flat>4 <c g' b-flat f'> <f a b g'> \ottava #0 | \bar "|."
}

\score {
  <<
    \chords {
      c2.:m7 |
    }
    \new Staff \with {
      instrumentName = \markup { \bold "14 " }
    } \relative {
      \key b-flat \major % C Dorian
      c'4 d e-flat |
      f4 g a |
      b-flat4 c d |
      e-flat4 f g |
    }
    \chords {
      c4:m7 g:7 c:m7 |
      g:7 c:m11 g:9 |
      c4:m7 g:11 c:m9 |
      g:7.5+.9+ c:m11 g:9 |
    }
    \new Staff \relative {
      \clef "treble_8"
      \key b-flat \major % C Dorian
      \time 3/4
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

\markup {
  \column {
    \justify { \italic { \concat { V \super 7 } of Mixolydian } }
  }
}

% 15
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #1
  <c e b-flat' c>4 <g f' b d> <c g' b-flat e> |
  \set TabStaff.minimumFret = #2
  <g d' f b f'>4 <c e b-flat' d g> <g' b f' a> |
  <g c e b-flat'>4 <g d' f c'> <c e b-flat' d> |
  \ottava #1 <g b f' a e'>4 <c g' b-flat f'> <f a b g'> \ottava #0 | \bar "|."
}

\score {
  <<
    \chords {
      c2.:7 |
    }
    \new Staff \with {
      instrumentName = \markup { \bold "15 " }
    } \relative {
      \key f \major % C Mixolydian
      c'4 d e |
      f4 g a |
      b-flat4 c d |
      e4 f g |
    }
    \chords {
      c4:7 g:7 c:7 |
      g:7 c:9 g:9 |
      c4:7 g:11 c:9 |
      g:13 c:11 g:9 |
    }
    \new Staff \relative {
      \clef "treble_8"
      \key f \major % C Mixolydian
      \time 3/4
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}


\markup {
  \column {
    \vspace #0.5
    \abs-fontsize #16 "Chord Scales with Tension"
    \vspace #0.5
    \justify {
      \bold "16" and \bold "17" use chord scales harmonizing
      \concat { C \super 6 } and \concat { Cm \super 6 , } respectively. In
      these figures, the V chord is again alternated with the I—in this case
      creating a \concat { 7 \hspace #0.25 \raise #0.4 \teeny \flat 9 } sound.
      A diminished chord is the same as a
      \concat { 7 \hspace #0.25 \raise #0.4 \teeny \flat 9 } chord with no root
      \concat { (D \super o7 " = " G \super { 7 \hspace #0.25 \raise #0.4 \teeny \flat 9 } }
      without the root). The
      \concat { 7 \hspace #0.25 \raise #0.4 \teeny \flat 9 } chord creates a lot
      more tension, strongly wanting to resolve to I.
    }
    \vspace #1
  }
}

% 16
music = {
  <a, e' g c>1
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #1
  <b f' a-flat d>
  <c g' a e'>
  \set TabStaff.minimumFret = #4
  <d a-flat' b f'>
  <e a c g'>
  \set TabStaff.minimumFret = #7
  <f b d a-flat'>
  <g c e a>
  \set TabStaff.minimumFret = #10
  <a-flat d f b> \bar "|."
}

\score {
  <<
    \chords {
      \repeat unfold 4 { c1:6 d:dim7 }
    }
    \new Staff  \with {
      instrumentName = \markup { \bold "16 " }
      \remove "Time_signature_engraver"
    } \relative {
      \clef "treble_8"
      \time 32/4
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

% 17
music = {
  <a, e-flat' g c>1
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #1
  <b f' a-flat d>
  <c g' a e-flat'>
  \set TabStaff.minimumFret = #4
  <d a-flat' b f'>
  <e-flat! a c g'>
  \set TabStaff.minimumFret = #7
  <f b d a-flat'>
  <g c e-flat! a>
  \set TabStaff.minimumFret = #10
  <a-flat d f b> \bar "|."
}

\score {
  <<
    \chords {
      \repeat unfold 4 { c1:m6 d:dim7 }
    }
    \new Staff  \with {
      instrumentName = \markup { \bold "17 " }
      \remove "Time_signature_engraver"
    } \relative {
      \clef "treble_8"
      \time 32/4
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}


\markup {
  \column {
    \vspace #0.5
    \abs-fontsize #16 "Modal Chord Scales"
    \vspace #0.5
    \justify {
      There are seven notes in scale, four of which make up a corresponding 7th
      chord (major, minor, or dominant depending on the scale). The three
      remaining notes of the scale are the embellished tones—the 9th, 11th, and
      13th. On a minor or dominant 7th chord, you can take the liberty of adding
      the 9th, 11th, or 13th. On major 7th chords, you can add the 9th,
      \concat { \raise #0.7 \teeny \sharp 11th, } and 13th. \bold "18" uses
      C Lydian, \bold "19" uses C Dorian, and \bold "20" uses C Mixolydian.
      Practice playing up and down these scales just as you would sequencing an
      exercise. This will help you learn many voicings of the same quality all
      over the guitar neck.
    }
    \vspace #1
  }
}

\markup {
  \column {
    \justify { \italic { Lydian } }
  }
}

% 18
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #1
  <c e a c>1
  <c e b' d>
  <c g' b e>
  <c e b' d f-sharp>
  <c e a d g>
  <c f-sharp b e a>
  <c c' e f-sharp! b>
  <c a' d g c>
  <c b' e a d>
  <c d' g b e>
  <c' a' d f-sharp> \bar "|."
}

\score {
  <<
    \chords {
      c1:6
      c:maj9
      c:maj7
      c:maj9.11+
      c:6.9
      c:maj13.11+
      c:maj7.11+
      c:6.9
      c:maj13
      c:maj9
      c:maj7.11+
    }
    \new Staff  \with {
      instrumentName = \markup { \bold "18 " }
      \remove "Time_signature_engraver"
    } \relative {
      \clef "treble_8"
      \time 44/4
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

\markup {
  \column {
    \justify { \italic { Dorian } }
  }
}

% 19
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #1
  <c e-flat b-flat' c>1
  <c e-flat b-flat' d>
  <c e-flat b-flat' e-flat>
  <c b-flat' e-flat f>
  <c f b-flat e-flat g>
  <c b-flat' e-flat a>
  <c e-flat' g b-flat>
  <c b-flat' e-flat g c>
  <c b-flat' e-flat g d'>
  <c' g' b-flat e-flat>
  <c g' b-flat f'> \bar "|."
}

\score {
  <<
    \chords {
      c1:m7
      c:m9
      c:m7
      c:m11
      c:m11
      c:m13
      c:m7
      c:m7
      c:m9
      c:m7
      c:m11^3
    }
    \new Staff  \with {
      instrumentName = \markup { \bold "19 " }
      \remove "Time_signature_engraver"
    } \relative {
      \clef "treble_8"
      \key b-flat \major % C Dorian
      \time 44/4
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

\markup {
  \column {
    \justify { \italic { Mixolydian } }
  }
}

% 20
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #1
  <c e b-flat' c>1
  <c e b-flat' d>
  <c g' b-flat e>
  \set TabStaff.minimumFret = #2
  <c g' b-flat f'>
  <c e b-flat' d g>
  <c e b-flat' d a'>
  <g' c e b-flat'>
  <b-flat d e c'>
  <c e b-flat' d>
  <c g' b-flat e>
  <c g' b-flat f'> \bar "|."
}

\score {
  <<
    \chords {
      c1:7
      c:9
      c:7
      c:11^3
      c:9
      c:13
      c:7
      c:9
      c:9
      c:7
      c:11^3
    }
    \new Staff  \with {
      instrumentName = \markup { \bold "20 " }
      \remove "Time_signature_engraver"
    } \relative {
      \clef "treble_8"
      \key f \major % C Mixolydian
      \time 44/4
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}


\markup {
  \column {
    \vspace #0.5
    \abs-fontsize #16 "Ascending and Descending Bass Harmony"
    \vspace #0.5
    \justify {
      Ascending/descending bass harmonoy uses three qualities of chords: major,
      minor, and dominant. This concept is much like bac cycling. The difference
      is that you can approach your key chord from above or below. All examples
      use a II-V-I in \concat { C \super △ . } The II and V are the chords that
      will be reharmonized on the way to \concat { C \super △ . } First, count
      how many melody notes there are, which indicates how many bass notes will
      be used. For example, there are four melody notes before
      \concat { C \super △ , } so four bass notes can be played, chromatically
      ascending, that resolve to \concat { C \super △ . } The next step is to
      harmonize the bass with the melody. I have given three examples using
      dominant, minor, and major. Generally, try to stay with one
      quality—meaning that if you decide to use dominant, use this until you
      resolve to the I chord (melody permitting).
    }
    \vspace #0.5
    \justify {
      The first melody note is E, and the bass note is
      \concat { A \raise #0.4 \teeny \flat —a }
      \concat { \raise #0.7 \teeny \sharp 5 } interval. The second melody note
      is C and the bass note is A, creating a minor 3rd (or
      \concat { \raise #0.7 \teeny \sharp 9) } interval. If I were using a major
      7th chord, I could still use the minor 3rd by creating minor / major 7th
      chord. The third melody notes is F with B in the bass, creating a
      \concat { \raise #0.4 \teeny \flat 5 } sound resolving to
      \concat { C \super △ . } The figures show what the chrod quality would be
      using the major, minor, and dominant 7th chrods.
    }
    \vspace #0.5
  }
}

melody = {
  e''2 c |
  g2 f |
  e1~ |
  1 |
}
melody-chords = \chords {
  d1:m7 |
  g1:7 |
  c1:maj7 |
}

\markup {
  \column {
    \justify { \italic { Dominant Ascending Bass Harmony } }
  }
}

% 21
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #10
  <a-flat c g-flat' b e>2 <a c-sharp g' c!> |
  \set TabStaff.minimumFret = #5
  <b-flat, a-flat' d g>2 <b a' d-sharp f> |
  <c b' d e>1~ |
  q1 | \bar "|."
}

\score {
  <<
    \melody-chords
    \new Staff \with {
      instrumentName = \markup { \bold "21 " }
    } \relative {
      \melody
    }
    \chords {
      a-flat2:7.5+.9+ a:7.9+ |
      b-flat2:13 b:7.5- |
      c1:maj9 |
    }
    \new Staff \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

\markup {
  \column {
    \justify { \italic { Minor Ascending Bass Harmony } }
  }
}

% 22
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #10
  <a-flat g-flat' b e>2 <a c g' c> |
  \set TabStaff.minimumFret = #5
  <b-flat, a-flat' d-flat g>2 <b a' d f> |
  <c b' d e>1~ |
  q1 | \bar "|."
}

\score {
  <<
    \melody-chords
    \new Staff \with {
      instrumentName = \markup { \bold "22 " }
    } \relative {
      \melody
    }
    \chords {
      a-flat2:m7.5+ a:m7 |
      b-flat2:m13 b:m7.5- |
      c1:maj9 |
    }
    \new Staff \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

\markup {
  \column {
    \justify { \italic { Major Ascending Bass Harmony } }
  }
}

% 23
music = {
  \set TabStaff.restrainOpenStrings = ##t
  \set TabStaff.minimumFret = #10
  <a-flat g' c e>2 <a e' g-sharp c> |
  \set TabStaff.minimumFret = #5
  <b-flat, a' d g>2 <b a-sharp' d-sharp f> |
  <c b' d e>1~ |
  q1 | \bar "|."
}

\score {
  <<
    \melody-chords
    \new Staff \with {
      instrumentName = \markup { \bold "23 " }
    } \relative {
      \melody
    }
    \chords {
      a-flat2:maj7.5+ a:m7+ |
      b-flat2:maj13 b:maj7.5- |
      c1:maj9 |
    }
    \new Staff \relative {
      \clef "treble_8"
      \music
    }
    \new TabStaff \relative {
      \music
    }
  >>
}

\markup {
  \column {
    \justify {
      Descending bass harmony works exactly the same way as ascending bass
      harmony except that the bass will obviously be descending. Try
      experimenting with ascending and descending bass lines, but really use
      your ears because some of these will fall in the pocket and some will not
      work at all—your ears will tell you which ones work.
    }
    \vspace #1
  }
}
