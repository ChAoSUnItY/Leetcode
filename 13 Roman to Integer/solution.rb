# @param {String} s
# @return {Integer}
def roman_to_int(s)
    r = 0
    i = 0
    while i < s.length do
        c = s[i]
        c = s[i]
        i += 1

        if c == 'I'
            if i >= s.length
                r += 1
            elsif s[i] == 'V'
                i += 1
                r += 4
            elsif s[i] == 'X'
                i += 1
                r += 9
            else
                r += 1

                while i < s.length and s[i] == 'I'
                    r += 1
                    i += 1
                end
            end
        elsif c == 'V'
            r += 5
        elsif c == 'X'
            if i >= s.length
                r += 10
            elsif s[i] == 'L'
                i += 1
                r += 40
            elsif s[i] == 'C'
                i += 1
                r += 90
            else
                r += 10

                while i < s.length and s[i] == 'X'
                    r += 10
                    i += 1
                end
            end
        elsif c == 'L'
            r += 50
        elsif c == 'C'
            if i >= s.length
                r += 100
            elsif s[i] == 'D'
                i += 1
                r += 400
            elsif s[i] == 'M'
                i += 1
                r += 900
            else
                r += 100

                while i < s.length and s[i] == 'C'
                    r += 100
                    i += 1
                end
            end
        elsif c == 'D'
            r += 500
        elsif c == 'M'
            r += 1000
        end
    end
    return r
end