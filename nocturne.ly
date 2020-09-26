% #(set-default-paper-size "quarto")
#(set-global-staff-size 50)

\header {
  title = "1"
  composer = "Philip Romanov"
  tagline = "" % remove footer
}

bassFisMinor = { \absolute { fis8 a d' fis' } }
bassBminSeven = { \absolute { b8 d' fis' a' } }
bassEmin = { \absolute { e b e' g' } }
bassEminDimSeven = { \absolute { ais8 d' e' g' }  }
bassAmaj = { \absolute { a8 cis' g'4 } }
bassCmaj = { \absolute { c'8 e' b'4 } }
bassEmaj = { \absolute { b8 dis' a'4 } }

themeA = {
  % Bar 1
  \absolute { r4 <e'' a'>8( fis'' fis''4 <cis' a'>) } |
  \bassEminDimSeven \bassFisMinor |
  % Bar 2
  \absolute { r4 e''8( fis'' fis''4 <cis' a'>) } |
  \bassBminSeven \bassFisMinor |
}

\score {
  \parallelMusic #'(voiceA voiceB) {
    % Bar 1-2
    \themeA
    % Bar 3
    r4 e8 fis a g cis, d     |
    \bassBminSeven \bassEmin |
    % Bar 4
    e4 fis8 g a4. g8    |
    \bassAmaj \bassCmaj |
    % Bar 5
    fis4 g8 a b4. a8     |
    \bassEmaj g8 d' b'4 |
    % Bar 6
    ais,2~ ais4 e'8 fis        |
    g,8 d' g d a8 d fis4 |
    % Bar 7
    fis4 e8 fis fis4 e8( fis) |
    a,8 d fis4 a,8 d fis4     |
    % Bar 8
    fis4 e8( fis fis4) e8 fis |
    a,8 d fis4 a,8 d fis4   |
    % Bar 9-10
    \themeA
    % Bar 11
    r4 e8 fis a g cis, d     |
    \bassBminSeven \bassEmin |
    % Bar 12
    e4 fis8 g b a dis, e     |
    \bassAmaj \bassCmaj |
    % Bar 13
    fis2 a4 g |
    \absolute { b8 dis' a' c'' } \bassEmin |
    % Bar 14
    fis4 b b2  |
    g,8 d' g b gis, d' e b' |
    % Bar 15
    a4 g8 fis8 g2 |
    a,8 e' a c e,, b' g' cis |
    % Bar 16
    d1  |
    fis,,8 b d b' fis,8 cis' fis gis |
  }
  \new StaffGroup <<
    \new Staff <<
      \key b\minor
      \relative c'' \voiceA
    >>
    \new Staff \relative c' {
      \key b\minor
      \clef bass \voiceB
    }
  >>
  \layout {}
  \midi{}
}