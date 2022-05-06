\version "2.22.2"
\header {
    title = \markup "Clubbed to Death"
    composer = \markup "Rob Dougan"
}

\new PianoStaff <<
	\new Staff = "up" {
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
			d'[		bes	g'	d]		bes'[	g	d'		bes]

			g'1
		}
	}
	\new Staff = "down" {
		\time 4/4
		\key g \minor
		\clef bass
		% keep staff alive
		\relative g, {
			g1 	\sustainOn
			a	\sustainOn	\sustainOff
			bes_\markup { \italic pedale simile }
			c
			d
			ees
			b
			c
			g
			c2 d2
			g1,~
			g
		}
	}
>>