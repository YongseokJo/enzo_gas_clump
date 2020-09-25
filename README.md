## enzo_gas_clump

This version of Enzo aims at implanting a gas clump in AgoraRestart from a parameter file. This does not require any further compilations.

## Parameters
`AgoraRestartGasClumpOn`
Set 1 to insert a gas clump
Default: 0 (FALSE)
`AgoraRestartGasClumpCenter`           
`AgoraRestartGasClumpVelocity`     
`AgoraRestartGasClumpMass`      
`AgoraRestartGasClumpRadius`         
`AgoraRestartPassiveScalarOn`  


## Example

`AgoraRestartGasClumpOn`                        = 1
`AgoraRestartGasClumpCenter`                     = 0.015258786492942567 0 0   // 20 0 0 kpc
`AgoraRestartGasClumpVelocity`                   = -0.08 0 0
`AgoraRestartGasClumpMass`                       = 0.09996560555024785     // 1e8 Msun
`AgoraRestartGasClumpRadius`                     = 0.0007629393246471283   // 1 kpc
`AgoraRestartPassiveScalarOn`                    = 1

