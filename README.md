# 2-Links Robotic Arm Project

![Robotic Arm]()

## Overview

This repository contains the source code and design files for a 2-Links Robotic Arm project. The project focuses on Pattern Path Planning Kinematics Robotic Arm 2 Link Using Linear Interpolation.

## Equation

This  is the equation of linear interpolation:


## Code

The implementation on lua programming language of the previous equation can be seen as bellow:

```
    for titikX=10,1,-1 do
        titikY = ((P2[2]-P1[2])/(P2[1]-P1[1]))*(titikX-P1[1])+P1[2]
        invKin(titikX,titikY,5.5,5.5)
        sim.wait(2)
    end
```

## Video



## References

- Binyameen, 2014, ‘Formal Kinematics Analysis Of Two Link Planar Robot’, Master thesis, National University of Sciences and Technology, Islamabad.
- CHAPRA, S. C., & CANALE, R. P. (2006). Numerical methods for engineers. Boston, McGraw-Hill Higher Education.


## Contact

For inquiries, please contact me at alisyauqibilfaqih@gmail.com.

