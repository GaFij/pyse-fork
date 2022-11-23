#!/bin/bash

f_img=/var/scratch/gpafijne/polish-private/dataset_af-nbit16-r1-pix210/POLISH_valid_LR_bicubic/X0/reconstruct-wsclean/0802x1/0802x1-wscl-image.fits
s_list=/var/scratch/gpafijne/polish-private/dataset_af-nbit16-r1-pix210/galparams/0002GalParams.txt

aplha_value=0.001

python pyse $f_img --fdr --alpha  $aplha_value --csv --residuals --skymodel

#--detection 5 --analysis 0.5
#--fixed-posns-file $s_list