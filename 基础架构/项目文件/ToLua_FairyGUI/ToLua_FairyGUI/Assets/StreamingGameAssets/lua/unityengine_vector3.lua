UnityFS    5.x.x 5.3.6f1          A   [   C  �  ;�  �     � CAB-69b6104388daef29a4927b6a342301d5 �  �  ;�       �5.3.6f1       1   �g9�_&�����p���� ! �    O �7  �����B � � H ��  (  s1  �10  `  @ �  �  � �   \   �Q  �j  �  ` �` ` ` ` ` H `  `  �  H 	� 
� �  �m_PathName �   򄫶�����+kPCh,   �  _a@� �� _  _ _ "y` _ 0 t 	x s . �$, 
� S�  �-� 
�  
� � �  0 0 P�  ` P` � P� 9� � �   � H C P   P\K P� PP � bt �	�  �  � 0 p� � S� �n0 H ��� �!�"�#��` $` %X&� &HX'X	H (� H )� � *� SL  �� +` �@  AssetBundleS�reloadTab cFileIDk	 �Container9 bInfo p5 TIndex `Size a# � m_MainA �RuntimeCompatibility m_� ��m_Dependencies m_IsStreamedScene� # �  1�  "� ��>9oY�w�   �*�1  ���������6 (�unityengine_vector3.lua�	�	�
1s/s�	cinglua J /J c.bytes(
T � �   V _�*  - <A
--  �Copyright (c) 2015 , 蒙占志(topameng) 
 �@gmail.comD AAll D �s reserved. �Use, modification and distribu �re subject to the "MIT License"
� >�local math  =  Racos	 .  Tsqrt    B x 4max &in #in � clamp = Mathf.C  t s %inq D &ab� b* 4gn	X 4Sig- �setmetat:) = " �rawset =	  g g 0typF   
) �d2Deg = 57.295779513082  �deg2Rad = 0.017453292519943C �S = {} |  toe�initget(' 4)

0__i�p = funcGr(t,k)
	E 5var� >  ,   B
	if P= niln!n	 9
		7 0get3  $
	7 ~7 �
			return 3(t)F 0end 0endo " 
 
� � �.New(x, y, zB r  � �x or 0, y = y Qz = z 8}
	�4(t,Z )� � t� zh_new =� ]Jcall\ox,y,z)� <� 	R:Set({ 	L 6lf.v  {  � rgGet(v) �v.x, v.y /z	6 �:Clone()5 	� � � � }� � � Distance(va, vbk �qrt((va.x - vb.x)^2 +  y y z Oz)^2i �ot(lhs, rhsf �lhs.x * r + y y z zZ �Lerp(from, to, t� -�  F0, 1s  �/ q 1(to�  b) * t, y y y z z z � �:Magnitude(b`*�# +� y z zb?Maxb � m  )j4),  y y z /z)j /inj -inj -inj /inj �Normalize(v	�+ =B�Rnum =] X S N I D�� ) c> 1e-5�/
	h0x /1 v w k �]/  ���0� �)� M# � #
  	 � &
		 	 �  / 1lseZ 	X0I 0> 0�' 
C/lf�/qrd� doI�� UAngle�{  �	(�1dot! :� -  P), -1� H�6amp� �maxLength)� � 6 > ' 6 * 3 ��e 7Mulh �
 �- WOrtho�u@, vc� -va~ �vb:Sub(vb:Pro�C(va) + f	9c =.		 i !	"vcW cW  b 	o �� ��
.MoveTowards(current, tar�	4max�eDelta)�d # =* 3 - < m&D' / ' e - =s - * �&ifb >F 7�v �9 )�
# j6�
� d
� /6 )+ 4AddJ)d� 	h * N	�l* 
�x ed��,g$ed� 
�Prhs -��dK0�Qlhs +" V � . -. -/ (nd��overSqrt2�70710678118654752440084436210484908 � ��E(vec� Rres =��0abs#  	> �5 # '  � + z z* rk = 1 /(U5resB   A-> k zb kH� xq  "	� � -a � V � 0�?res�_Rotat6
�RadiansD5max�
�elen1 = Elen2h
! �B � J0 �O �l ! /;  &to� 2�1cos< ,M	=  W> 1 -z 	�o  :)#		3f l< -1 +g 2 xi� � �. �q = Quaternion,[Axis(��,b )D r �q$BVec3m # o	�Aen1,f#		Y yB L 	!ng�� 1)�ZCross� " 	N? ()1=in(�� )=	?y#nd��v apSmoothDk
F  �Velocity, s- ETime�maxSpeed+0Infy� 3 0 =  . =S ^z(0.0001l ��72 /  
  � & *z 
! 3�(�1 �+ 0.48 * * ;235  �
V 	# C=4*� 	L 
-U M  �% (C 8 
�  	(��� � -))I2 E  -E 3C  x14�w E34 	N
q�
,S � %2),		�{ (  � �o0,0,0)�	J ( k	l�cale(a, b� �4b.x y y Hz z *z	:��Kw} 6 �6y�   �z�   b x� +��Equals(other�1==  !.xY y z �	# @Refl�ainDire B, inj1- m  ', 7 4)
	 % =C � �
6 � " �	�  ` ?, o�  ���< 1.175494e-38�	� |
	f/do� (v3� ?!v3� B  �)3�	� uOnPlanes p v (
1 � "-1  �) )� /		d ,Sl:� `omega,  s�0 !1
{mt <= 09�)U
0t >�, 'to* � v2�  1 
c �4 �:    	P2:Div�2C1 71)
>  = $ ! -M �# +�
�"v1M2L1K2�1�2m
� us�4- t  �/t
��
u
R180.0�Y
4 vQ
v�4len���[, 	?k  Asin($ ) ( }! " /�) t# � � Y ) 1 F1 'le�/v2�+ "q)`ype(q)��"number"�L?* qJ  H G� �w 
Y+> �Nd)
	�/d
� .d
� k Jbl  +Ro  yr  zu 0u  -u -u -u �Quat)	�0	=  �2� y 3 z 4N � 5P  a  6S �
 7V : 8 : 9t  310  w� +11 s +12 83
	�	((� 56))�)�(� -N  %y) 89 811),
(C +C _ � 4� d 9� 0d  zd 8& 1�  9� 0_ � :5))��� ��Pround S 	 
	� -�3 / "
	�o'  T 7 	 2_	� � ^1 j" 7* (^  ([ ,>F Q) < 0_ -1� 1��! to1%(ng�! :R"["..�D..", y bz.."]"] \ 8divW  DdJ"va�!, s 
 )P ?mulP �d�n *n *n 6* d�� �aQ5vec'd)�!ec�	� <add� /vb+�  � ?subZ -Z -Z -Z :unmZ V -W  ,  y D (eqC &a,F Q	\a - bDv�! <�	1x#�get.up 		e *) A1,0)	 - _down . 	-/ t(/ 81,0. ?lef- -. 0for
 � 60,10 _back	- 
-. Ozero. � Oone	� 	1� q�'	=�" " n�>d	=�!# s�$ �0

U�E�*.�'+
b!�'T!
{`
     