#!/bin/env zsh

cmsDriver.py step2 \
--filein file:aod.root \
--fileout file:miniaod.root \
-n 10 \
--conditions 76X_mcRun2_asymptotic_v12 \
-s PAT --mc --fast \
--datatier MINIAODSIM \
--era Run2_25ns \
--eventcontent MINIAODSIM \
--runUnscheduled \
--python_filename prodAODtoMINIAOD.py \
--no_exec -n 2
