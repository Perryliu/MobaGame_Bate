UnityFS    5.x.x 5.3.6f1       #   A   [   C  �  )�  
�     � CAB-9197e924e0e3fe6bb48a3fe05563743f �  �  )�       �5.3.6f1       1   �g9�_&�����p���� ! �    O �7  �����B � � H ��  (  s1  �10  `  @ �  �  � �   \   �Q  �j  �  ` �` ` ` ` ` H `  `  �  H 	� 
� �  �m_PathName �   򄫶�����+kPCh,   �  _a@� �� _  _ _ "y` _ 0 t 	x s . �$, 
� S�  �-� 
�  
� � �  0 0 P�  ` P` � P� 9� � �   � H C P   P\K P� PP � bt �	�  �  � 0 p� � S� �n0 H ��� �!�"�#��` $` %X&� &HX'X	H (� H )� � *� SL  �� +` �@  AssetBundleS�reloadTab cFileIDk	 �Container9 bInfo p5 TIndex `Size a# � m_MainA �RuntimeCompatibility m_� ��m_Dependencies m_IsStreamedScene� # �   �� ���7`�?� �1� ���������5 x
�game_framework_net �manager.lua�	�	  2I  ,
1s/s�	cinglua  ^ /^ /V /^ e.bytesP
h � �    �! ��  require "G� F� 8Net Type"
.  . �ServiceId"

 M� P = {} �local function ReConnect(_server� p)
    n m C.NetL .mInst:; P, truA ?endo  #On4 �ed(_socketm �logError("服务器类型 --> " .. tostring: &.S�    �" <-- 连接成功");^ �Dispatcher.Brocast(c.� $, � ;� ODisc� Mb断开� � � � � OFail�M`失败Y �错误信息 ---O � �Message)� �� ,Re	��线重连"� -Re� c ��-- 缓存转字符串� �BufferToS� Dvalu� 2if  � == nil then   �return ""�x  W 	� �
获取 Protobuf 的数据� �GetEncode� 1(_b UArray� 2 RtempV� �  � 1 " ~� �and typeN  �  "t�"� \  -..BO V[1]);C �for i = 2, #� &do% l 
O"Ω"t it p		 	�p~!.ea�("com.ftkj. � .MoData", { msg� 9; }��[Comment]
u ,X  ：�
& �主机IP& KhostF R��口F u_port
2
�.�S !, ; �G _AsyncL ,�,,f,qWf Logic
8Mo (0 g�.< m� f添加� 监听事件ECCID  � s		D �回调函数! �AddListener�] %, H A6not 3 ort)  �" t&		b� X �e2 �G;
	��� ;���J y 
� �����o移除��oRemove�r
� �D� �'���U� �%	�/���
� O��OnCloseAndClearTcp( � g逻辑� �  5/n(� &�� d发送)� @Send�	�D/if� /or� *�� / E�	�
�log("Request SID:_� /);w2LuaCZj
"). I�0�'--K �   : 协议	$ ?��数组，格式为：{*3，3q}，为��时默认� 7空D	� 7<�[
J ^�b是否� 'IsT�@�0E o, falsH	B� t 
� � =>R��析
3的F� �ReadDefault$Pssion�x1 ! =E > "M D	@ �> .{ ;0Ag  � " =?�CodeParse.GetTarget (Q hbigNumg'ifH ;= 1j �QEvent~AShow~ �TitleBox,� 	?lse] !�_ &nd �9 �# 7%�IsNormal?���0�rue;
end    