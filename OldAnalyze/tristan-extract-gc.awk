BEGIN{print "file","valencene","nootkatone", "nootkatolone"}
$1=="Signal"{
	signal=substr($(NF),0,index($(NF),"\\")-3);
	valencene=0;
	nootkatone=0;
	nootkatolone=0}
signal!=""&&$2>8.6&&$2<9.1{valencene+=$(NF-2)}
signal!=""&&$2>10.655&&$2<10.714{nootkatone+=$(NF-2)}
signal!=""&&$2>11.752&&$2<11.79{nootkatolone+=$(NF-2)}
$1=="Sum"{print signal, valencene, nootkatone, nootkatolone;}
