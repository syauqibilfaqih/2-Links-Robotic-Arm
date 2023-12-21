# 2-Links Robotic Arm Project
![image](https://github.com/syauqibilfaqih/2-Links-Robotic-Arm/assets/70939903/bbb44147-bd1b-4885-a83d-1f825445de7b)

## Overview

This repository contains the source code and design files for a 2-Links Robotic Arm project. The project focuses on Pattern Path Planning Kinematics Robotic Arm 2 Link Using Linear Interpolation.

## Equation

This  is the equation of linear interpolation:

![image](https://github.com/syauqibilfaqih/2-Links-Robotic-Arm/assets/70939903/574d1712-0d85-4b97-93e9-1a9d4fcc4490)


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

[![image](https://github.com/syauqibilfaqih/2-Links-Robotic-Arm/assets/70939903/049af71d-a0a9-4b41-9e2d-f803a15ab2c1)](https://www.youtube.com/watch?v=OkG5vZrSlcA)


## References

- Binyameen, 2014, ‘Formal Kinematics Analysis Of Two Link Planar Robot’, Master thesis, National University of Sciences and Technology, Islamabad.
- CHAPRA, S. C., & CANALE, R. P. (2006). Numerical methods for engineers. Boston, McGraw-Hill Higher Education.


## Contact

For inquiries, please contact me at alisyauqibilfaqih@gmail.com.

