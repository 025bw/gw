local win = UIAPI:GetElement("FirstWin");
local textlis ={}
--传送
function NpcFunTranmit_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end
--配置UI窗体信息生成自己想要的界面
function NpcFunTranmit_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
		if SubID== 1 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_1);
			Button:Visible(true);
		elseif SubID == 10001 then
			FirstWin_Text1:SetText(NF_L0_10004);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 10002 then
			FirstWin_Text1:SetText(NF_L0_10002);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 10003 then
			FirstWin_Text1:SetText(NF_L0_10003);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1600 then
			FirstWin_Text1:SetText(NF_L0_1600);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 2 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_2);
			Button:Visible(true);
		elseif SubID == 3 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_3);
			Button:Visible(true);
		elseif SubID == 4 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_4);
			Button:Visible(true);
		elseif SubID == 5 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_5);
			Button:Visible(true);
		elseif SubID == 6 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_6);
			Button:Visible(true);
		elseif SubID == 7 then	--新传送
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_207);
			Button:Visible(true);
		elseif SubID == 8 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_208);
			Button:Visible(true);
		elseif SubID == 9 then	--温泉关
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_209);
			Button:Visible(true);
		elseif SubID == 10 then	--底比斯
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_212);
			Button:Visible(true);
		elseif SubID == 11 then	--迈锡尼
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_213);
			Button:Visible(true);
		elseif SubID == 1001 then --竞技场
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_1001);
			Button:Visible(true);
		elseif SubID == 1002 then --前线战场
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_1002);
			Button:Visible(true);
		elseif SubID == 1005 then --前线战场回雅典
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_1005);
			Button:Visible(true);
		elseif SubID == 1006 then --前线战场回斯巴达
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_1006);
			Button:Visible(true);
		elseif SubID >= 100  and SubID<=111 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
                        textlis={NF_L0_168,NF_L0_169,NF_L0_170,NF_L0_171,NF_L0_172,NF_L0_173,NF_L0_174,NF_L0_175,NF_L0_176,NF_L0_177,NF_L0_178,NF_L0_179}
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(textlis[SubID-99]);
			Button:Visible(true);
		elseif SubID >= 10 and SubID <=21 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
                        textlis ={NF_L0_180,NF_L0_181,NF_L0_182,NF_L0_183,NF_L0_184,NF_L0_185,NF_L0_186,NF_L0_187,NF_L0_188,NF_L0_189,NF_L0_190,NF_L0_191}
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(textlis[SubID-9]);
			Button:Visible(true);
		elseif SubID >= 50 and SubID <= 61 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
                        textlis = {NF_L0_192,NF_L0_193,NF_L0_194,NF_L0_195,NF_L0_196,NF_L0_197,NF_L0_198,NF_L0_199,NF_L0_200,NF_L0_201,NF_L0_202,NF_L0_203}
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(textlis[SubID-49]);
			Button:Visible(true);
 		elseif SubID == 200 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
 			local Button = win:GetChild("FirstWin_Button" .. BtnID);
 			Button:SetText(NF_L0_204);
 			Button:Visible(true);
 		elseif SubID == 201 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
 			local Button = win:GetChild("FirstWin_Button" .. BtnID);
 			Button:SetText(NF_L0_205);
 			Button:Visible(true);
		elseif SubID == 202 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_29);
			Button:Visible(true);
		elseif SubID == 1202 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_29X);
			Button:Visible(true);
		elseif SubID == 203 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_206);
			Button:Visible(true);
		elseif SubID == 1203 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_206X);
			Button:Visible(true);
		elseif SubID == 210 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_210);
			Button:Visible(true);
		elseif SubID == 1210 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_210X);
			Button:Visible(true);

		elseif SubID == 218 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_218);
			Button:Visible(true);
		elseif SubID == 1218 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_218X);
			Button:Visible(true);
		elseif SubID == 300 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_30);
			Button:Visible(true);
		elseif SubID == 301 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_30);
			Button:Visible(true);
		elseif SubID == 500 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_500);
			Button:Visible(true);
		elseif SubID == 1500 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_500X);
			Button:Visible(true);
		elseif SubID == 501 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_501);
			Button:Visible(true);
		elseif SubID == 1501 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_501X);
			Button:Visible(true);
		elseif SubID == 600 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_LI600);
			Button:Visible(true);
		elseif SubID == 700 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_700);
			Button:Visible(true);
		elseif SubID == 900 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_TR800);
			Button:Visible(true);
		elseif SubID == 1700 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_700X);
			Button:Visible(true);
		elseif SubID == 701 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_701);
			Button:Visible(true);
		elseif SubID == 1701 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_701X);
			Button:Visible(true);
		elseif SubID == 800 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_800);
			Button:Visible(true);
                        Button:SetPosition(25,95);
		elseif SubID == 801 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_801);
			Button:Visible(true);
                        Button:SetPosition(25,115);
		elseif SubID == 802 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_802);
			Button:Visible(true);
                        Button:SetPosition(25,135);
		elseif SubID == 803 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_803);
			Button:Visible(true);
                        Button:SetPosition(25,155);
		elseif SubID == 804 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_804);
			Button:Visible(true);
                        Button:SetPosition(25,175);
		elseif SubID == 805 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_805);
			Button:Visible(true);
                        Button:SetPosition(25,195);
		elseif SubID == 810 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_810);
			Button:Visible(true);
                        Button:SetPosition(25,95);
		elseif SubID == 811 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_811);
			Button:Visible(true);
                        Button:SetPosition(25,115);
		elseif SubID == 812 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_812);
			Button:Visible(true);
                        Button:SetPosition(25,135);
		elseif SubID == 813 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_813);
			Button:Visible(true);
                        Button:SetPosition(25,155);
		elseif SubID == 814 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_814);
			Button:Visible(true);
                        Button:SetPosition(25,175);
		elseif SubID == 815 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_815);
			Button:Visible(true);
                        Button:SetPosition(25,195);
		elseif SubID == 560 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_560);
			Button:Visible(true);
		elseif SubID == 561 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_561);
			Button:Visible(true);
		elseif SubID == 320 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y320);
			Button:Visible(true);
		elseif SubID == 321 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y321);
			Button:Visible(true);
		elseif SubID == 322 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y322);
			Button:Visible(true);
		elseif SubID == 323 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y323);
			Button:Visible(true);
		elseif SubID == 324 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y324);
			Button:Visible(true);
		elseif SubID == 8002 then
			FirstWin_Text1:SetText(NF_L0_Y8002);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 251 then
			FirstWin_Text1:SetText(NF_L0_Y8005);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y8003);
			Button:Visible(true);
		elseif SubID == 1251 then
			FirstWin_Text1:SetText(NF_L0_Y8005);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y8003X);
			Button:Visible(true);
		elseif SubID == 252 then
			FirstWin_Text1:SetText(NF_L0_Y8005);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y8003);
			Button:Visible(true);
		elseif SubID == 1252 then
			FirstWin_Text1:SetText(NF_L0_Y8005);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y8003X);
			Button:Visible(true);
		elseif SubID == 274 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y274);
			Button:Visible(true);
		elseif SubID == 1274 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y274X);
			Button:Visible(true);
		elseif SubID == 282 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y8004);
			Button:Visible(true);
		elseif SubID == 1282 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y8004X);
			Button:Visible(true);
		elseif SubID == 283 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_THWAR01);
			Button:Visible(true);
		elseif SubID == 1283 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_THWAR01);
			Button:Visible(true);
		elseif SubID == 253 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y253);
			Button:Visible(true);
		elseif SubID == 254 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y254);
			Button:Visible(true);
		elseif SubID == 255 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y254);
			Button:Visible(true);
		elseif SubID == 256 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y254);
			Button:Visible(true);
		elseif SubID == 257 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y254);
			Button:Visible(true);
		elseif SubID == 258 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y253);
			Button:Visible(true);
		elseif SubID == 259 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y253);
			Button:Visible(true);
		elseif SubID == 260 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y253);
			Button:Visible(true);
		elseif SubID == 261 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y254);
			Button:Visible(true);
		elseif SubID == 262 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y254);
			Button:Visible(true);
		elseif SubID == 263 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y254);
			Button:Visible(true);
		elseif SubID == 264 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y253);
			Button:Visible(true);
		elseif SubID == 265 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y253);
			Button:Visible(true);
		elseif SubID == 266 then
			FirstWin_Text1:SetText(NF_L0_001);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y253);
			Button:Visible(true);
		elseif SubID == 270 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_270);
			Button:Visible(true);
		elseif SubID == 271 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_271);
			Button:Visible(true);
		elseif SubID == 650 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_650);
			Button:Visible(true);
		elseif SubID == 651 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_651);
			Button:Visible(true);
		elseif SubID == 652 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_652);
			Button:Visible(true);
		elseif SubID == 653 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_653);
			Button:Visible(true);
		elseif SubID == 654 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_654);
			Button:Visible(true);
		elseif SubID == 655 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_655);
			Button:Visible(true);
		elseif SubID == 656 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_656);
			Button:Visible(true);
		elseif SubID == 657 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_657);
			Button:Visible(true);
		elseif SubID == 658 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_658);
			Button:Visible(true);
		elseif SubID == 659 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_659);
			Button:Visible(true);
		elseif SubID == 660 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_660);
			Button:Visible(true);
		elseif SubID == 661 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_661);
			Button:Visible(true);
		end;
	elseif Index == 2 then
		if SubID == 1000 then
			FirstWin_Text1:SetText(NF_L0_32);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);

		elseif SubID == 1003 then --前线战场
			FirstWin_Text1:SetText(NF_L0_1003);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1004 then --前线战场
			FirstWin_Text1:SetText(NF_L0_1004);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);

		elseif SubID == 200 then
			FirstWin_Text1:SetText(NF_L0_211);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_205);
                        Button:SetPosition(25,135);
			Button:Visible(true);
		elseif SubID == 201 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_204);
                        Button:SetPosition(25,155);
			Button:Visible(true);

		elseif SubID >= 202 and SubID <=205 then
			FirstWin_Text1:SetText(LuaText["LINE_B1"]);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);

		elseif SubID == 272 then
			FirstWin_Text1:SetText(NF_L0_2720);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y272);
			Button:Visible(true);
		elseif SubID == 273 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y273);
			Button:Visible(true);
		elseif SubID == 1001 then
			FirstWin_Text1:SetText(NF_L0_33);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 2001 then
			FirstWin_Text1:SetText(NF_L0_34);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 1009 then
			FirstWin_Text1:SetText(NF_L0_35);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 1010 then
			FirstWin_Text1:SetText(NF_L0_36);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 1120 then
			FirstWin_Text1:SetText(NF_L0_036);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 1200 then
			FirstWin_Text1:SetText(NF_L0_37);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 1111 then
			FirstWin_Text1:SetText(NF_L0_38);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 1112 then
			FirstWin_Text1:SetText(NF_L0_31);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 1113 then
			FirstWin_Text1:SetText(NF_L0_1113);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 1114 then
			FirstWin_Text1:SetText(NF_L0_1114);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 2700 then
			FirstWin_Text1:SetText(NF_L0_2700);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 2701 then
			FirstWin_Text1:SetText(NF_L0_2701);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 2702 then
			FirstWin_Text1:SetText(NF_L0_2702);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 2703 then
			FirstWin_Text1:SetText(NF_L0_2703);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 2704 then
			FirstWin_Text1:SetText(NF_L0_2704);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 2705 then
			FirstWin_Text1:SetText(NF_L0_2705);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 2706 then
			FirstWin_Text1:SetText(NF_L0_2706);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 512 then
			FirstWin_Text1:SetText(NF_L0_512);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 8000 then
			FirstWin_Text1:SetText(NF_L0_Y8000);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 8001 then
			FirstWin_Text1:SetText(NF_L0_Y8001);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 7001 then
			FirstWin_Text1:SetText(NF_L0_Y7001);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 7002 then
			FirstWin_Text1:SetText(NF_L0_Y7002);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 7004 then
			FirstWin_Text1:SetText(NF_L0_Y7004);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 7005 then
			FirstWin_Text1:SetText(NF_L0_Y7005);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 1569 then
			FirstWin_Text1:SetText(NF_L0_1569);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 1019 then
			FirstWin_Text1:SetText(NF_L0_1019);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 3001 then
			FirstWin_Text1:SetText(NF_L0_3001);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3002 then
			FirstWin_Text1:SetText(NF_L0_3002);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 2727 then
			FirstWin_Text1:SetText(NF_L0_2727);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 7101 then
			FirstWin_Text1:SetText(NF_L0_THWAR02);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 7102 then
			FirstWin_Text1:SetText(NF_L0_THWAR04);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 2801 then
			FirstWin_Text1:SetText(NF_L0_TR2801);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 2802 then
			FirstWin_Text1:SetText(NF_L0_TR2802);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3601 then
			FirstWin_Text1:SetText(NF_L0_GT3601);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3602 then
			FirstWin_Text1:SetText(NF_L0_GT3602);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;

	elseif Index == 3 then
		if SubID == 7000 then
			FirstWin_Text1:SetText(NF_L0_7000);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);

		elseif SubID == 300 then
			FirstWin_Text1:SetText(LuaText["LINE_B1"]);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);

		elseif SubID == 1009 then
			FirstWin_Text1:SetText(NF_L0_35);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);

		elseif SubID == 1111 then
			FirstWin_Text1:SetText(NF_L0_38);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);

		end;

	end;
end

function NpcFunTranmit_SetMsg(Type,Index,PreSubID,SubID)
	if SubID== 700 then
		FirstWin_Text1:SetText(NF_L0_TS700);
		FirstWin_Text1:Visible(true);
		NPCFUN:HaveMessageBox(true);
	elseif SubID== 701 then
		FirstWin_Text1:SetText(NF_L0_TS701);
		FirstWin_Text1:Visible(true);
		NPCFUN:HaveMessageBox(true);
	elseif SubID== 252 or  SubID== 251  or SubID== 273 then
		FirstWin_Text1:SetText(NF_L0_TS252);
		FirstWin_Text1:Visible(true);
		NPCFUN:HaveMessageBox(true);
	elseif SubID== 500 then
		FirstWin_Text1:SetText(NF_L0_TS500);
		FirstWin_Text1:Visible(true);
		NPCFUN:HaveMessageBox(true);
	elseif SubID == 202 then
		FirstWin_Text1:SetText(NF_L0_TS202);
		FirstWin_Text1:Visible(true);
		NPCFUN:HaveMessageBox(true);
	elseif SubID == 203 then
		FirstWin_Text1:SetText(NF_L0_TS203);
		FirstWin_Text1:Visible(true);
		NPCFUN:HaveMessageBox(true);
	elseif SubID == 501 then
		FirstWin_Text1:SetText(NF_L0_TS501);
		FirstWin_Text1:Visible(true);
		NPCFUN:HaveMessageBox(true);
	elseif SubID == 500000 then
		FirstWin_Text1:SetText(NF_L0_106);
		FirstWin_Text1:Visible(true);
		NPCFUN:HaveMessageBox(true);
	elseif SubID == 600000 then
		FirstWin_Text1:SetText(NF_L0_107);
		FirstWin_Text1:Visible(true);
		NPCFUN:HaveMessageBox(true);
	end;
end
