[![CI action](https://github.com/eth-vaw-glaciology/course-101-0250-00-L6Testing.jl/actions/workflows/ci.yml/badge.svg)](https://github.com/eth-vaw-glaciology/course-101-0250-00-L6Testing.jl/actions/workflows/ci.yml)

# Showcase unit and integration testing

This is for Lecture 7 of course https://pde-on-gpu.vaw.ethz.ch

It demonstrates a typical work-flow of mine which I committed such
that commit history retraces that workflow:
- start coding ([repo state](https://github.com/eth-vaw-glaciology/course-101-0250-00-L6Testing.jl/tree/8d3d875991e3010216b321413f34cb7ee01b8aa8))
- sprinkle a reference test within the script itself ([script
  state](https://github.com/eth-vaw-glaciology/course-101-0250-00-L6Testing.jl/blob/580eebd9287fb7c547520b3e2863a3ce599e8207/scripts/car_travel.jl))
- refactor and sprinkle a unit-test within the script itself ([script
  state](https://github.com/eth-vaw-glaciology/course-101-0250-00-L6Testing.jl/blob/33b669969b1227289b1059b9ce01baf3ced349e1/scripts/car_travel.jl))
- move tests to `test/` directory
  ([runtests.jl](https://github.com/eth-vaw-glaciology/course-101-0250-00-L6Testing.jl/blob/5b41f800039f77f4b1024393180733b396ee3c09/test/runtests.jl))

Here a link to the commits:
https://github.com/eth-vaw-glaciology/course-101-0250-00-L6Testing.jl/commits/master

## Julia-actions
The Julia related actions are defined in [https://github.com/julia-actions](https://github.com/julia-actions), in particular look at the README of [https://github.com/julia-actions/julia-runtest](https://github.com/julia-actions/julia-runtest).
