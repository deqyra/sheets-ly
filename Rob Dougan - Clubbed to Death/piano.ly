\version "2.22.2"
\header {
    title = \markup "Clubbed to Death"
    composer = \markup "Rob Dougan"
}

\new PianoStaff = "piano" \with {
  \override InstrumentName.extra-offset = #'(0 . -4)
  instrumentName = "Piano"
}
<<
	\new Staff = "ossia" \with {
		\remove "Time_signature_engraver"
		\remove "Clef_engraver"
		\remove "Key_engraver"
		fontSize = #-3
		\override StaffSymbol.staff-space = #(magstep -3)
		\override StaffSymbol.thickness = #(magstep -3)
		%alignAboveContext = "left"
	}{
		\stopStaff \key g \minor
		s1*12 \break
	}

	\new Staff = "right" {
		\time 4/4
		\key g \minor
		\clef treble
		\relative g' {
			r8		d[	g	d]		bes'[	d,	g		d]
			c'[ 	d,	fis	d]		a'[		d,	fis		d]
			r		d[	g	d]		d'[		d,	bes'	d,]
			bes'[	c,	ees	c]		a'[		ees	c'		ees,]

			r		d[	g	d]		bes'[	g	d'		bes]
			g'[		g,	bes	g]		ees'[	bes	g'		bes,]
			g'[		g,	b	g]		d'[		b	f'		b,]
			f'[		g,	c	f]		ees[	g,	c		ees]

			d[		d,	g	d]		bes'[	d,	g		d]
			bes'[	c,	ees	bes']	a[		c,	d		fis]
			g[		g,	bes	d]		g[		d	bes'	g]
			d'[		bes	g'	d]		bes'[	g	d'		bes] \break

			<<
			{
				r8		d,,[g	d]		bes'[	d,	g		d]
				c'[ 	d,	fis	d]		a'[		d,	fis		d]
				r		d[	g	d]		d'[		d,	bes'	d,]
				bes'[	c,	ees	c]		a'[		ees	c'		ees,]

				r		d[	g	d]		bes'[	g	d'		bes]
				g'[		g,	bes	g]		ees'[	bes	g'		bes,]
				g'[		g,	b	g]		d'[		b	f'		b,]
				f'[		g,	c	f]		ees[	g,	c		ees]

				d[		d,	g	d]		bes'[	d,	g		d]
				bes'[	c,	ees	bes']	a[		c,	d		fis]
				g[		g,	bes	d]		g[		d	bes'	g]
				d'[		bes	g'	d]		bes'[	g	d'		bes]
				g'1		\bar "|."
			}
			\context Staff = "ossia" \with {
				\consists "Clef_engraver"
				\consists "Key_engraver"
			}{
				\startStaff
				\set Staff.ottavationMarkups = #ottavation-ordinals
				\ottava #1
  				g1
				s2 f8. ees] \stemUp
				\tuplet 6/4 { d16[ c d ees d c] } d2 s4.
				s2 c8. bes]
				\tuplet 6/4 { a16[ g a bes a g] } a2 s4.
				\ottava #0
				s2. \tuplet 3/4 { g16 f ees }
				d2 s4 \tuplet 3/4 { d16 c bes }
				a1
				s1
				\stopStaff 
			}
			>>
		}
	}
	\new Staff = "left" {
		\time 4/4
		\key g \minor
		\clef bass
		% keep staff alive
		\relative g, {
			g1 	\sustainOn
			a	\sustainOff \sustainOn
			bes_\markup { \italic pedale \italic simile }
			c
			d
			ees
			b
			c
			g
			c2 d2
			g,1~
			g
			g1
			a
			bes
			c
			d
			ees
			b
			c
			g
			c2 d2
			g,1~
			g~
			g \bar "|."
		}
	}
>>