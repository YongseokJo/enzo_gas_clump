## enzo_gas_clump

This version of Enzo aims at implanting a gas clump in AgoraRestart from a parameter file. This does not require any further compilations.
Currently, the morphology of a gas clump is a sphere of a uniform density. If needed, I will add more.

## Parameters 
`AgoraRestartGasClumpOn`  
Set 1 to insert a gas clump. Default: 0 (FALSE)  
`AgoraRestartGasClumpCenter`  
This is the position of the gas clump with respect to the center of the galaxy or simulation i.e. (0.5, 0.5, 0.5). There is no default value.  
`AgoraRestartGasClumpVelocity`  
The initial velocity of the gas clump. There is no default value.  
`AgoraRestartGasClumpMass`  
The mass of the gas clump. There is no default value.  
`AgoraRestartGasClumpRadius`  
The radius of the gas clump. There is no default value.  
`AgoraRestartPassiveScalarOn`

Note that every parameter should be given in code unit. You can simply use yt to do such conversion. 
For example, 
```
import yt
ds = yt.load("DD0000/DD0000")
radius = ds.quan(1, "kpc")
print(radius.in_units("code_length")
```


## Example

`AgoraRestartGasClumpOn`                        = 1\
`AgoraRestartGasClumpCenter`                     = 0.015258786492942567 0 0   // 20 0 0 kpc from the ceter of the simulation\
`AgoraRestartGasClumpVelocity`                   = -0.08 0 0\
`AgoraRestartGasClumpMass`                       = 0.09996560555024785     // 1e8 Msun\
`AgoraRestartGasClumpRadius`                     = 0.0007629393246471283   // 1 kpc\
`AgoraRestartPassiveScalarOn`                    = 1\

