GHCI


```bash
# Execute Shell Command
Prelude> :!
# e.g., Where am i?
Prelude :! pwd

# cd to directory
Prelude> :cd PATH

# load file
Prelude> :l src/foo.hs
Prelude> :load src/foo.hs

# quit
Prelude> :q
Prelude> :quit

# check the type of something
Prelude> :t
Prelude> :type

# everything has a type
Prelude> import Data.Char
Prelude Data.Char> :t toUpper
```