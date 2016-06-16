#!/bin/bash

function die {
  echo $1
  exit 1
}

if [ $# != 4 ]
then
  echo "usage: $0 <nifti_image> <json_file> <output_file_name>"
  exit 1
fi

OUTPUT_FILE=$3

pipeline_T1 $1 $2 || die "Pipeline execution failed!"

zip -r ${OUTPUT_FILE} *-T1_Error.nii *-M0_Error.nii *-T1map.nii *-M0map.nii || die "Cannot zip output files!"
