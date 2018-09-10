primitive Lab1_UDP(E,A1,B,A,C);
	output E;
	input A1,B,A,C;
 table 
//     A1 B A C : E
	0 0 0 0 : 0 ;
	0 0 0 1 : 0 ;
	0 0 1 0 : 0 ;
	0 0 1 1 : 1 ;
	0 1 0 0 : 1 ;
	0 1 0 1 : 1 ;
	0 1 1 0 : 1 ;
	0 1 1 1 : 1 ;
	1 0 0 0 : 0 ;
	1 0 0 1 : 0 ;
	1 0 1 0 : 0 ;
	1 0 1 1 : 1 ;
	1 1 0 0 : 0 ;
	1 1 0 1 : 0 ;
	1 1 1 0 : 0 ;	
	1 1 1 1 : 1 ;
 endtable
endprimitive
