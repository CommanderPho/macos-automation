JsOsaDAS1.001.00bplist00�Vscripto� v a r   N o t e s   =   A p p l i c a t i o n ( ' N o t e s ' ) ; 
 
 v a r   w o r d s I n b o x   =   N o t e s . f o l d e r s . b y N a m e ( "�<���<��   E n g l i s h " ) ; 
 v a r   n o t e s I n b o x   =   N o t e s . f o l d e r s . b y N a m e ( " N o t e s " ) ; 
 
 v a r   n e w N o t e   =   N o t e s . N o t e ( { 
 	 n a m e :   " V o c a b u l a r y   U p d a t e   "   +   ( n e w   D a t e ) . t o L o c a l e D a t e S t r i n g ( ) , 
 	 c o n t a i n e r :   n o t e s I n b o x , 
 	 b o d y :   " " 
 } ) ; 
 
 v a r   b o d y   =   " " 
 
 f o r   ( i   i n   w o r d s I n b o x . n o t e s )   { 
 	 b o d y   + =   w o r d s I n b o x . n o t e s [ i ] . n a m e ( )   +   " \ n " ; 
 	 b o d y   + =   w o r d s I n b o x . n o t e s [ i ] . b o d y ( ) . r e p l a c e ( / < ( ? : . | \ n ) * ? > / g m ,   " \ n " ) ; 
 } 
 
 b o d y   =   [ . . . n e w   S e t ( b o d y . s p l i t ( " \ n " ) . m a p ( w o r d   = >   w o r d . t r i m ( ) . t o L o c a l e L o w e r C a s e ( ) ) ) ] 
 	 . f i l t e r ( w o r d   = >   w o r d ) 
 	 . s o r t ( ) 
 	 . m a p ( w o r d   = >   " < l i > "   +   w o r d   +   " < / l i > " ) 
 	 . j o i n ( " \ n " ) ; 
 
 n e w N o t e . b o d y   =   " < u l > "   +   b o d y   +   " < / u l > " 
 
 n o t e s I n b o x . a d d E l e m e n t ( n e w N o t e ) ; 
                              Rjscr  ��ޭ