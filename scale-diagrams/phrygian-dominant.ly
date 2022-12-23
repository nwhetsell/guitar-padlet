\version "2.24.0"

\include "../titling.ily"
#(ly:set-option 'crop #t)

\markup {
  \override #'(size . 6) \fret-diagram-container {
    \combine

    % We want to add lines under dots on the fretboard. The x-coordinate of the
    % center of a dot placed at fret-number (defined in ../titling.ily) is:
    %   x = size * fret-distance * (fret-number - minimumFretNumber + 0.5)
    % The horizontal distance between the centers of dots placed 1 fret apart
    % is:
    %   xDistance = size * fret-distance * (fret-number1 - minimumFretNumber + 0.5)
    %               - size * fret-distance * (fret-number2 - minimumFretNumber + 0.5)
    %             = size * fret-distance * (fret-number1 - fret-number2)
    %             = size * fret-distance
    % The y-coordinate of the center of the dot is:
    %   y = size * (string-count - string-number) - 5
    % The vertical distance between the centers of dots placed 1 string apart
    % is:
    %   yDistance = size * (string-count - string-number1) - 5
    %               - (size * (string-count - string-number2) - 5)
    %             = size * (string-number2 - string-number1)
    %             = size
    % We also need to account for the thickness of the top fret:
    %   size * thickness * 0.5 * 0.1
    % The value of thickness appears to be 0.5 by default.
    \with-color #grey \path #0.1 #'(
      (moveto 0.15 0)
      (rmoveto 13.5 -5)
      (rlineto 18 6)
      (rlineto 0 6)
      (rlineto -9 6)
      (rlineto -9 6)
      (rlineto 0 6)

      (moveto 0.15 0)
      (rmoveto 22.5 -5)
      (rlineto 18 6)
      (rlineto 0 6)
      (rlineto -9 6)
      (rlineto -9 6)
      (rlineto 0 6))

    \fret-diagram-verbose #`(
      (place-fret 6 5  "1" ,@fret-diagram-root-format)
      (place-fret 6 6 "♭2" ,@fret-diagram-other-format)
      (place-fret 6 8 "♭3" ,@fret-diagram-light-triad-format)
      (place-fret 5 4  "3" ,@fret-diagram-triad-format)
      (place-fret 5 5  "4" ,@fret-diagram-pentatonic-format)
      (place-fret 5 7  "5" ,@fret-diagram-triad-format)
      (place-fret 5 8 "♭6" ,@fret-diagram-other-format)
      (place-fret 4 5 "♭7" ,@fret-diagram-pentatonic-format)
      (place-fret 4 7  "1" ,@fret-diagram-root-format)
      (place-fret 4 8 "♭2" ,@fret-diagram-other-format)
      (place-fret 3 5 "♭3" ,@fret-diagram-light-triad-format)
      (place-fret 3 6  "3" ,@fret-diagram-triad-format)
      (place-fret 3 7  "4" ,@fret-diagram-pentatonic-format)
      (place-fret 2 5  "5" ,@fret-diagram-triad-format)
      (place-fret 2 6 "♭6" ,@fret-diagram-other-format)
      (place-fret 2 8 "♭7" ,@fret-diagram-pentatonic-format)
      (place-fret 1 5  "1" ,@fret-diagram-root-format)
      (place-fret 1 6 "♭2" ,@fret-diagram-other-format)
      (place-fret 1 8 "♭3" ,@fret-diagram-light-triad-format))
  }
}
