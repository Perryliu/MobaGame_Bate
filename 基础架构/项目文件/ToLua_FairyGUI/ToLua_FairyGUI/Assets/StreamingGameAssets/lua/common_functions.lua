UnityFS    5.x.x 5.3.6f1       -   A   [   C  �  G�  �     � CAB-2a6596f883d0cfac77f5b4d101b47692 �  �  G�       �5.3.6f1       1   �g9�_&�����p���� ! �    O �7  �����B � � H ��  (  s1  �10  `  @ �  �  � �   \   �Q  �j  �  ` �` ` ` ` ` H `  `  �  H 	� 
� �  �m_PathName �   򄫶�����+kPCh,   �  _a@� �� _  _ _ "y` _ 0 t 	x s . �$, 
� S�  �-� 
�  
� � �  0 0 P�  ` P` � P� 9� � �   � H C P   P\K P� PP � bt �	�  �  � 0 p� � S� �n0 H ��� �!�"�#��` $` %X&� &HX'X	H (� H )� � *� SL  �� +` �@  AssetBundleS�reloadTab cFileIDk	 �Container9 bInfo p5 TIndex `Size a# � m_MainA �RuntimeCompatibility m_� ��m_Dependencies m_IsStreamedScene� # �  1�  "� ��(���F "�6�1  ���������6 ��common_functions.lua�	|	  24  
1s/s�	cinglua F /F h.bytes�	P � � $  � _�6  - � 运行平台 5 �
PlatformType = {
	IOS = "iPhone",
	Android    pWindows  �"
}

local pV Tnil;
� D Getv �
()
    if (IsNilOrEmpty(A �)) then 
  ^ �Util.GetGameY ;0 2endc ireturn< 1;
 � tIsIos(). 	� H == /.*A ? "C \8endF RF � F 
/�通用函�/�--[Comment]
s���出日志� �log(_str)y��Log(tostrin 3);
� 	R o错误R  SErrorW 	T  �"<color=#FF0000>" .. n   1"</(   0"\n  �debug.traceback(� o警告�  LWarn�   /in�  ��-- JSON / � � ���析 Json�`Decode y(_text)&ajson.d#  ,� n随机^� D G�数� �RandomInt(_leftValue, _righ 
� �4 � � _��点� OFloa� 6 p�文件操作s(c判断M ���否存在�PExist�B(_fi�  ( 3 V �字符串� (�转换时间格式  �  ：大于10，, v �返回， 小$ �前面加个 �比如：056�ToTimeForm� k� ! =+� Qf"00";�; O< 109 z K / ( Bstr  i是空 ��	c   � %or /""m �b非法� A  �龅检测的值� �LegalChaC�# e获取y长度�SChLengthq  > U��算> 1宽>  c可以$ "��' $ �，用于显示使用9 t	Wi = 1 �tempWidth = 0 �LenInByt?	#� � �while (i <=' F) doYH   PCount| ;" 2 = T4F, i)/ 
 &if6 v> 0 and k<= 127�  �   �--1字节U] Ielse� [= 192� O 223� 2� ?双� =224� /39� 3� o汉字� 4�/24�4� 4$�Yk = i +p k � 重置下一w �的索引k y ?+ 1l � �的个数（j?）�n �� j数量�!� _iA��0 .^ZLVRCNJJdg �: 待分割��  Aplit�   $--k :[7 []�S: (hE E	W
C	?"# v` & =");.	/{}e	� ] Abrt= {} PBgsub� c'[^'..� �..']+', P(w) t� .insert(rt, w);d 9 );�r�E	  I	T��换I	   0old	   e需要# 5旧& ?new& *���	eReplac4` ,D �_~"@� a ( e "e ( e  =Y f去除�
���右空格�Rrim(_m �)
	if(type 2=="
 #")� #		 - =� �	ing, "^%s*(.-)%s*$", "%1� 	� 	<?ingy)�> len 后� ���P��段�B�� r?Str�TSubTo�HGlen,5 �  S==nil�   b..."; � 3xt �9	if2(�� :5 l� ,w�,�#�  0,N(		�l�	E ?cur� �( b� 		� > � �
: \ 3			�N �Q �	P 2�S �S .39S 3�J 4� /24�  4E #		�"		�Stxt..|�!i,�
M r- 1);  x�
b�
CC			w�
w�
�
0;(\ S==len$'i �G+1;  @8F!	$
O=str$%tx�<^��据<X0排>���数点2yv�math.modf r�R��型�P��转����保护，一旦传进来�0为M �R��动�1 -11 ��至于程序异常� �Number(_n � �
-���2U 4J :ton� ! J�百分比� _PerceZ� � = ToDivis�	; 
�9 /= �/%"�@T b* 100)�%V�除法运算� r对0的  C귦值除以右�	� � ,  � 0 .   0�Z /C � �线性差� �Lerp(_from�%to
 � " �	* �	� �of /tod � m �> # U + ((� - Z) * _S� 根据当前�"t ��路径  其中v0为起点 v1为终 �a为中间y�ⴝ塞尔曲线�9 ~ dartPoity  1end   3&er �公式为B(t) = (1 - t) ^ 2 * v0 +	 5t * 0* a t /v1� 	�3ezi� �,� ,� ,� 	��a = Vector3.New(0,  USa.x =D* (Z A.x -� a H.x +� <.x) Q 
? -? $; � y� y� y~ y� y� 
y� y�	a � ��) ���期中�	���几天[1 ~ 7 =  T天 ~ :��]E�WeeksNum���os.date("%w", +�  "��� = 分:秒iSecond1秒f ��L�nWI  �
_� ? ":�� � <�w� ��	R@Arra�cGetDat�  p(GetMin� bStamp(�� -);�4 .minute� ( G �时:分�:!_M� ��Ohour��� �A!_SH �����1��期 默认����-月-日7	� �F!"��  |S q��月旆]��隔(*V_Day(^ ,M GS0  ? "-�%� /);xZ yeS	�� 	 �Oonth5 Oday)�+ ��LOHour��!f�/ =�q
� R��  6 �  � �M ;/�?/#--�S
�时分秒h$jw>)if� F ! ���
h �� ��f	�oN	���7 [
04 �.����#  > �
 Ye8
?+L �;�,��@ M�A �;@ <月@ ?Day> 
&
@  	A �@ �� ��  ,��@ 1@ +@ ��" b% =�!, 2& =\1, d#-!, �=� 4, m� � $, �� }�0事�. ���� �秒为单位�c�$*t��F'
g最大| 7Max�q  e #({71S$1,oE2030I0B09O0 })� %���  1

�� ?197� [p       