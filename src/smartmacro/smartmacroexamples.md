###Variable substitution
"dir.$i/wob.log;i=0,%d3,i++" A macro that writes dir.000/wob.log on first run,
dir.001/wob.log on second run, etc.

###Cursor reposition:
"function smartmacro$i()\n\nend%up%\tstuff%end%;i=0,%d,i++" A macro that types:

```
function smartmacro0()
	stuff
end
```
And moves the cursor to the end of the second line.

###Iterator with limits:
"sable$i\n;i=0,%d,i++:9"

```
sable0
sable1
sable2
sable3
...
sable8
sable9
sable0
sable1
...
```

###String substitution:

"Merkel$werg;werg=says\, \"Hello\, I am pie.\",%s"

prints `Merkel says, "Hello, I am pie"`

###Formatted string substitution:
"$ingredient;ingredient="

prints `2 lbs. of spam`
