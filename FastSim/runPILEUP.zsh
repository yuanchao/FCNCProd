#!/bin/env zsh

cmsDriver.py MinBias_13TeV_pythia8_TuneCUETP8M1_cfi \
--conditions 76X_mcRun2_asymptotic_v12 \
--fast -n 10 --mc --eventcontent FASTPU \
-s GEN,SIM,RECOBEFMIX \
--datatier GEN-SIM-RECO \
--beamspot Realistic50ns13TeVCollision \
--era Run2_25ns \
--fileout minbias.root

# runUnscheduled
