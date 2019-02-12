# Prime Generator

A Ruby 2.6.1 program that generates prime numbers and prints them in the terminal.

### Testing:

The application is fully tested. Run the specs with `rspec`.


### Usage:

You may need to give executable permissions to the script using:
```
chmod +x bin/run
```

Using the default limit of 10:
```
$ bin/run
```

Pass a specific limit:
```
$ bin/run 22
```

Sample output:
```
$ bin/run
    | 2  3  5   7   11  13  17  19  23  29  
- - - - - - - - - - - - - - - - - - - - - - 
2   | 4  6  10  14  22  26  34  38  46  58  
3   | 6  9  15  21  33  39  51  57  69  87  
5   | 10 15 25  35  55  65  85  95  115 145 
7   | 14 21 35  49  77  91  119 133 161 203 
11  | 22 33 55  77  121 143 187 209 253 319 
13  | 26 39 65  91  143 169 221 247 299 377 
17  | 34 51 85  119 187 221 289 323 391 493 
19  | 38 57 95  133 209 247 323 361 437 551 
23  | 46 69 115 161 253 299 391 437 529 667 
29  | 58 87 145 203 319 377 493 551 667 841

```