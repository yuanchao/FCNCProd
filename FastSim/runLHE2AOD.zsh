#!/bin/env zsh

hadFile="Hadronizer_ST_TZ_3L_cfi.py"

cmsDriver.py Configuration/GenProduction/python/${hadFile} \
--mc \
--conditions 76X_mcRun2_asymptotic_v12 \
--filein root://sbgse1.in2p3.fr//store/user/kskovpen/FCNCProd/LHE/TH_epsilon_hut/10.lhe \
--filetype LHE \
--era Run2_25ns \
--fast -n 10 \
--eventcontent AODSIM \
--datatier AODSIM \
-s GEN,SIM,RECOBEFMIX,DIGI,L1,L1Reco,RECO,HLT:@frozen25ns \
--pileup_input "dbs:/MinBias/kskovpen-MinBias_GEN_SIM_RECOBEFMIX-d16290d64c7e9c6450497784042d2b15/USER instance=prod/phys03" \
--beamspot Realistic50ns13TeVCollision \
--runUnscheduled \
--pileup AVE_35_BX_25ns \
--python_filename prodLHEtoAOD.py \
--fileout aod.root \
--no_exec
