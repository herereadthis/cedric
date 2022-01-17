# Cedric

https://www.haskell.org/downloads/
https://www.haskell.org/ghcup/

Haskell is functional programming language
Embodies purity - separates code side effects from application
Evaluation model is based on laziness
Strong static typing
Parametric polymorphism

Functional programming means functions are first-class citizens
* can be manipulated like any other data type
* can be passed as an argument in another fucntion
* returned as a result
* assigned to a variable

Each piece of code consists of expressions

Expressions are pure, which means one expect the outcome of a pure function depends only on its parameters and not some initial state.
Pure also means the outcome will be the same every time

Lazy evaluation means an expression  is never evaluated until it is needed for the evaluation of a larger expression

In haskell, types are checked at compilation. There is no more checking at runtime.

Parametric polymorphism: a function can handle values identically without depending on their type

ghci: where Am i? 

```bash
# where am i?
Prelude> :! pwd

# cd to directory
Prelude> :cd PATH

# load file
Prelude> :l src/foo.hs
```


Check the type of something

```Haskell
Prelude> :t 'a'
```

Everything has a type

```Haskell
import Data.char
:t toUpper
```

Lists in Haskell are homogeneous: each list can handle elements of only a single type

Cabal is a system for building and packaging Haskell libraries and programs.

Create a new project with Cabal

```bash
cabal init
```

compile

```bash
cabal new-configure
cabal new-build
# builds to dist-newstyle
```

Stack

```bash
stack init

# compile
stack setup
stack build
```