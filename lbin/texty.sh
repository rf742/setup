#! /bin/sh

# This program is a wrapper for fold and pr, with the goal of making
# text files nicely formatted
# it will give the option to either pipe output to less, or it will
# save the output in a file.

verbosity=0

usage(){
echo "    usage: $0 -i input_file"
echo "Options:"
echo "-c: enable output to two columns"
echo "-i: input_file"
echo "-o: output_file"
exit
}

while getopts lci:o: opty
do
	case $opty in
		i)	infile=$OPTARG;;
		o)	outfile=$OPTARG;;
		\?)	usage;exit 1;;
	esac
done
shift `expr $OPTIND - 1`

if [ -r $infile ]; then
	echo "$infile is readable"
	echo "processing $infile"
else
	usage;exit 1;
fi	



fold -w 36 -s "$infile" | pr -2 > "$outfile"
