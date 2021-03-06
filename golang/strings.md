# Strings
{id: strings}


## Single and double quotes
{id: single-and-double-quotes}

* Double quote is for strings - a series of bytes (uint8)
* Single quote is for runes (alias for int32 signed integer) - a character value


## Runes
{id: runes}
{i: rune}
{i: int32}

* alias for int32

![](examples/rune/rune.go)
![](examples/rune/rune.out)

## Strings
{id: strings-intro}

![](examples/strings/strings.go)
![](examples/strings/strings.out)

## Change string
{id: change-string}

![](examples/change-string/change_string.go)
![](examples/change-string/change_string.out)


## Strings and Runes
{id: strings-and-runes}

![](examples/string-rune/string_rune.go)
![](examples/string-rune/string_rune.out)


## Length of string
{id: length-of-string}
{i: len}

![](examples/string-length/string_length.go)

## iterate over characters in a string
{id: for-loop-string}
{i: range}

![](examples/loop-string/loop_string.go)

## String Contains, HasPrefix, HasSuffix
{id: string-contains}
{i: Contains}
{i: HasPrefix}
{i: HasSuffix}


![](examples/suffix-prefix/suffix_prefix.go)


## Split
{id: split}
{i: Split}

![](examples/split/split.go)
![](examples/split/split.out)

## Join
{id: join}
{i: join}

![](examples/join/join.go)
![](examples/join/join.out)

## Split on whitespaces
{id: split-on-whitespaces}
{i: Fields}
{i: Split}


![](examples/split-on-whitespace/split_on_whitespace.go)
![](examples/split-on-whitespace/split_on_whitespace.out)

```
'  hello    space   world 42 '
[hello space world 42]
4
```

* [strings.Fields](https://golang.org/pkg/strings/#Fields)


## Newlines
{id: newlines}

![](examples/newlines/newlines.go)
![](examples/newlines/newlines.out)


## Read line from stdin (keyboard)
{id: read-line-from-stdin}

Read from the stdin (standard input) Get input from the keyboard in golang

![](examples/read-from-stdin/read_from_stdin.go)

## Read line from stdin (keyboard) with error handling
{id: read-line-from-stdin-with-error-handling}

![](examples/read-from-stdin-with-error-handling/read_from_stdin_with_error_handling.go)

## Trim line - remove trailing newline from string
{id: remove-newline}
{i: trim}
{i: TrimSuffix}

![](examples/trim-newline/trim.go)
![](examples/trim-newline/trim.out)


## Strings and bytes
{id: string-and-bytes}

* strings are just aliases for bytes
* strings are (generally?) immutable

![](examples/strings-bytes/strings_bytes.go)

## Scan in a loop
{id: scan-in-a-loop}

![](examples/scan-in-loop/scan_in_loop.go)
![](examples/scan-in-loop/scan_in_loop.in)
![](examples/scan-in-loop/scan_in_loop.out)

## Compare strings
{id: compare-strings}

![](examples/compare-strings/compare_strings.go)
![](examples/compare-strings/compare_strings.out)

## Raw strings
{id: raw-strings}

![](examples/raw-strings/raw_strings.go)
![](examples/raw-strings/raw_strings.out)

## Multiline strings
{id: multiline-strings}

![](examples/multiline-string/multiline_string.go)
![](examples/multiline-string/multiline_string.out)

## Exercise: how long is this string?
{id: exercise-how-long-is-this-string}

* The code will ask the user to type in a string and will print out the length of the string.

## Exercise: which string is longer?
{id: exercise-which-string-is-longer}

* The code will prompt the user for two strings and then print out which string is longer.

## Exercise: which string is ahead in ABC?
{id: exercise-which-string-is-ahead-in-abc}

* The code will prompt the user for two strings and then print out which string is ahead in ABC order.

## Exercise: which string is ahead - menu
{id: exercise-which-string-is-ahead-menu}

* The code will first show two options like the following and ask the user to type in either 1 or 2.

```
1) by ABC
2) by length
```

* Then the code will prompt the user for two strings and then print out which ahead comparing them either by their location in the ABC or by their length, depending on the first selection.

## Exercise: Hide substring
{id: exercise-hide-substring}

Given a string:

* show 4 * characters and then the last 4 characters
* show the first 4 characters and then 4 stars
* replace every character, except the last 4 by a *
* replace every character, except the first 4 by a *

Here the first line is the input, the rest are the 4 output strings:

![](examples/hide-substring/hide_substring.out)


## Solution: how long is this string?
{id: solution-how-long-is-this-string}

![](examples/how-long-is-this-string/how_long_is_this_string.go)

## Solution: which string is longer?
{id: solution-which-string-is-longer}
{i: len}

![](examples/which-string-is-longer/which_string_is_longer.go)

## Solution: which string is ahead in ABC?
{id: solution-which-string-is-ahead-in-abc}

![](examples/string-abc/string_abc.go)

## Solution: which string is ahead - menu
{id: solution-which-string-is-ahead-menu}

![](examples/string-ahead/string_ahead.go)

## Solution: Hide substring
{id: solution-hide-substring}
{i: Repeat}

![](examples/hide-substring/hide_substring.go)
