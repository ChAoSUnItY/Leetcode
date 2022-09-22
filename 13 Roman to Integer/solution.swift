class Solution {
    func romanToInt(_ s: String) -> Int {
        var r = 0
        var i = 0

        while i < s.count {
            let c = s[s.index(s.startIndex, offsetBy: i)]
            i += 1

            if c == "I" {
                if i >= s.count {
                    r += 1
                } else if s[s.index(s.startIndex, offsetBy: i)] == "V" {
                    i += 1
                    r += 4
                } else if s[s.index(s.startIndex, offsetBy: i)] == "X" {
                    i += 1
                    r += 9
                } else {
                    r += 1

                    while i < s.count && s[s.index(s.startIndex, offsetBy: i)] == "I" {
                        r += 1
                        i += 1
                    }
                }
            } else if c == "V" {
                r += 5
            } else if c == "X" {
                if i >= s.count {
                    r += 10
                } else if s[s.index(s.startIndex, offsetBy: i)] == "L" {
                    i += 1
                    r += 40
                } else if s[s.index(s.startIndex, offsetBy: i)] == "C" {
                    i += 1
                    r += 90
                } else {
                    r += 10

                    while i < s.count && s[s.index(s.startIndex, offsetBy: i)] == "X" {
                        r += 10
                        i += 1
                    }
                }
            } else if c == "L" {
                r += 50
            } else if c == "C" {
                if i >= s.count {
                    r += 100
                } else if s[s.index(s.startIndex, offsetBy: i)] == "D" {
                    i += 1
                    r += 400
                } else if s[s.index(s.startIndex, offsetBy: i)] == "M" {
                    i += 1
                    r += 900
                } else {
                    r += 100

                    while i < s.count && s[s.index(s.startIndex, offsetBy: i)] == "C" {
                        r += 100
                        i += 1
                    }
                }
            } else if c == "D" {
                r += 500
            } else if c == "M" {
                r += 1000
            }
        }
        return r
    }
}