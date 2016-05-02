#!/bin/env zsh

cmsDriver.py SingleNuE10_cfi \
--conditions 76X_mcRun2_asymptotic_v12 \
--pileup_input "dbs:/MinBias/kskovpen-MinBias_GEN_SIM_RECOBEFMIX-d16290d64c7e9c6450497784042d2b15/USER instance=prod/phys03" \
--fast --mc --eventcontent PREMIX \
-s GEN,SIM,RECOBEFMIX,DIGIPREMIX,L1,DIGI2RAW \
--era Run2_25ns \
--beamspot Realistic50ns13TeVCollision \
--datatier GEN-SIM-DIGI-RAW \
--pileup 2015_25ns_FallMC_matchData_PoissonOOTPU \
-n 10 --fileout minbias_premixed.root
