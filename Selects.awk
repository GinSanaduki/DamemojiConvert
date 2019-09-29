# gawkm115.exe -f Selects.awk 文字コード表_Unicode_UTF-8_UTF-16_*_21420.tsv > 文字コード表_UTF-8.tsv

BEGIN{
	FS = "\t";
}

(FNR > 3){
	if($3 == ""){
		if($1 != ""){
			print $1"\t"$6"\t"$7;
		}
	}
}

