class Solution(object):
    def romanToInt(self, s):
        """
        :type s: str
        :rtype: int
        """
        r = 0
        i = 0
        while i < len(s):
            c = s[i]
            i += 1

            if c == 'I':
                if i >= len(s):
                    r += 1
                elif s[i] == 'V':
                    i += 1
                    r += 4
                elif s[i] == 'X':
                    i += 1
                    r += 9
                else:
                    r += 1

                    while i < len(s) and s[i] == 'I':
                        r += 1
                        i += 1
            elif c == 'V':
                r += 5
            elif c == 'X':
                if i >= len(s):
                    r += 10
                elif s[i] == 'L':
                    i += 1
                    r += 40
                elif s[i] == 'C':
                    i += 1
                    r += 90
                else:
                    r += 10

                    while i < len(s) and s[i] == 'X':
                        r += 10
                        i += 1
            elif c == 'L':
                r += 50
            elif c == 'C':
                if i >= len(s):
                    r += 100
                elif s[i] == 'D':
                    i += 1
                    r += 400
                elif s[i] == 'M':
                    i += 1
                    r += 900
                else:
                    r += 100

                    while i < len(s) and s[i] == 'C':
                        r += 100
                        i += 1
            elif c == 'D':
                r += 500
            elif c == 'M':
                r += 1000
        return r