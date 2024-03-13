FasdUAS 1.101.10   ��   ��    k             l     ��  ��    5 / Export a simple cue sheet from a QLab cue list     � 	 	 ^   E x p o r t   a   s i m p l e   c u e   s h e e t   f r o m   a   Q L a b   c u e   l i s t   
  
 l     ��  ��    , & Jason Tuttle <jason@hearspotbark.com>     �   L   J a s o n   T u t t l e   < j a s o n @ h e a r s p o t b a r k . c o m >      l     ��  ��    P J This script will export the cue number and name of all selected cues to a     �   �   T h i s   s c r i p t   w i l l   e x p o r t   t h e   c u e   n u m b e r   a n d   n a m e   o f   a l l   s e l e c t e d   c u e s   t o   a      l     ��  ��    @ : comma-delimited (.csv) or tab-delimited (.tsv) text file,     �   t   c o m m a - d e l i m i t e d   ( . c s v )   o r   t a b - d e l i m i t e d   ( . t s v )   t e x t   f i l e ,      l     ��  ��    c ] which can be imported to any common spreadsheet program (Excel, Numbers, OpenOffice, etc...)     �   �   w h i c h   c a n   b e   i m p o r t e d   t o   a n y   c o m m o n   s p r e a d s h e e t   p r o g r a m   ( E x c e l ,   N u m b e r s ,   O p e n O f f i c e ,   e t c . . . )      l     ��������  ��  ��       !   l   � "���� " O   � # $ # O   � % & % k   � ' '  ( ) ( Q   ~ * + , * k   m - -  . / . r     0 1 0 J     2 2  3 4 3 m     5 5 � 6 6 
 C o m m a 4  7�� 7 m     8 8 � 9 9  T a b��   1 o      ���� 0 filetypelist fileTypeList /  : ; : r     < = < m     > > � ? ?   = o      ���� "0 defaultfilename defaultFileName ;  @ A @ I   (�� B C
�� .sysodlogaskr        TEXT B m     D D � E E 0 C h o o s e   a   d e l i m i t e r   t y p e : C �� F G
�� 
btns F o     ���� 0 filetypelist fileTypeList G �� H I
�� 
dflt H m   ! " J J � K K 
 c o m m a I �� L��
�� 
appr L m   # $ M M � N N  F i l e   T y p e��   A  O P O Z   ) � Q R S T Q l  ) 4 U���� U =  ) 4 V W V n   ) 0 X Y X 1   , 0��
�� 
bhit Y 1   ) ,��
�� 
rslt W m   0 3 Z Z � [ [ 
 c o m m a��  ��   R k   7 L \ \  ] ^ ] r   7 F _ ` _ I  7 >�� a��
�� .sysontocTEXT       shor a m   7 :���� ,��   ` n      b c b 1   A E��
�� 
txdl c 1   > A��
�� 
ascr ^  d�� d r   G L e f e m   G J g g � h h " N e w   C u e   S h e e t . c s v f o      ���� "0 defaultfilename defaultFileName��   S  i j i l  O V k���� k =  O V l m l m   O R��
�� 
file m m   R U n n � o o  t a b��  ��   j  p�� p k   Y n q q  r s r r   Y h t u t I  Y `�� v��
�� .sysontocTEXT       shor v m   Y \���� 	��   u n      w x w 1   c g��
�� 
txdl x 1   ` c��
�� 
ascr s  y�� y r   i n z { z m   i l | | � } } " N e w   C u e   S h e e t . t s v { o      ���� "0 defaultfilename defaultFileName��  ��   T k   q � ~ ~   �  I  q v������
�� .sysobeepnull��� ��� long��  ��   �  � � � I  w ~�� ���
�� .sysodlogaskr        TEXT � m   w z � � � � � 8 Y o u   m u s t   c h o o s e   a   d e l i m i t e r .��   �  ��� � R    ��� ���
�� .ascrerr ****      � **** � m   � � � � � � �  n o   d e l i m i t e r��  ��   P  � � � l  � � � � � � r   � � � � � n  � � � � � 1   � ���
�� 
txdl � 1   � ���
�� 
ascr � o      ���� "0 saveddelimiters savedDelimiters � 1 + need this later for trimFilePath() handler    � � � � V   n e e d   t h i s   l a t e r   f o r   t r i m F i l e P a t h ( )   h a n d l e r �  � � � l  � ���������  ��  ��   �  � � � p   � � � � ������ 0 onecue oneCue��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � I  � ����� �
�� .sysonwflfile    ��� null��   � �� � �
�� 
prmt � m   � � � � � � �  N a m e   t h e   f i l e � �� ���
�� 
dfnm � o   � ����� "0 defaultfilename defaultFileName��   � o      ���� 0 thefile theFile �  � � � r   � � � � � I  � ��� � �
�� .rdwropenshor       file � o   � ����� 0 thefile theFile � �� ���
�� 
perm � m   � ���
�� boovtrue��   � o      ���� "0 referencenumber referenceNumber �  � � � r   � � � � � c   � � � � � J   � � � �  � � � m   � � � � � � � 
 C u e   # �  � � � m   � � � � � � �  C u e   N a m e �  � � � m   � � � � � � � 
 N o t e s �  � � � m   � � � � � � �  L e n g t h �  ��� � b   � � � � � m   � � � � � � �  T a r g e t � o   � ���
�� 
ret ��   � m   � ���
�� 
TEXT � o      ���� 
0 header   �  � � � I  � ��� � �
�� .rdwrwritnull���     **** � o   � ����� 
0 header   � �� � �
�� 
refn � o   � ����� 0 thefile theFile � �� ���
�� 
wrat � m   � ���
�� rdwreof ��   �  � � � l  � ���������  ��  ��   �  � � � X   �W ��� � � k  
R � �  � � � Q  
P � � � � l / � � � � k  / � �  � � � r   � � � n   � � � 1  ��
�� 
pnam � o  ���� 0 eachcue eachCue � o      ���� 0 thisqnumber   �  � � � r  ( � � � b  $ � � � b    � � � m   � � � � �  " � l  ����� � n   � � � 1  ��
�� 
qDNa � o  ���� 0 eachcue eachCue��  ��   � m   # � � � � �  " � o      ���� 0 	thisqname   �  � � � r  ): � � � b  )6 � � � b  )2 � � � m  ), � � � � �  " � n  ,1 � � � 1  -1��
�� 
qNot � o  ,-���� 0 eachcue eachCue � m  25   �  " � o      ���� 0 
thisqnotes   �  r  ;B m  ;> �   o      ���� 0 	thisqtime   	 r  CJ

 m  CF �   o      ���� 0 thisqtarget  	  n  KU I  LU������ &0 converttoduration convertToDuration �� n  LQ 1  MQ��
�� 
qDur o  LM���� 0 eachcue eachCue��  ��    f  KL  Z  Vi���� > V[ l VY���� 1  VY��
�� 
rslt��  ��   m  YZ��
�� boovfals r  ^e l ^a���� 1  ^a��
�� 
rslt��  ��   o      ���� 0 	thisqtime  ��  ��    !  Z  j�"#$��" l js%����% = js&'& n  jo()( 1  ko��
�� 
qTyp) o  jk���� 0 eachcue eachCue' m  or** �++  F a d e��  ��  # r  v�,-, b  v�./. b  v�010 b  v�232 b  v�454 m  vy66 �77  "5 l y�8����8 n  y�9:9 1  ~���
�� 
pnam: l y~;����; n  y~<=< 1  z~��
�� 
qQTr= o  yz�� 0 eachcue eachCue��  ��  ��  ��  3 m  ��>> �??  :  1 n  ��@A@ 1  ���~
�~ 
qDNaA l ��B�}�|B n  ��CDC 1  ���{
�{ 
qQTrD o  ���z�z 0 eachcue eachCue�}  �|  / m  ��EE �FF  "- o      �y�y 0 thisqtarget  $ GHG l ��I�x�wI = ��JKJ n  ��LML 1  ���v
�v 
qTypM o  ���u�u 0 eachcue eachCueK m  ��NN �OO 
 A u d i o�x  �w  H PQP k  ��RR STS r  ��UVU c  ��WXW n  ��YZY 1  ���t
�t 
qFTrZ o  ���s�s 0 eachcue eachCueX m  ���r
�r 
ctxtV o      �q�q 0 thisqtargetpath  T [\[ n  ��]^] I  ���p_�o�p 0 trimfilepath trimFilePath_ `a` o  ���n�n 0 thisqtargetpath  a b�mb o  ���l�l "0 saveddelimiters savedDelimiters�m  �o  ^  f  ��\ c�kc r  ��ded b  ��fgf b  ��hih m  ��jj �kk  "i l ��l�j�il 1  ���h
�h 
rslt�j  �i  g m  ��mm �nn  "e o      �g�g 0 thisqtarget  �k  Q opo l ��q�f�eq = ��rsr n  ��tut 1  ���d
�d 
qTypu o  ���c�c 0 eachcue eachCues m  ��vv �ww 
 G r o u p�f  �e  p x�bx r  ��yzy b  ��{|{ b  ��}~} m  �� ���  G r o u p :  ~ n  ����� 1  ���a
�a 
qGMo� o  ���`�` 0 eachcue eachCue| m  ���� ��� 
   m o d ez o      �_�_ 0 thisqtarget  �b  ��  ! ��� l ���^�]�\�^  �]  �\  � ��� l ����� r  ���� c  ���� J  �	�� ��� o  ���[�[ 0 thisqnumber  � ��� o  ���Z�Z 0 	thisqname  � ��� o  ���Y�Y 0 
thisqnotes  � ��� o  ��X�X 0 	thisqtime  � ��W� o  �V�V 0 thisqtarget  �W  � m  	�U
�U 
TEXT� o      �T�T 0 onecue oneCue� ) #you'd have to add extra fields here   � ��� F y o u ' d   h a v e   t o   a d d   e x t r a   f i e l d s   h e r e� ��S� I /�R��
�R .rdwrwritnull���     ****� l ��Q�P� b  ��� o  �O�O 0 onecue oneCue� o  �N
�N 
ret �Q  �P  � �M��
�M 
as  � m  �L
�L 
ctxt� �K��
�K 
refn� o  "%�J�J 0 thefile theFile� �I��H
�I 
wrat� m  (+�G
�G rdwreof �H  �S   � F @if you want to expand the number of fields to export, do so here    � ��� � i f   y o u   w a n t   t o   e x p a n d   t h e   n u m b e r   o f   f i e l d s   t o   e x p o r t ,   d o   s o   h e r e � R      �F��
�F .ascrerr ****      � ****� o      �E�E 0 error_message  � �D��C
�D 
errn� o      �B�B 0 error_number  �C   � l 7P���� I 7P�A��
�A .sysodlogaskr        TEXT� b  7B��� b  7@��� b  7<��� m  7:�� ��� 
 E r r o r� o  :;�@�@ 0 error_number  � m  <?�� ���  :  � o  @A�?�? 0 error_message  � �>��
�> 
btns� J  CH�� ��=� m  CF�� ���  O K�=  � �<��;
�< 
dflt� m  IJ�:�: �;  � * $just in case something goes wrong...   � ��� H j u s t   i n   c a s e   s o m e t h i n g   g o e s   w r o n g . . . � ��9� l QQ�8�7�6�8  �7  �6  �9  �� 0 eachcue eachCue � l  � ���5�4� c   � ���� 1   � ��3
�3 
qSEL� m   � ��2
�2 
list�5  �4   � ��� l XX�1�0�/�1  �0  �/  � ��� l X_���� I X_�.��-
�. .rdwrclosnull���     ****� o  X[�,�, "0 referencenumber referenceNumber�-  � ( "close access to the file we opened   � ��� D c l o s e   a c c e s s   t o   t h e   f i l e   w e   o p e n e d� ��� l ``�+�*�)�+  �*  �)  � ��� l `k���� r  `k��� m  `c�� ���  � n     ��� 1  fj�(
�( 
txdl� 1  cf�'
�' 
ascr�  -reset to nothing   � ��� " - r e s e t   t o   n o t h i n g� ��&� l ll�%�$�#�%  �$  �#  �&   + R      �"��!
�" .ascrerr ****      � ****� o      � �  0 error_message  �!   , I u~���
� .sysodlogaskr        TEXT� b  uz��� m  ux�� ���  E r r o r :� o  xy�� 0 error_message  �   ) ��� l ����  �  �  �   & 4   ��
� 
qDoc� m   
 ��  $ 5     ���
� 
capp� m    �� ��� & c o m . f i g u r e 5 3 . q l a b . 5
� kfrmID  ��  ��   ! ��� l     ����  �  �  � ��� i     ��� I      ���� &0 converttoduration convertToDuration� ��� o      �� 0 
numseconds 
numSeconds�  �  � k     y�� ��� r     ��� m     �� ?�������� o      �� 0 quantum  � ��� Q    y���� k    g�� ��� r    ��� c    � � l   ��
 I   �	
�	 .sysorondlong        doub ^     ^    
 o    �� 0 
numseconds 
numSeconds m    	�� < m   
 �� < ��
� 
dire m    �
� olierndD�  �  �
    m    �
� 
ctxt� o      �� 0 	thishours 	thisHours� 	
	 r    & c    $ l   "� �� I   "��
�� .sysorondlong        doub ^     ^     o    ���� 0 
numseconds 
numSeconds m    ���� < m    ���� 
 ����
�� 
dire m    ��
�� olierndD��  �   ��   m   " #��
�� 
ctxt o      ����  0 thistenminutes thisTenMinutes
  r   ' 6 c   ' 4 l  ' 2���� I  ' 2��
�� .sysorondlong        doub l  ' , ����  `   ' ,!"! ^   ' *#$# o   ' (���� 0 
numseconds 
numSeconds$ m   ( )���� <" m   * +���� 
��  ��   ��%��
�� 
dire% m   - .��
�� olierndD��  ��  ��   m   2 3��
�� 
ctxt o      ���� 0 thisminutes thisMinutes &'& r   7 F()( c   7 D*+* l  7 B,����, I  7 B��-.
�� .sysorondlong        doub- ^   7 </0/ `   7 :121 o   7 8���� 0 
numseconds 
numSeconds2 m   8 9���� <0 m   : ;���� 
. ��3��
�� 
dire3 m   = >��
�� olierndD��  ��  ��  + m   B C��
�� 
ctxt) o      ����  0 thistenseconds thisTenSeconds' 454 r   G V676 c   G T898 l  G R:����: ]   G R;<; l  G P=����= I  G P��>��
�� .sysorondlong        doub> l  G L?����? ^   G L@A@ `   G JBCB o   G H���� 0 
numseconds 
numSecondsC m   H I���� 
A o   J K���� 0 quantum  ��  ��  ��  ��  ��  < o   P Q���� 0 quantum  ��  ��  9 m   R S��
�� 
ctxt7 o      ���� 0 thisseconds thisSeconds5 D��D L   W gEE c   W fFGF b   W dHIH b   W bJKJ b   W `LML b   W ^NON b   W \PQP b   W ZRSR o   W X���� 0 	thishours 	thisHoursS m   X YTT �UU  :Q o   Z [����  0 thistenminutes thisTenMinutesO o   \ ]���� 0 thisminutes thisMinutesM m   ^ _VV �WW  :K o   ` a����  0 thistenseconds thisTenSecondsI o   b c���� 0 thisseconds thisSecondsG m   d e��
�� 
TEXT��  � R      ��X��
�� .ascrerr ****      � ****X o      ���� 0 error_message  ��  � k   o yYY Z[Z I  o v��\��
�� .ascrcmnt****      � ****\ b   o r]^] m   o p__ �``  E r r o r :  ^ o   p q���� 0 error_message  ��  [ a��a L   w ybb m   w x��
�� boovfals��  �  � cdc l     ��������  ��  ��  d efe i    ghg I      ��i���� 0 trimfilepath trimFilePathi jkj o      ���� 0 filepath filePathk l��l o      ���� 0 reset_delimiter  ��  ��  h k     )mm non r     pqp J     rr s��s m     tt �uu  :��  q n     vwv 1    ��
�� 
txdlw 1    ��
�� 
ascro xyx e    zz n    {|{ 4  	 ��}
�� 
citm} m   
 ������| o    	���� 0 filepath filePathy ~~ Z    ������ >   ��� l   ������ 1    ��
�� 
rslt��  ��  � m    ��
�� boovfals� r    ��� l   ������ 1    ��
�� 
rslt��  ��  � o      ���� "0 trimmedfilepath trimmedFilePath��  � R    �����
�� .ascrerr ****      � ****� m    �� ��� : c a n n o t   e x t r a c t   f i l e   f r o m   p a t h��   ��� r    &��� J    "�� ���� o     ���� 0 reset_delimiter  ��  � n     ��� 1   # %��
�� 
txdl� 1   " #��
�� 
ascr� ���� L   ' )�� o   ' (���� "0 trimmedfilepath trimmedFilePath��  f ���� l     ��������  ��  ��  ��       ��������  � �������� &0 converttoduration convertToDuration�� 0 trimfilepath trimFilePath
�� .aevtoappnull  �   � ****� ������������� &0 converttoduration convertToDuration�� ����� �  ���� 0 
numseconds 
numSeconds��  � ������������������ 0 
numseconds 
numSeconds�� 0 quantum  �� 0 	thishours 	thisHours��  0 thistenminutes thisTenMinutes�� 0 thisminutes thisMinutes��  0 thistenseconds thisTenSeconds�� 0 thisseconds thisSeconds�� 0 error_message  � �������������TV������_���� <
�� 
dire
�� olierndD
�� .sysorondlong        doub
�� 
ctxt�� 

�� 
TEXT�� 0 error_message  ��  
�� .ascrcmnt****      � ****�� z�E�O e��!�!��l �&E�O��!�!��l �&E�O��!�#��l �&E�O��#�!��l �&E�O��#�!j � �&E�O��%�%�%�%�%�%�&W X 
 �%j Of� ��h������~�� 0 trimfilepath trimFilePath�� �}��} �  �|�{�| 0 filepath filePath�{ 0 reset_delimiter  �  � �z�y�x�z 0 filepath filePath�y 0 reset_delimiter  �x "0 trimmedfilepath trimmedFilePath� t�w�v�u�t�
�w 
ascr
�v 
txdl
�u 
citm
�t 
rslt�~ *�kv��,FO��i/EO�f �E�Y )j�O�kv��,FO�� �s��r�q���p
�s .aevtoappnull  �   � ****� k    ���   �o�o  �r  �q  � �n�m�l�n 0 eachcue eachCue�m 0 error_message  �l 0 error_number  � h�k��j�i 5 8�h >�g D�f�e J�d M�c�b�a�` Z�_�^�]�\ g�[ n�Z |�Y � ��X�W ��V�U�T�S�R�Q�P � � � � ��O�N�M�L�K�J�I�H�G�F�E�D�C�B�A ��@ ��? ��> �=�<�;�:�9�8*6�7>EN�6�5�4�3jmv�2��1�0�/�����.��-�
�k 
capp
�j kfrmID  
�i 
qDoc�h 0 filetypelist fileTypeList�g "0 defaultfilename defaultFileName
�f 
btns
�e 
dflt
�d 
appr�c 
�b .sysodlogaskr        TEXT
�a 
rslt
�` 
bhit�_ ,
�^ .sysontocTEXT       shor
�] 
ascr
�\ 
txdl
�[ 
file�Z 	
�Y .sysobeepnull��� ��� long�X "0 saveddelimiters savedDelimiters
�W 
prmt
�V 
dfnm�U 
�T .sysonwflfile    ��� null�S 0 thefile theFile
�R 
perm
�Q .rdwropenshor       file�P "0 referencenumber referenceNumber
�O 
ret �N 
�M 
TEXT�L 
0 header  
�K 
refn
�J 
wrat
�I rdwreof 
�H .rdwrwritnull���     ****
�G 
qSEL
�F 
list
�E 
kocl
�D 
cobj
�C .corecnte****       ****
�B 
pnam�A 0 thisqnumber  
�@ 
qDNa�? 0 	thisqname  
�> 
qNot�= 0 
thisqnotes  �< 0 	thisqtime  �; 0 thisqtarget  
�: 
qDur�9 &0 converttoduration convertToDuration
�8 
qTyp
�7 
qQTr
�6 
qFTr
�5 
ctxt�4 0 thisqtargetpath  �3 0 trimfilepath trimFilePath
�2 
qGMo�1 0 onecue oneCue
�0 
as  �/ 0 error_message  � �,�+�*
�, 
errn�+ 0 error_number  �*  
�. .rdwrclosnull���     ****�-  �p�)���0{*�k/s`��lvE�O�E�O�������� O_ a ,a   a j _ a ,FOa E�Y 8a a   a j _ a ,FOa E�Y *j Oa j O)ja O_ a ,E`  O*a !a "a #�a $ %E` &O_ &a 'el (E` )Oa *a +a ,a -a ._ /%a 0va 1&E` 2O_ 2a 3_ &a 4a 5a $ 6Oh*a 7,a 8&[a 9a :l ;kh  '�a <,E` =Oa >�a ?,%a @%E` AOa B�a C,%a D%E` EOa FE` GOa HE` IO)�a J,k+ KO_ f _ E` GY hO�a L,a M  (a N�a O,a <,%a P%�a O,a ?,%a Q%E` IY [�a L,a R  .�a S,a T&E` UO)_ U_  l+ VOa W_ %a X%E` IY #�a L,a Y  a Z�a [,%a \%E` IY hO_ =_ A_ E_ G_ Ia 0va 1&E` ]O_ ]_ /%a ^a Ta 3_ &a 4a 5� 6W  X _ `a a�%a b%�%�a ckv�ka $ OP[OY��O_ )j dOa e_ a ,FOPW X _ fa g�%j OPUU ascr  ��ޭ