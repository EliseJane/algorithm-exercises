var isPalindrome = function(s) {
    var clean = s.toUpperCase().replace(/\W/g, "")
    for (var i = 0, j = clean.length-1; i < j; i++, j--) {
        if (clean[i] !== clean[j]) {
            return false;
        }
    }
    return true;
};

// space: O(n)
// time: O(n)