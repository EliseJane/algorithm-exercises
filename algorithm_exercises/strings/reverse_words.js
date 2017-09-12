var reverseWords = function(str) {
    var sanitized = str.trim().replace(/\s+/g, " ");
    if (sanitized === " ") {
        return "";
    }
    
    var words = sanitized.split(" ");
    var front = 0;
    var back = words.length-1;
    var temp;
    
    while (front < back) {
        temp = words[front];
        words[front] = words[back];
        words[back] = temp;
        front += 1;
        back -= 1;
    }
    
    return words.join(" ");
};