# gawkm115.exe -f Selects_02.awk �����R�[�h�\_UTF-8.tsv > GeneSelects.awk

BEGIN{
	FS = "\t";
	print "{";
}

{
	gsub(" ","",$3);
	print "	gsub(\""$3"\",\""$2"\");";
}

END{
	print "	print;";
	print "}";
	print "";
}

