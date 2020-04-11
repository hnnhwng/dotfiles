# Defined in - @ line 0
function piinpoint --description alias\ piinpoint=img2txt\ -f\ utf8\ -d\ none\ -g\ 0.4\ -W\ \(stty\ size\ \|\ grep\ -o\ \"\\s.\*\"\)\ -x\ 6\ -y\ 11\ \~/Downloads/piinpoint.png\ \ \|\ sed\ -e\ \'s/\;5\;/\;/g\'
	img2txt -f utf8 -d none -g 0.4 -W (stty size | grep -o "\s.*") -x 6 -y 11 ~/Downloads/piinpoint.png  | sed -e 's/;5;/;/g' $argv;
end
