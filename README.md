# Functional Programming

## Usage

```ruby
require('./iterator')

Iterator.map [1,2,3] { |e| e * 2 }       # => [2, 4, 6]
Iterator.filter [1,2,3,4] { |e| e <= 2 } # => [1, 2]
Iterator.reduce [1,2,3,4] { |a,b| a*b }  # => 24
Iterator.fold_left("abcdefgh", "i") { |folded, e| folded << e }  # => "iabcdefgh"
Iterator.fold_right("abcdefgh", "i") { |folded, e| folded << e } # => "ihgfedcba"
a = 0 ; Iterator.foreach [1,2,3,4] { |e|  a += e }; a  # => 10
Iterator.zip [1,2,3,4], [5,6,7,8] { |a,b| a + b }      # => [6, 8, 10, 12]   
Iterator.zip [1,2,3,4], [5,6,7,8]                      # [[1, 5], [2, 6], [3, 7], [4, 8]]
```


