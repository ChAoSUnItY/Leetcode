impl Solution {
    pub fn roman_to_int(s: String) -> i32 {
        let mut r = 0;
        let mut i = 0;
        let b = s.as_bytes();
        
        while i < b.len() {
            let c = b[i] as char;
            i += 1;

            match c {
                'I' => {
                    if i >= b.len() {
                        r += 1;
                    } else if b[i] as char == 'V' {
                        i += 1;
                        r += 4;
                    } else if b[i] as char == 'X' {
                        i += 1;
                        r += 9;
                    } else {
                        r += 1;

                        while i < b.len() && b[i] as char == 'I' {
                            r += 1;
                            i += 1;
                        }
                    }
                }
                'V' => {
                    r += 5;
                }
                'L' => {
                    r += 50;
                }
                'X' => {
                    if i >= b.len() {
                        r += 10;
                    } else if b[i] as char == 'L' {
                        i += 1;
                        r += 40;
                    } else if b[i] as char == 'C' {
                        i += 1;
                        r += 90;
                    } else {
                        r += 10;

                        while i < b.len() && b[i] as char == 'X' {
                            r += 10;
                            i += 1;
                        }
                    }
                }
                'L' => {
                    r += 50;
                }
                'C' => {
                    if i >= b.len() {
                        r += 100;
                    } else if b[i] as char == 'D' {
                        i += 1;
                        r += 400;
                    } else if b[i] as char == 'M' {
                        i += 1;
                        r += 900;
                    } else {
                        r += 100;

                        while i < b.len() && b[i] as char == 'C' {
                            r += 100;
                            i += 1;
                        }
                    }
                }
                'D' => {
                    r += 500;
                }
                'M' => {
                    r += 1000;
                }
                _ => {}
            }
        }

        r
    }
}