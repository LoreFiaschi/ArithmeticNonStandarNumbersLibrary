# Project structure

link, pdf, src are an old version of the folder in the Dropbox.

# Requirements

julia version 1.6.1
julia Distributions Package -- Pkg.add("Distributions")

python 3.8
pygmo 2.16 

# Files

## distances.jl

Implement GD, IGD, GD+, IGD+, Delta, Delta+ with Ban (PC)

There is data in the file for the figures in section 4.2 of the report.

```
julia distances.jl
```

## hv-montecarlo_err.jl

Implements an incorrect implementation for calculating hypervolume with the PC. 

```
julia hv-montecarlo_err.jl
```

## hv-montecarlo-pl.jl

Implements the hv montecarlo method for pl with the example in the report.

```
julia hv-montecarlo-pl.jl
```

## hv-montecarlo.jl

Implementation of the hv montecarlo standard extended to BAN (was used to fully understand the problem related to HV Monte Carlo for PC)

```
julia hv-montecarlo.jl
```

## hv.jl
Implementation of Hypervolume as presented in the report.
There are some default examples all commented out. (because hv.jl is imported and used by some other files)

```
julia hv.jl
```
## test-hv.jl

Created to test the correctness of the hv implementation, the correct way to run the test is:

```
python test-nsga.py
```

and then:

```
julia test-hv.jl
```

The results should be equal.

## test-nsga.py

Used to test the correctness of hv implementation, there are two reference problems, the default is dtlz (the reference point must be adapted to the length of the problem)

```
python test-nsga.py
```
