public class Solution {
    public int RomanToInt(string s) {
        int r = 0;
        for (int i = 0; i < s.Length;) {
            char c = s[i++];
            
            switch (c) {
                case 'I': {
                    if (i < s.Length && s[i] == 'V') {
                        i++;
                        r += 4;
                    } else if (i < s.Length && s[i] == 'X') {
                        i++;
                        r += 9;
                    } else {
                        r++;
                        
                        while (i < s.Length && s[i] == 'I') {
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
                    if (i < s.Length && s[i] == 'L') {
                        i++;
                        r += 40;
                    } else if (i < s.Length && s[i] == 'C') {
                        i++;
                        r += 90;
                    } else {
                        r += 10;
                        
                        while (i < s.Length && s[i] == 'X') {
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
                    if (i < s.Length && s[i] == 'D') {
                        i++;
                        r += 400;
                    } else if (i < s.Length && s[i] == 'M') {
                        i++;
                        r += 900;
                    } else {
                        r += 100;
                        
                        while (i < s.Length && s[i] == 'C') {
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
                default: {
                    break;
                }
            }
        }
        return r;
    }
}