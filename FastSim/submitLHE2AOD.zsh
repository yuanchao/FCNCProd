#!/bin/env zsh

pset="crabConfigTemplateLHE2AOD.py"
tag="v20160501"
ver="ST_TZ_3L"
prodv="/store/user/kskovpen/FCNCProd/AOD/${tag}/"

rm -f crabConfig.py*

cat ${pset} \
| sed "s%OUTLFN%${prodv}%g" \
| sed "s%VERSION%${ver}%g" \
> crabConfig.py
  
crab submit

rm -f crabConfig.py*
