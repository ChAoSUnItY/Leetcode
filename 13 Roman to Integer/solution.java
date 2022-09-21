class Solution {
    public int romanToInt(String s) {
        int r = 0;
        for (int i = 0; i < s.length();) {
            char c = s.charAt(i++);
            
            switch (c) {
                case 'I': {
                    if (i < s.length() && s.charAt(i) == 'V') {
                        i++;
                        r += 4;
                    } else if (i < s.length() && s.charAt(i) == 'X') {
                        i++;
                        r += 9;
                    } else {
                        r++;
                        
                        while (i < s.length() && s.charAt(i) == 'I') {
                            r++;
                            i++;
                        }
                    }
                    break;
                }
                case 'V': {
                    r += 5;
                    break;
                }
                case 'X': {
                    if (i < s.length() && s.charAt(i) == 'L') {
                        i++;
                        r += 40;
                    } else if (i < s.length() && s.charAt(i) == 'C') {
                        i++;
                        r += 90;
                    } else {
                        r += 10;
                        
                        while (i < s.length() && s.charAt(i) == 'X') {
                            r += 10;
                            i++;
                        }
                    }
                    break;
                }
                case 'L': {
                    r += 50;
                    break;
                }
                case 'C': {
                    if (i < s.length() && s.charAt(i) == 'D') {
                        i++;
                        r += 400;
                    } else if (i < s.length() && s.charAt(i) == 'M') {
                        i++;
                        r += 900;
                    } else {
                        r += 100;
                        
                        while (i < s.length() && s.charAt(i) == 'C') {
                            r += 100;
                            i++;
                        }
                    }
                    break;
                }
                case 'D': {
                    r += 500;
                    break;
                }
                case 'M': {
                    r += 1000;
                    break;
                }
                default: {}
            }
        }
        return r;
    }
}