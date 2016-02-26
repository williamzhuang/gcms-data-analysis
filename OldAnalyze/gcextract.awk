BEGIN{print "file”,”C12”,”C14”,“C16us”,“C16s”,“C18us”,“C18s”,“C19is”}
$1=="Signal"{
	signal=substr($4,0,index($4,"\\")-3);
	C12=0;
	C14=0;
	C16us=0;
	C16s=0;
	C18us=0;
	C18s=0;
	C19is=0}
signal!=""&&$2>10.8&&$2<11.4{C12+=$(NF-2)}
signal!=""&&$2>11.5&&$2<12.4{C14+=$(NF-2)}
signal!=""&&$2>12.5&&$2<12.84{C16us+=$(NF-2)}
signal!=""&&$2>12.85&&$2<13.5{C16s+=$(NF-2)}
signal!=""&&$2>13.51&&$2<13.79{C18us+=$(NF-2)}
signal!=""&&$2>13.8&&$2<14.1{C18s+=$(NF-2)}
signal!=""&&$2>14.2&&$2<15{C19is+=$(NF-2)}
$1=="Sum"{print signal, C12, C14, C16us, C16s, C18us, C18s, C19is;}
