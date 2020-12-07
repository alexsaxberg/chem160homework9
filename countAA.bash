#!/bin/bash
if [ $# -eq 0 ]; then
	echo "This script requires a protein file"
	exit 1
fi
if [ ! -f $1 ]; then
	echo "Cannot find the protein file"
	exit 1
fi
for i in ALA ARG ASN ASP CYS GLU GLN GLY HIS ILE LEU LYS MET PHE PRO SER THR TRP TYR VAL; do
	echo $(grep $i $1 | grep CA | wc | awk '{print $1}') $i
done
