\version "2.22.2"
\header {
    title = \markup "Krusty Krab song"
    subtitle = \markup "from Spongebob Squarepants"
}

\new Staff = "up" {
    \time 6/8
    \key g \major
    \clef treble
    \relative g' {
        \partial 4. d'8 cis c
        \mark \markup { \musicglyph "scripts.segno" }
        \repeat volta 2 {
            b4 g8           d4 g8       |   b4 g8           d'4 b8      |
            g' fis g        a g fis     |   g4 d8           b4 g8       | \break
        }
        \alternative {
            {
                fis4 e8         fis4 g8     |   a4 b8           c b a       |
                d4 cis8         d4 e8       |   fis4 d8         c4 a8       | \break
            }
            {
                b c d           g4 d8       |   c4 a8           fis4 g8     |
                a4 g8           g4 fis8     |   g4.             a4
                \mark \markup { \musicglyph "scripts.coda" }       g8       \bar "||" \break
               
            }
        }

        \repeat volta 2 {
            fis4.           d           |   d'              c           |
            b4 g8           g4 fis8     |   g4.             a4 g8       | \break
        }
        \alternative {
            {
                fis4.           d           |   d'4 cis8        e4 d8       |
                g4  e8          d4 cis8     |   d4.             a4 g8       | \break
            }
            {
                fis4 a8         d4 fis8     |   e4 d8           cis4 e8     |
                d2.                         |
                ^\markup { D.S. al Coda }     c2.                         \bar "||" \break
            }
        }

        \mark \markup { \musicglyph "scripts.coda" }
        g2. \bar "|." \break
    }
}
