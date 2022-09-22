int romanToInt(char *s)
{
    int r = 0;
    char *c = s;
    while (*c)
    {
        switch (*(c++))
        {
        case 'I':
        {
            if (*c == 'V')
            {
                c++;
                r += 4;
            }
            else if (*c == 'X')
            {
                c++;
                r += 9;
            }
            else
            {
                r++;

                while (*c == 'I')
                {
                    r++;
                    c++;
                }
            }
            break;
        }
        case 'V':
        {
            r += 5;
            break;
        }
        case 'X':
        {
            if (*c == 'L')
            {
                c++;
                r += 40;
            }
            else if (*c == 'C')
            {
                c++;
                r += 90;
            }
            else
            {
                r += 10;

                while (*c == 'X')
                {
                    r += 10;
                    c++;
                }
            }
            break;
        }
        case 'L':
        {
            r += 50;
            break;
        }
        case 'C':
        {
            if (*c == 'D')
            {
                c++;
                r += 400;
            }
            else if (*c == 'M')
            {
                c++;
                r += 900;
            }
            else
            {
                r += 100;

                while (*c == 'C')
                {
                    r += 100;
                    c++;
                }
            }
            break;
        }
        case 'D':
        {
            r += 500;
            break;
        }
        case 'M':
        {
            r += 1000;
            break;
        }
        default:
        {
        }
        }
    }
    return r;
}