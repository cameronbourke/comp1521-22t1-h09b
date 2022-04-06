Q2
=======================================

How does `C` interpret numbers?

```c
int main () {
	int x = 0x2u; // what type is this?
	...
}
```

How can you tell if an integer literal in a C program is:
	- `decimal` (base 10)
	- `hexadecimal` (base 16)
	- `octal` (base 8)
	- `binary` (base 2)

What would be a better choice for octal?

🧮 Base Conversions

The following number has volunteered to get us started.
	----
	|87|
	----

> Decimal => Binary

[Spreedsheet time!](https://docs.google.com/spreadsheets/d/1nP4Cjotg7wzYH7wJhKUNCSbgT8XbQDZ6QHGdzprw_6c/edit?usp=sharing)

> Decimal => Hex

The trick is to convert to binary first,
and then convert to hex from binary.

|---------------------------|
| Roses are #FF0000,			  |
| Violets are #0000FF,		  |
| Hexadecimal is awesome,	  |
| And so are you!					  |
|---------------------------|

> Decimal => Octal

Same trick. You convert to binary first,
and then convert to octal from binary.

How could I write a `C` program to answer this question?

> Complete `q2/print_bases.c`

But converting bases is a _slow_ and _tiring_ procedure! I know!

> Have a geez at [Anki](https://apps.ankiweb.net/)

> Go to `q3/README.md`
