class Solution {
    fun romanToInt(s: String): Int {
        var r = 0
        var i = 0 
        while (i < s.length) {
            val c = s[i++] 
            
            when (c) {
                'I' -> {
                    if (i < s.length && s [i] == 'V') {
                        i++ 
                        r += 4 
                    } else if (i < s.length && s [i] == 'X') {
                        i++ 
                        r += 9 
                    } else {
                        r++ 
                        
                        while (i < s.length && s [i] == 'I') {
                            r++ 
                            i++ 
                        }
                    }
                     
                }
                'V' -> {
                    r += 5 
                     
                }
                'X' -> {
                    if (i < s.length && s [i] == 'L') {
                        i++ 
                        r += 40 
                    } else if (i < s.length && s [i] == 'C') {
                        i++ 
                        r += 90 
                    } else {
                        r += 10 
                        
                        while (i < s.length && s [i] == 'X') {
                            r += 10 
                            i++ 
                        }
                    }
                     
                }
                'L' -> {
                    r += 50 
                     
                }
                'C' -> {
                    if (i < s.length && s [i] == 'D') {
                        i++ 
                        r += 400 
                    } else if (i < s.length && s [i] == 'M') {
                        i++ 
                        r += 900 
                    } else {
                        r += 100 
                        
                        while (i < s.length && s [i] == 'C') {
                            r += 100 
                            i++ 
                        }
                    }
                     
                }
                'D' -> {
                    r += 500 
                     
                }
                'M' -> {
                    r += 1000 
                     
                }
                else -> {}
            }
        }
        return r 
    }
}