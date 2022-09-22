class Solution {
    /**
    * @param String $s
    * @return Integer
    */
    function romanToInt($s) {
        $len = strlen($s);
        $r = 0;
        $i = 0;

        while ($i < $len) {
            $c = $s[$i];
            $i++;

            switch ($c) {
                case 'I': {
                    if ($i < $len && $s[$i] == 'V') {
                        $i++;
                        $r += 4;
                    } else if ($i < $len && $s[$i] == 'X') {
                        $i++;
                        $r += 9;
                    } else {
                        $r++;
                        
                        while ($i < $len && $s[$i] == 'I') {
                            $r++;
                            $i++;
                        }
                    }
                    break;
                }
                case 'V': {
                    $r += 5;
                    break;
                }
                case 'X': {
                    if ($i < $len && $s[$i] == 'L') {
                        $i++;
                        $r += 40;
                    } else if ($i < $len && $s[$i] == 'C') {
                        $i++;
                        $r += 90;
                    } else {
                        $r += 10;
                        
                        while ($i < $len && $s[$i] == 'X') {
                            $r += 10;
                            $i++;
                        }
                    }
                    break;
                }
                case 'L': {
                    $r += 50;
                    break;
                }
                case 'C': {
                    if ($i < $len && $s[$i] == 'D') {
                        $i++;
                        $r += 400;
                    } else if ($i < $len && $s[$i] == 'M') {
                        $i++;
                        $r += 900;
                    } else {
                        $r += 100;
                        
                        while ($i < $len && $s[$i] == 'C') {
                            $r += 100;
                            $i++;
                        }
                    }
                    break;
                }
                case 'D': {
                    $r += 500;
                    break;
                }
                case 'M': {
                    $r += 1000;
                    break;
                }
                default: {}
            }
        }

        return $r;
    }
}