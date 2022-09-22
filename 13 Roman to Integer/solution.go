func romanToInt(s string) int {
	r := 0
	i := 0

	for ; i < len(s); {
		c := s[i]
		i++

		if c == 'I' {
			if i >= len(s) {
				r++
			} else if s[i] == 'V' {
				i++
				r += 4
			} else if s[i] == 'X' {
				i++
				r += 9
			} else {
				r++

				for i < len(s) && s[i] == 'I' {
					r += 1
					i++
				}
			}
		} else if c == 'V' {
			r += 5
		} else if c == 'X' {
			if i >= len(s) {
				r += 10
			} else if s[i] == 'L' {
				i++
				r += 40
			} else if s[i] == 'C' {
				i++
				r += 90
			} else {
				r += 10

				for i < len(s) && s[i] == 'X' {
					r += 10
					i++
				}
			}
		} else if c == 'L' {
			r += 50
		} else if c == 'C' {
			if i >= len(s) {
				r += 100
			} else if s[i] == 'D' {
				i++
				r += 400
			} else if s[i] == 'M' {
				i++
				r += 900
			} else {
				r += 100

				for i < len(s) && s[i] == 'C' {
					r += 100
					i++
				}
			}
		} else if c == 'D' {
			r += 500
		} else if c == 'M' {
			r += 1000
		}
	}
	return r
}