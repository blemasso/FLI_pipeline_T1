#!/bin/bash

mkdir -p bin
cd matlab
mcc -R '-singleCompThread,-nosplash,-nodisplay' \
    -v -w enable -m \
    pipeline_T1.m \
    *.m \
    ${SPM12_HOME}/spm_vol.m
mv pipeline_T1 ../bin
cd ..
