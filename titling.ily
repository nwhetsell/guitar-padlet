\version "2.22.0"

\paper {
  indent = 0
  top-margin = 0
  left-margin = 0
  right-margin = 0

  bookTitleMarkup = ##f
  scoreTitleMarkup = ##f
  oddHeaderMarkup = ##f
  oddFooterMarkup = ##f
}

#(define-markup-command (fret-diagram-container layout props contents) (markup?)
  #:properties ((size 4))
  (interpret-markup layout props
    #{
      \markup {
        \override #'(align-dir . -1)
        \override #`(size . ,size)
        \override #'(fret-diagram-details . (
          (dot-label-font-mag . 0.25)
          (dot-radius . 0.35)
          (finger-code . in-dot)
          (fret-distance . 1.5)
          (fret-label-custom-format . "")
          (number-type . custom)
          (orientation . landscape)
        )) {
          #contents
        }
      }
    #}))

override-FretBoard = {
  \override FretBoard.size = 4
  \override FretBoard.fret-diagram-details.dot-label-font-mag = 0.25
  \override FretBoard.fret-diagram-details.dot-radius = 0.35
  \override FretBoard.fret-diagram-details.finger-code = #'in-dot
  \override FretBoard.fret-diagram-details.fret-label-font-mag = 0.25
  \override FretBoard.fret-diagram-details.number-type = #'arabic
  \override FretBoard.fret-diagram-details.xo-font-magnification = #(/ 1 6)
}

\pointAndClickOff
