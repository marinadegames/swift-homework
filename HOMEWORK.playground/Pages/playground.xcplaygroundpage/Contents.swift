let fruit = "or*an*ge"

let numberOfStars = fruit.reduce(0) { countStars, char in
    char == "*" ? countStars + 1 : countStars
}
print(numberOfStars) // => 2
