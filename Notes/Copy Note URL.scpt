JsOsaDAS1.001.00bplist00�Vscripto v a r   N o t e s A p p   =   A p p l i c a t i o n ( ' N o t e s ' ) ; 
 
 f u n c t i o n   r u n ( )   { 
 	 c o n s t   u r l s   = 
 	 	 N o t e s A p p 
 	 	 	 . s e l e c t i o n ( ) 
 	 	 	 . m a p ( s e l e c t e d N o t e   = >   { 
 	 	 	 	 / / c o n s o l e . l o g ( s e l e c t e d N o t e . p r o p e r t i e s ( ) ) ; 
 	 	 	 	 c o n s t   t i m e s t a m p   =   M a t h . f l o o r ( s e l e c t e d N o t e . c r e a t i o n D a t e ( ) . g e t T i m e ( )   /   1 0 0 0 ) ; 	 
 	 	 	 	 c o n s t   n a m e   =   s e l e c t e d N o t e . n a m e ( ) . l e n g t h   ?   `  $ { s e l e c t e d N o t e . n a m e ( ) }  `   :   " U n t i t l e d   n o t e " ; 
 	 	 	 	 c o n s t   u r l   =   ` s h o r t c u t s : / / r u n - s h o r t c u t ? n a m e = N o t e U R L & i n p u t = $ { e n c o d e U R I C o m p o n e n t ( t i m e s t a m p ) } ` ; 
 	 	 	 	 r e t u r n   ` $ { n a m e } :   $ { u r l } ` ; 
 	 	 	 } ) ; 
 	 
 	 N o t e s A p p . s e t T h e C l i p b o a r d T o ( u r l s . j o i n ( " \ n " ) ) ; 
 } 
                              .jscr  ��ޭ