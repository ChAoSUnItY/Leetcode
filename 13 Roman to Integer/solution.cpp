class Solution {
public:
    int romanToInt(string s) {
        int r = 0;
        for (int i = 0; i < s.length();) {
            char c = s[i++];
            
            switch (c) {
                case 'I': {
                    if (s[i] == 'V') {
                        i++;
                        r += 4;
                    } else if (s[i] == 'X') {
                        i++;
                        r += 9;
                    } else {
                        r++;
                        
                        while (s[i] == 'I') {
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
                    if (s[i] == 'L') {
                        i++;
                        r += 40;
                    } else if (s[i] == 'C') {
                        i++;
                        r += 90;
                    } else {
                        r += 10;
                        
                        while (s[i] == 'X') {
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
                    if (s[i] == 'D') {
                        i++;
                        r += 400;
                    } else if (s[i] == 'M') {
                        i++;
                        r += 900;
                    } else {
                        r += 100;
                        
                        while (s[i] == 'C') {
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
};