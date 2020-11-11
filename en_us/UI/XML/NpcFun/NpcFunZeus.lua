local win = UIAPI:GetElement("FirstWin");
--宙斯献礼
function NpcFunZeus_SetUI(Type,Index)
	FirstWin_Text1:SetPosition(45,100);
	FirstWin_Text1:Visible(false);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	strDesig = ""
	win:Visible(true);

end

function NpcFunZeus_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第1个页面------
		if SubID == 1000 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1000);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 100 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z100);
			Button:SetPosition(25,135)
			Button:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1200 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1200);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID ==1201 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1201);
			Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID ==101 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z101);
			Button:SetPosition(25,175)
			Button:Visible(true);
		elseif SubID == 1511 then
			FirstWin_Text1:SetText(NF_L0_Z1511);
			FirstWin_Text1:Visible(true);
		elseif SubID == 1514 then
			FirstWin_Text1:SetText(NF_L0_Z1514);
			FirstWin_Text1:Visible(true);
		elseif SubID == 2001 then
			FirstWin_Text1:SetText(NF_L0_Z2001);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 2002 then
			FirstWin_Text1:SetText(NF_L0_Z2001);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 5104 then
			FirstWin_Text1:SetText(NF_L0_Z1330);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 5105 then
			FirstWin_Text1:SetText(NF_L0_Z1300);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1510 then
			FirstWin_Text1:SetText(NF_L0_Z1305);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1509 then
			FirstWin_Text1:SetText(NF_L0_Z1301);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1001 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1001);
			Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID == 1002 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1002);
			Button:SetPosition(25,175)
			Button:Visible(true);
		elseif SubID == 1003 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1003);
			Button:SetPosition(25,195)
			Button:Visible(true);
		elseif SubID == 1 then
			FirstWin_Text1:SetText(NF_L0_Z1401);
			FirstWin_Text1:Visible(true);
		elseif SubID == 2 then
			FirstWin_Text1:SetText(NF_L0_Z1402);
			FirstWin_Text1:Visible(true);
		elseif SubID == 3 then
			FirstWin_Text1:SetText(NF_L0_Z1403);
			FirstWin_Text1:Visible(true);
		elseif SubID == 4 then
			FirstWin_Text1:SetText(NF_L0_Z1404);
			FirstWin_Text1:Visible(true);
		elseif SubID == 5 then
			FirstWin_Text1:SetText(NF_L0_Z1405);
			FirstWin_Text1:Visible(true);
		elseif SubID == 6 then
			FirstWin_Text1:SetText(NF_L0_Z1406);
			FirstWin_Text1:Visible(true);
		elseif SubID == 7 then
			FirstWin_Text1:SetText(NF_L0_Z1407);
			FirstWin_Text1:Visible(true);
		elseif SubID == 4230 then
			FirstWin_Text1:SetText(NF_L0_Z4230);
			FirstWin_Text1:Visible(true);
		elseif SubID == 4010 then
			FirstWin_Text1:SetText(NF_L0_Z4010);
			FirstWin_Text1:Visible(true);
		elseif SubID == 4040 then
			FirstWin_Text1:SetText(NF_L0_Z4040);
			FirstWin_Text1:Visible(true);
		elseif SubID == 4150 then
			FirstWin_Text1:SetText(NF_L0_Z4150);
			FirstWin_Text1:Visible(true);
		elseif SubID == 4200 then
			FirstWin_Text1:SetText(NF_L0_Z4200);
			FirstWin_Text1:Visible(true);
		elseif SubID == 4210 then
			FirstWin_Text1:SetText(NF_L0_Z4210);
			FirstWin_Text1:Visible(true);
		elseif SubID == 4211 then
			FirstWin_Text1:SetText(NF_L0_Z4211);
			FirstWin_Text1:Visible(true);
		elseif SubID == 4220 then
			FirstWin_Text1:SetText(NF_L0_Z4220);
			FirstWin_Text1:Visible(true);
		elseif SubID == 4221 then
			FirstWin_Text1:SetText(NF_L0_Z4221);
			FirstWin_Text1:Visible(true);
		elseif SubID == 3819 then
			FirstWin_Text1:SetText(NF_L0_Z3819);
			FirstWin_Text1:Visible(true);
		elseif SubID == 4231 then
			FirstWin_Text1:SetText(NF_L0_Z4231);
			FirstWin_Text1:Visible(true);
		elseif SubID == 4201 then
			FirstWin_Text1:SetText(NF_L0_Z4201);
			FirstWin_Text1:Visible(true);
		elseif SubID == 4220 then
			FirstWin_Text1:SetText(NF_L0_Z4220);
			FirstWin_Text1:Visible(true);
		elseif SubID == 3819 then
			FirstWin_Text1:SetText(NF_L0_Z3819);
			FirstWin_Text1:Visible(true);
		elseif SubID == 42303 then
			FirstWin_Text1:SetText(NF_L0_Z42303);
			FirstWin_Text1:Visible(true);
		elseif SubID == 42002 then
			FirstWin_Text1:SetText(NF_L0_Z42002);
			FirstWin_Text1:Visible(true);
		elseif SubID == 42102 then
			FirstWin_Text1:SetText(NF_L0_Z42102);
			FirstWin_Text1:Visible(true);
		elseif SubID == 42202 then
			FirstWin_Text1:SetText(NF_L0_Z42202);
			FirstWin_Text1:Visible(true);
		elseif math.mod(SubID ,1000) == 9 then
			FirstWin_Text3:SetText(NF_L0_Z1320 .. "|cFFF79709" .. ( ( (SubID - 9)/1000 - (SubID - 9)/1000%100 )/100 ) .. "|cFFFFFFFF" .. NF_L0_Z1321 .. "|cFFF79709" .. ( (SubID - 9)/1000%100 ) .. "|cFFFFFFFF" .. NF_L0_Z1322);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,120)
		end;
	elseif Index == 2 then	--第2个页面--------------
		if SubID == 1101 then
			FirstWin_Text1:SetText(NF_L0_Z1115);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);

		elseif SubID == 1105 then
			FirstWin_Text1:SetText(NF_L0_Z1105);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
                elseif SubID >= 200 and SubID <=207 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(LuaText["NF_Z_B" .. SubID]);
                        if SubID >= 205 then
			   Button:SetPosition(320,155 + (SubID - 205) * 20)
                        else
                           Button:SetPosition(25,155 + (SubID - 200) * 20)
                        end;

			Button:Visible(true);
		elseif math.mod(SubID,10000) == 6 then
			FirstWin_Text1:SetText(LuaText["NF_Z_T2"] .. ((SubID - 6)/10000 - 1) .. LuaText["NF_Z_T21"]);
			FirstWin_Text1:Visible(true);
		elseif SubID == 1106 then
			FirstWin_Text1:SetText(NF_L0_Z1106);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);

		elseif SubID == 1110 then
			FirstWin_Text1:SetText(NF_L0_Z1110);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1202 then
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true);
			Input13:Visible(true);
			Input11:SetPosition(25,130);
			Input12:SetPosition(17,130);
			Input13:SetPosition(119,130);
			InputText1:SetPosition(21,131);
			FirstWin_Text1:SetText(NF_L0_Z1202);
			FirstWin_Text1:Visible(true);
		elseif SubID == 1203 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1203);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 1204 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1204);
			Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID == 1205 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1205);
			Button:SetPosition(25,175)
			Button:Visible(true);
		elseif SubID == 1306 then
			FirstWin_Text1:SetText(NF_L0_Z1306);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);





		elseif SubID == 4511 then
			FirstWin_Text1:SetText(NF_L0_Z4511);
			FirstWin_Text1:Visible(true);
		elseif SubID == 9960 then
			FirstWin_Text1:SetText(NF_L0_Z9960);
			FirstWin_Text1:Visible(true);




		elseif SubID == 1517 then
			FirstWin_Text1:SetText(NF_L0_Z1517);
			FirstWin_Text1:Visible(true);
		elseif SubID == 2100 then
			FirstWin_Text1:SetText(NF_L0_Z1521);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 2101 then
			FirstWin_Text1:SetText(NF_L0_Z1502);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 5105 then
			FirstWin_Text1:SetText(NF_L0_Z1300);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1102 then
			FirstWin_Text1:SetText(NF_L0_Z1115);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==1005 then
			FirstWin_ItemBtn1:Visible(true);
			FirstWin_ItemBtn1:SetPosition(25,70);
			FirstWin_Text1:SetText(NF_L0_Z1005);
			FirstWin_Text1:Visible(true);
		elseif SubID ==1006 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1006);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID ==1007 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1007);
			Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID ==1008 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1008);
			Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID ==1009 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1009);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 1512 then
			FirstWin_Text1:SetText(NF_L0_Z1512);
			FirstWin_Text1:Visible(true);
		elseif SubID == 1513 then
			FirstWin_Text1:SetText(NF_L0_Z1513);
			FirstWin_Text1:Visible(true);
		end;
	elseif Index == 3 then	--第3个页面---------------------

		if SubID == 1315 then
			FirstWin_Text1:SetText(NF_L0_Z1315);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 300 then
			FirstWin_Text1:SetText(LuaText["NF_Z_T" .. SubID]);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID,10000) == 1 then
			FirstWin_Text1:SetText(LuaText["NF_Z_T3011"] .. (SubID - 1)/10000 .. LuaText["NF_Z_T3012"]);
			FirstWin_Text1:Visible(true);
		elseif math.mod(SubID,10000) == 2 then
			FirstWin_Text2:SetText(LuaText["NF_Z_T3013"] .. (SubID - 2)/10000 .. LuaText["NF_Z_T3014"]);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,110);
           		FirstWin_ItemBtn1:Visible(true);
            		FirstWin_ItemBtn1:SetPosition(25,130);
		elseif math.mod(SubID,10000) == 5 then
			FirstWin_Text1:SetText(LuaText["NF_Z_T3016"] .. (SubID - 5)/10000 .. LuaText["NF_Z_T3012"]);
			FirstWin_Text1:Visible(true);
		elseif math.mod(SubID,10000) == 4 then
			FirstWin_Text2:SetText(LuaText["NF_Z_T3013"] .. (SubID - 4)/10000 .. LuaText["NF_Z_T3017"]);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,90);
		elseif SubID == 302 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(LuaText["NF_Z_B" .. SubID]);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 1602 then
			FirstWin_Text1:SetText(NF_L0_Z1521);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 2000 then
			FirstWin_Text1:SetText(NF_L0_Z1327);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1521 then
			FirstWin_Text1:SetText(NF_L0_Z1521);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1107 then
			FirstWin_Text1:SetText(NF_L0_Z1115);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1515 then
			FirstWin_Text1:SetText(NF_L0_Z1515);
			FirstWin_Text1:Visible(true);

		elseif SubID == 1206 then
			FirstWin_Text1:SetText(NF_L0_Z1206);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==1207 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1207);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID ==1208 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1208);
			Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID ==1209 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1209);
			Button:SetPosition(25,175)
			Button:Visible(true);
		elseif SubID ==1210 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1210);
			Button:SetPosition(25,195)
			Button:Visible(true);
		elseif SubID ==1211 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1211);
			Button:SetPosition(25,215)
			Button:Visible(true);
		elseif math.mod(SubID ,100000) == 31 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1323 .. "|cff39D8B8" ..((SubID - 31) / 100000) .. "|cFFFFFFFF" .. NF_L0_Z2002);
			Button:SetPosition(25,70)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
		elseif math.mod(SubID ,10000) == 32 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1324 .. "|cff39D8B8" .. ((SubID - 32) / 10000) .. "|cFFFFFFFF" .. NF_L0_Z1326);
            		Button:SetPosition(25,90)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
		elseif SubID == 1300 then
			FirstWin_Text1:SetText(NF_L0_Z1300);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1301 then
			FirstWin_Text1:SetText(NF_L0_Z1328);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1611 then
			FirstWin_Text1:SetText(NF_L0_Z1113);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==1212 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1212);
			Button:SetPosition(40,150)
			Button:Visible(true);
		elseif SubID ==1213 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1213);
			Button:SetPosition(25,30)
			Button:Visible(true);
		elseif SubID ==1214 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1214);
			Button:SetPosition(40,210)
			Button:Visible(true);
		elseif SubID ==1215 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1215);
			Button:SetPosition(40,240)
			Button:Visible(true);
		elseif SubID ==1216 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1216);
			Button:SetPosition(40,270)
			Button:Visible(true);
		elseif SubID ==1217 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1217);
			Button:SetPosition(40,300)
			Button:Visible(true);
		elseif SubID ==1218 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1218);
			Button:SetPosition(40,330)
			Button:Visible(true);
		elseif SubID ==1219 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1219);
			Button:SetPosition(40,360)
			Button:Visible(true);
		elseif SubID ==1220 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1220);
			Button:SetPosition(40,390)
			Button:Visible(true);
		elseif SubID == 1505 then
			FirstWin_Text1:SetText(NF_L0_Z1505);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1506 then
			FirstWin_Text1:SetText(NF_L0_Z1506);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);


		elseif SubID ==4000 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1230);
            		Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID ==4001 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1234);
            		Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID ==4002 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1235);
            		Button:SetPosition(25,175)
			Button:Visible(true);
		elseif SubID ==4003 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1232);
            		Button:SetPosition(25,195)
			Button:Visible(true);
		elseif SubID ==4004 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1233);
            		Button:SetPosition(25,215)
			Button:Visible(true);
		elseif SubID ==4005 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1236);
            		Button:SetPosition(25,235)
			Button:Visible(true);
		elseif SubID ==4006 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1231);
            		Button:SetPosition(320,135)
			Button:Visible(true);
		elseif SubID == 1518 then
			FirstWin_Text1:SetText(NF_L0_Z1518);
			FirstWin_Text1:Visible(true);
		elseif SubID == 1516 then
			FirstWin_Text1:SetText(NF_L0_Z1516);
			FirstWin_Text1:Visible(true);
		elseif SubID == 1503 then
			FirstWin_Text1:SetText(NF_L0_Z1503);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1104 then
			FirstWin_Text1:SetText(NF_L0_Z1104);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1011 then
			FirstWin_Text1:SetText(NF_L0_Z1011);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1313 then
			FirstWin_Text1:SetText(NF_L0_Z1313);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,10000) == 13 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText("|cff39D8B8" .. ((SubID - 13) / 10000) .. "|cFFFFFFFF");
            		Button:SetPosition(87,47)
			Button:Visible(true);
            		Button:Enable(false);
			UIAPI:SetChecked(false,Button);
		elseif SubID == 1103 then
			FirstWin_Text1:SetText(NF_L0_Z1115);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1350 then
			FirstWin_Text1:SetText(NF_L0_Z1350);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1108 then
			FirstWin_Text1:SetText(NF_L0_Z1108);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1014 then
			FirstWin_Text1:SetText(NF_L0_Z1014);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1327 then
			FirstWin_Text1:SetText(NF_L0_Z1115);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1019 then
			FirstWin_Text1:SetText(NF_L0_Z1104);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
                elseif math.mod(SubID,1000) == 901 then
                       if SubID>9000 then
                        v_temp = tostring(SubID);
                        v_temp = string.sub(v_temp,1,1);
                        v_totalTime = tonumber(string.sub(tostring((SubID - 901)/1000),2,-1));
                        v_h = math.floor(v_totalTime/60/60)
                        v_m = math.floor((v_totalTime - v_h*60*60 )/60)
                        v_s = v_totalTime - v_h*60*60 - v_m*60
                        v_formatTime = v_h .. ":" .. v_m .. ":" .. v_s
                        if v_temp == "1" then
			    FirstWin_Text3:SetText(LuaText["NF_Z_T3020"] .. v_formatTime .. LuaText["NF_Z_T3022"]);
                        else
			    FirstWin_Text3:SetText(LuaText["NF_Z_T3021"] .. v_formatTime .. LuaText["NF_Z_T3022"]);
                        end;
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(210,110);
                       end;
                elseif math.mod(SubID,1000) == 902 then
                       if SubID>9000 then
                        v_temp = tostring(SubID);
                        v_temp = string.sub(v_temp,1,1);
                        v_totalTime = tonumber(string.sub(tostring((SubID - 902)/1000),2,-1));
                        v_h = math.floor(v_totalTime/60/60)
                        v_m = math.floor((v_totalTime - v_h*60*60 )/60)
                        v_s = v_totalTime - v_h*60*60 - v_m*60
                        v_formatTime = v_h .. ":" .. v_m .. ":" .. v_s
                        if v_temp == "1" then
			    FirstWin_Text4:SetText(LuaText["NF_Z_T3020"] .. v_formatTime .. LuaText["NF_Z_T3022"]);
                        else
			    FirstWin_Text4:SetText(LuaText["NF_Z_T3021"] .. v_formatTime .. LuaText["NF_Z_T3022"]);
                        end;
			FirstWin_Text4:Visible(true);
			FirstWin_Text4:SetPosition(145,84);
                       end;
		end;
	elseif Index == 4 then	--第4个页面---------------------

		if SubID == 5101 then
			FirstWin_Text1:SetText(NF_L0_Z1305);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 5102 then
			FirstWin_Text1:SetText(NF_L0_Z1329);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 408 then
			FirstWin_Text3:SetText(LuaText["NF_Z_T" .. SubID]);
			FirstWin_Text3:Visible(true);
            		FirstWin_Text3:SetPosition(25,175)
			NPCFUN:EndMessage(true);
		elseif SubID >= 400 and SubID <= 401 then
			FirstWin_Text1:SetText(LuaText["NF_Z_T" .. SubID]);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID >= 402 and SubID <= 403 then
			FirstWin_Text2:SetText(LuaText["NF_Z_T" .. SubID]);
			FirstWin_Text2:Visible(true);
            		FirstWin_Text2:SetPosition(25,90)
			NPCFUN:EndMessage(true);
		elseif SubID >= 404 and SubID <= 409 then --408在前面就会被处理
			FirstWin_Text1:SetText(LuaText["NF_Z_T" .. SubID]);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID,10000) == 3 then
			FirstWin_Text1:SetText(LuaText["NF_Z_T4021"] .. (SubID - 3)/10000 .. LuaText["NF_Z_T3014"]);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 900 then
			FirstWin_Text1:SetText(Msg_Bug02);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);

		elseif SubID == 1504 then
			FirstWin_Text1:SetText(NF_L0_Z1504);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1103 then
			FirstWin_Text1:SetText(NF_L0_Z1115);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);

		elseif SubID ==1230 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1230);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID ==1231 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1231);
			Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID ==1232 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1232);
			Button:SetPosition(25,175)
			Button:Visible(true);
		elseif SubID ==1233 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1233);
			Button:SetPosition(25,195)
			Button:Visible(true);
		elseif SubID ==1234 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1234);
			Button:SetPosition(25,215)
			Button:Visible(true);
		elseif SubID ==1235 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1235);
			Button:SetPosition(25,235)
			Button:Visible(true);
		elseif SubID ==1236 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Z1236);
			Button:SetPosition(320,135)
			Button:Visible(true);
		elseif SubID == 1113 then
			FirstWin_Text1:SetText(NF_L0_Z1113);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);

		elseif SubID ==3000 then
			FirstWin_ItemBtn1:Visible(true);
			FirstWin_ItemBtn1:SetPosition(25,95);
			FirstWin_Text1:SetText(NF_L0_Z1212);
			FirstWin_Text1:Visible(true);
		elseif SubID ==3001 then
			FirstWin_Text1:SetText(NF_L0_Z1213);
			FirstWin_Text1:Visible(true);
		end;
	elseif Index == 5 then	--第5个页面---------------------
		if SubID == 1115 then
			FirstWin_Text1:SetText(NF_L0_Z1115);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,10000) == 11 then
			FirstWin_Text2:SetText(NF_L0_Z1325 .. "|cff39D8B8" .. ((SubID - 11) / 10000) .. "|cFFFFFFFF" .. NF_L0_Z1326);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,90)
			NPCFUN:EndMessage(true);
		elseif SubID == 3002 then
			FirstWin_Text1:SetText(NF_L0_Z3002);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3003 then
			FirstWin_Text1:SetText(NF_L0_Z1504);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3004 then
			FirstWin_Text1:SetText(NF_L0_Z1303);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3005 then
			FirstWin_Text1:SetText(NF_L0_Z1305);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3006 then
			FirstWin_Text1:SetText(NF_L0_Z1328);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3007 then
			FirstWin_Text1:SetText(NF_L0_Z1222);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;

	end;
end
