#Smart Macro

Smart Macro extends micro's macro capabilities to aid the user. It does not
affect Micro's default macro behaviour, but instead adds ten configurable
macro slots, effectively giving the user eleven macros to work with. By 
default each macro is run by pressing Alt in combination with the macro's 
number, but this can be rebound to any key combination. 

###Getting started


`> setmacro 0 "Hello $sub has been run $i times\n;sub=world,%s;i=0,%d,i++"`

###Macro script
Smart Macro uses a fairly simple scripting language, however due to needing to 
be keyed into micro's command prompt and other plugin limitations,
Smart Macro's scripts may not be easy to read and understand at first. Here
we will break down the command we saw in the getting started section.


For more examples, see `> help smartmacro examples`

###Special characters

###Cursor movement

###Variables and variable substitution.

###Variable data types

|----------|------------ |------------------------------------------------|
| token    | data type   | explanation                                    |
|----------|-------------|------------------------------------------------|
| `%d[n]`  | base-10     | A plain, base-10 digit that must be rendered   |
|          |             | at least `n` digits long. ( Leading zeroes are |
|          |             | added until it is. All integers can have this.)| 
|----------|-------------|------------------------------------------------|
| `%h[n]`  | hexadecimal | An iterable hexadecimal without a leading `0x` |
|----------|-------------|------------------------------------------------|
| `%x[n]`  | hexadecimal | An iterable hexadecimal with the leading `0x`  |
|          |             | This is what you want in most cases.           |
|----------|-------------|------------------------------------------------|
| `%o[n]`  | octal       | An iterable octal digit.                       |
|----------|-------------|------------------------------------------------|
| `%s`     | string      | The variable is to be interpreted as a string  |
|          |             | literal, immutable and non-iterable.           |
|----------|-------------|------------------------------------------------|

Smartmacro always assumes that a variable containing non-digit characters 
is a string unless specifically told that it is numeric. Smartmacro also
assumes that a variable containing only digits is numeric.

###Credits and License
Smart Macro was designed and written by Collin Warren.<anatoly@somethinghub.com>
The source can be found [here on Github](https://github.com/GeigerCounter/micro-plugins/smartmacro)
It is opensource and licensed under the  
More information can be found in the LICENSE document included with this plugin. 
Smart Macro is free software, same as micro, however if you like this plugin 
and would like to support its development or my other endeavours you can 
pledge to my [Patreon](https://patreon.com/GeigerCounter) or donate 
using [PayPal](https://paypal.com/GeigerCounter) , it would be greatly appreciated!
Thank you for using Smart Macro! 
Please open an issue on Github if you encounter any bugs!
