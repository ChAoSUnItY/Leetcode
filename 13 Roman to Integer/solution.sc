object Solution {
    def romanToInt(s: String): Int = {
        var r = 0;
        var i = 0;

        while (i < s.length()) {
            val c = s(i);
            i += 1;

            c match {
                case 'I' => {
                    if (i < s.length() && s(i) == 'V') {
                        i += 1;
                        r += 4;
                    } else if (i < s.length() && s(i) == 'X') {
                        i += 1;
                        r += 9;
                    } else {
                        r += 1;
                        
                        while (i < s.length() && s(i) == 'I') {
                            r += 1;
                            i += 1;
                        }
                    }
                }
                case 'V' => {
                    r += 5;
                }
                case 'X' => {
                    if (i < s.length() && s(i) == 'L') {
                        i += 1;
                        r += 40;
                    } else if (i < s.length() && s(i) == 'C') {
                        i += 1;
                        r += 90;
                    } else {
                        r += 10;
                        
                        while (i < s.length() && s(i) == 'X') {
                            r += 10;
                            i += 1;
                        }
                    }
                }
                case 'L' => {
                    r += 50;
                    
                }
                case 'C' => {
                    if (i < s.length() && s(i) == 'D') {
                        i += 1;
                        r += 400;
                    } else if (i < s.length() && s(i) == 'M') {
                        i += 1;
                        r += 900;
                    } else {
                        r += 100;
                        
                        while (i < s.length() && s(i) == 'C') {
                            r += 100;
                            i += 1;
                        }
                    }
                }
                case 'D' => {
                    r += 500;
                }
                case 'M' => {
                    r += 1000;
                }
                case _ => {}
            }
        }

        return r;
    }
}