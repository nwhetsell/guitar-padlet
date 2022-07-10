\version "2.22.0"

\include "../titling.ily"
#(ly:set-option 'crop #t)

% We want to place dots between frets 2 and 3; 4 and 5; 6 and 7; 8 and 9; 11 and
% 12; and 14 and 15. The x-coordinate of a dot placed between fret-number and
% fret-number + 1 is:
%   x = size * fret-distance * 0.5 * (fret-number + fret-number + 1)
%     = size * fret-distance * (fret-number - 0.5)
% We also need to account for the thickness of the top fret:
%   size * thickness * 0.5 * 0.1
% The value of thickness appears to be 0.5 by default. To draw a dot using the
% PostScript arc operator (see page 530 of
% https://www.adobe.com/jp/print/postscript/pdfs/PLRM.pdf), it’s also necessary
% to shift the dot by its radius. As an example, the x-coordinate of a unit-
% radius dot between frets 2 and 3 is:
%   x + thickness + radius = size * fret-distance * (fret-number - 0.5)
%                            + size * thickness * 0.5 * 0.1
%                            + 1
%                          = 4 * 1.5 * (2 - 0.5)
%                            + 4 * 0.5 * 0.5 * 0.1
%                            + 1
%                          = 15 + 0.1 + 1
%                          = 16.1
fret-markers-markup = \markup {
  \postscript #"
    16.1 5 1 0 360 arc closepath
    28.1 5 1 0 360 arc closepath
    40.1 5 1 0 360 arc closepath
    52.1 5 1 0 360 arc closepath
    70.1 9 1 0 360 arc closepath
    70.1 1 1 0 360 arc closepath
    88.1 5 1 0 360 arc closepath
    0.85 setgray fill
  "
}

#(begin
  (define string-six-frets `(
    (place-fret 6  2 "F♯" ,@fret-diagram-pentatonic-format)
    (place-fret 6  4 "G♯" ,@fret-diagram-other-format)
    (place-fret 6  5 "A"  ,@fret-diagram-root-format)
    (place-fret 6  7 "B"  ,@fret-diagram-pentatonic-format)
    (place-fret 6  9 "C♯" ,@fret-diagram-triad-format)
    (place-fret 6 10 "D"  ,@fret-diagram-other-format)
    (place-fret 6 12 "E"  ,@fret-diagram-triad-format)
    (place-fret 6 14 "F♯" ,@fret-diagram-pentatonic-format)))
  (define string-five-frets `(
    (place-fret 5  2 "B"  ,@fret-diagram-pentatonic-format)
    (place-fret 5  4 "C♯" ,@fret-diagram-triad-format)
    (place-fret 5  5 "D"  ,@fret-diagram-other-format)
    (place-fret 5  7 "E"  ,@fret-diagram-triad-format)
    (place-fret 5  9 "F♯" ,@fret-diagram-pentatonic-format)
    (place-fret 5 11 "G♯" ,@fret-diagram-other-format)
    (place-fret 5 12 "A"  ,@fret-diagram-root-format)
    (place-fret 5 14 "B"  ,@fret-diagram-pentatonic-format)))
  (define string-four-frets `(
    (place-fret 4  2 "E"  ,@fret-diagram-triad-format)
    (place-fret 4  4 "F♯" ,@fret-diagram-pentatonic-format)
    (place-fret 4  6 "G♯" ,@fret-diagram-other-format)
    (place-fret 4  7 "A"  ,@fret-diagram-root-format)
    (place-fret 4  9 "B"  ,@fret-diagram-pentatonic-format)
    (place-fret 4 11 "C♯" ,@fret-diagram-triad-format)
    (place-fret 4 12 "D"  ,@fret-diagram-other-format)
    (place-fret 4 14 "E"  ,@fret-diagram-triad-format)))
  (define string-three-frets `(
    (place-fret 3  1 "G♯" ,@fret-diagram-other-format)
    (place-fret 3  2 "A"  ,@fret-diagram-root-format)
    (place-fret 3  4 "B"  ,@fret-diagram-pentatonic-format)
    (place-fret 3  6 "C♯" ,@fret-diagram-triad-format)
    (place-fret 3  7 "D"  ,@fret-diagram-other-format)
    (place-fret 3  9 "E"  ,@fret-diagram-triad-format)
    (place-fret 3 11 "F♯" ,@fret-diagram-pentatonic-format)
    (place-fret 3 13 "G♯" ,@fret-diagram-other-format)
    (place-fret 3 14 "A"  ,@fret-diagram-root-format)))
  (define string-two-frets `(
    (place-fret 2  2 "C♯" ,@fret-diagram-triad-format)
    (place-fret 2  3 "D"  ,@fret-diagram-other-format)
    (place-fret 2  5 "E"  ,@fret-diagram-triad-format)
    (place-fret 2  7 "F♯" ,@fret-diagram-pentatonic-format)
    (place-fret 2  9 "G♯" ,@fret-diagram-other-format)
    (place-fret 2 10 "A"  ,@fret-diagram-root-format)
    (place-fret 2 12 "B"  ,@fret-diagram-pentatonic-format)
    (place-fret 2 14 "C♯" ,@fret-diagram-triad-format)
    (place-fret 2 15 "D"  ,@fret-diagram-other-format)))
  (define string-one-frets `(
    (place-fret 1  2 "F♯" ,@fret-diagram-pentatonic-format)
    (place-fret 1  4 "G♯" ,@fret-diagram-other-format)
    (place-fret 1  5 "A"  ,@fret-diagram-root-format)
    (place-fret 1  7 "B"  ,@fret-diagram-pentatonic-format)
    (place-fret 1  9 "C♯" ,@fret-diagram-triad-format)
    (place-fret 1 10 "D"  ,@fret-diagram-other-format)
    (place-fret 1 12 "E"  ,@fret-diagram-triad-format)
    (place-fret 1 14 "F♯" ,@fret-diagram-pentatonic-format)))
)

\markup {
  \fret-markers-markup
  \override #'(fret-count . 15) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        ,@(list-head (list-tail string-six-frets 0) 3)
        ,@(list-head (list-tail string-five-frets 0) 3)
        ,@(list-head (list-tail string-four-frets 0) 2)
        ,@(list-head (list-tail string-three-frets 0) 3)
        ,@(list-head (list-tail string-two-frets 0) 3)
        ,@(list-head (list-tail string-one-frets 0) 3))
      \vspace #0.5
      "Position 6 – Aeolian (natural minor)"

      \vspace #1
    }
  }
}

\markup {
  \fret-markers-markup
  \override #'(fret-count . 15) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        ,@(list-head (list-tail string-six-frets 1) 3)
        ,@(list-head (list-tail string-five-frets 1) 3)
        ,@(list-head (list-tail string-four-frets 1) 3)
        ,@(list-head (list-tail string-three-frets 2) 3)
        ,@(list-head (list-tail string-two-frets 2) 2)
        ,@(list-head (list-tail string-one-frets 1) 3))
      \vspace #0.5
      "Positions 7 and 1 – Locrian and Ionian (major)"

      \vspace #1
    }
  }
}

\markup {
  \fret-markers-markup
  \override #'(fret-count . 15) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        ,@(list-head (list-tail string-six-frets 3) 3)
        ,@(list-head (list-tail string-five-frets 3) 2)
        ,@(list-head (list-tail string-four-frets 2) 3)
        ,@(list-head (list-tail string-three-frets 3) 3)
        ,@(list-head (list-tail string-two-frets 3) 3)
        ,@(list-head (list-tail string-one-frets 3) 3))
      \vspace #0.5
      "Position 2 – Dorian"

      \vspace #1
    }
  }
}

\markup {
  \fret-markers-markup
  \override #'(fret-count . 15) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        ,@(list-head (list-tail string-six-frets 4) 3)
        ,@(list-head (list-tail string-five-frets 4) 3)
        ,@(list-head (list-tail string-four-frets 4) 3)
        ,@(list-head (list-tail string-three-frets 5) 2)
        ,@(list-head (list-tail string-two-frets 4) 3)
        ,@(list-head (list-tail string-one-frets 4) 3))
      \vspace #0.5
      "Positions 3 and 4 – Phrygian and Lydian"

      \vspace #1
    }
  }
}

\markup {
  \fret-markers-markup
  \override #'(fret-count . 15) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        ,@(list-head (list-tail string-six-frets 6) 2)
        ,@(list-head (list-tail string-five-frets 5) 3)
        ,@(list-head (list-tail string-four-frets 5) 3)
        ,@(list-head (list-tail string-three-frets 6) 3)
        ,@(list-head (list-tail string-two-frets 6) 3)
        ,@(list-head (list-tail string-one-frets 6) 2)
        (place-fret 1 10 "D" ,@fret-diagram-light-other-format))
      \vspace #0.5
      "Position 5 – Mixolydian"

      \vspace #1
    }
  }
}

\markup {
  \fret-markers-markup
  \override #'(fret-count . 15) \fret-diagram-container {
    \left-column {
      \fret-diagram-verbose #`(
        ,@string-six-frets
        ,@string-five-frets
        ,@string-four-frets
        ,@string-three-frets
        ,@string-two-frets
        ,@string-one-frets)
      \vspace #0.5
      "All positions (up to fret 15)"
    }
  }
}
