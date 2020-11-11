local win = UIAPI:GetElement("FirstWin");
local tpoint = nil
--健康跑
function NpcFunHealth_SetUI(Type,Index)
	FirstWin_Text1:SetPosition(45,100);
	FirstWin_Text1:Visible(false);
	FirstWin_Text2:Visible(false);
	FirstWin_Text3:Visible(false);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	strDesig = ""
	win:Visible(true);

end

function NpcFunHealth_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then	------第1个页面-----
		if SubID == 1000 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1000);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 1001 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1001);
			Button:SetPosition(25,155)
			Button:Visible(true);

		elseif SubID == 1003 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1003);
			Button:SetPosition(25,175)
			Button:Visible(true);
		elseif SubID == 1004 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1004);
			Button:SetPosition(25,195)
			Button:Visible(true);
		elseif SubID == 1201 then
			FirstWin_Text1:SetText(NF_L0_H1113);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1201);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 1202 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1201);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 1218 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1218);
			Button:SetPosition(25,155)
			Button:Visible(true);
		end;
	
	elseif Index == 2 then		-------消息提示文字----------
		if SubID == 1108 then
			FirstWin_Text1:SetText(NF_L0_H1108);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1604 then
			FirstWin_Text1:SetText(NF_L0_H1107);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1284 then
			FirstWin_Text1:SetText(NF_L0_H1284);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1601 then
			FirstWin_Text1:SetText(NF_L0_H1511);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1602 then
			FirstWin_Text1:SetText(NF_L0_H1101);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1251 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1251);
			Button:SetPosition(40,350)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			FirstWin_Text1:SetText(NF_L0_H1282);
			FirstWin_Text1:SetPosition(65,135)
			FirstWin_Text1:Visible(true);
			FirstWin_Text3:SetText(NF_L0_H1283);
			FirstWin_Text3:SetPosition(120,135)
			FirstWin_Text3:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true); 
			Input13:Visible(true); 
			Input11:SetPosition(168,135);
			Input12:SetPosition(160,135);
			Input13:SetPosition(262,135);
			InputText1:SetPosition(164,136);
		elseif SubID == 1252 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1251);
			Button:SetPosition(40,300)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			FirstWin_Text1:SetText(NF_L0_H1282);
			FirstWin_Text1:SetPosition(65,135)
			FirstWin_Text1:Visible(true);
			FirstWin_Text3:SetText(NF_L0_H1283);
			FirstWin_Text3:SetPosition(120,135)
			FirstWin_Text3:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true); 
			Input13:Visible(true); 
			Input11:SetPosition(168,135);
			Input12:SetPosition(160,135);
			Input13:SetPosition(262,135);
			InputText1:SetPosition(164,136);
		elseif SubID == 1253 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1251);
			Button:SetPosition(40,350)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			FirstWin_Text1:SetText(NF_L0_H1282);
			FirstWin_Text1:SetPosition(65,135)
			FirstWin_Text1:Visible(true);
			FirstWin_Text3:SetText(NF_L0_H1283);
			FirstWin_Text3:SetPosition(120,135)
			FirstWin_Text3:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true); 
			Input13:Visible(true); 
			Input11:SetPosition(168,135);
			Input12:SetPosition(160,135);
			Input13:SetPosition(262,135);
			InputText1:SetPosition(164,136);
		elseif SubID == 1254 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1251);
			Button:SetPosition(40,350)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			FirstWin_Text1:SetText(NF_L0_H1282);
			FirstWin_Text1:SetPosition(65,135)
			FirstWin_Text1:Visible(true);
			FirstWin_Text3:SetText(NF_L0_H1283);
			FirstWin_Text3:SetPosition(120,135)
			FirstWin_Text3:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true); 
			Input13:Visible(true); 
			Input11:SetPosition(168,135);
			Input12:SetPosition(160,135);
			Input13:SetPosition(262,135);
			InputText1:SetPosition(164,136);
		elseif SubID == 1255 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1251);
			Button:SetPosition(40,350)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			FirstWin_Text1:SetText(NF_L0_H1282);
			FirstWin_Text1:SetPosition(65,135)
			FirstWin_Text1:Visible(true);
			FirstWin_Text3:SetText(NF_L0_H1283);
			FirstWin_Text3:SetPosition(120,135)
			FirstWin_Text3:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true); 
			Input13:Visible(true); 
			Input11:SetPosition(168,135);
			Input12:SetPosition(160,135);
			Input13:SetPosition(262,135);
			InputText1:SetPosition(164,136);
		elseif SubID == 1256 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1251);
			Button:SetPosition(40,350)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			FirstWin_Text1:SetText(NF_L0_H1282);
			FirstWin_Text1:SetPosition(65,135)
			FirstWin_Text1:Visible(true);
			FirstWin_Text3:SetText(NF_L0_H1283);
			FirstWin_Text3:SetPosition(120,135)
			FirstWin_Text3:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true); 
			Input13:Visible(true); 
			Input11:SetPosition(168,135);
			Input12:SetPosition(160,135);
			Input13:SetPosition(262,135);
			InputText1:SetPosition(164,136);
		elseif SubID == 1257 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1251);
			Button:SetPosition(40,350)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			FirstWin_Text1:SetText(NF_L0_H1282);
			FirstWin_Text1:SetPosition(65,135)
			FirstWin_Text1:Visible(true);
			FirstWin_Text3:SetText(NF_L0_H1283);
			FirstWin_Text3:SetPosition(120,135)
			FirstWin_Text3:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true); 
			Input13:Visible(true); 
			Input11:SetPosition(168,135);
			Input12:SetPosition(160,135);
			Input13:SetPosition(262,135);
			InputText1:SetPosition(164,136);
		elseif SubID == 1258 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1251);
			Button:SetPosition(40,350)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			FirstWin_Text1:SetText(NF_L0_H1282);
			FirstWin_Text1:SetPosition(65,135)
			FirstWin_Text1:Visible(true);
			FirstWin_Text3:SetText(NF_L0_H1283);
			FirstWin_Text3:SetPosition(120,135)
			FirstWin_Text3:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true); 
			Input13:Visible(true); 
			Input11:SetPosition(168,135);
			Input12:SetPosition(160,135);
			Input13:SetPosition(262,135);
			InputText1:SetPosition(164,136);
		elseif SubID == 1259 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1251);
			Button:SetPosition(40,350)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			FirstWin_Text1:SetText(NF_L0_H1282);
			FirstWin_Text1:SetPosition(65,135)
			FirstWin_Text1:Visible(true);
			FirstWin_Text3:SetText(NF_L0_H1283);
			FirstWin_Text3:SetPosition(120,135)
			FirstWin_Text3:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true); 
			Input13:Visible(true); 
			Input11:SetPosition(168,135);
			Input12:SetPosition(160,135);
			Input13:SetPosition(262,135);
			InputText1:SetPosition(164,136);
		elseif SubID == 1260 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1251);
			Button:SetPosition(40,350)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			FirstWin_Text1:SetText(NF_L0_H1282);
			FirstWin_Text1:SetPosition(65,135)
			FirstWin_Text1:Visible(true);
			FirstWin_Text3:SetText(NF_L0_H1283);
			FirstWin_Text3:SetPosition(120,135)
			FirstWin_Text3:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true); 
			Input13:Visible(true); 
			Input11:SetPosition(168,135);
			Input12:SetPosition(160,135);
			Input13:SetPosition(262,135);
			InputText1:SetPosition(164,136);
		elseif SubID == 1261 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1251);
			Button:SetPosition(40,350)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			FirstWin_Text1:SetText(NF_L0_H1282);
			FirstWin_Text1:SetPosition(65,135)
			FirstWin_Text1:Visible(true);
			FirstWin_Text3:SetText(NF_L0_H1283);
			FirstWin_Text3:SetPosition(120,135)
			FirstWin_Text3:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true); 
			Input13:Visible(true); 
			Input11:SetPosition(168,135);
			Input12:SetPosition(160,135);
			Input13:SetPosition(262,135);
			InputText1:SetPosition(164,136);
		elseif SubID == 1262 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1251);
			Button:SetPosition(40,350)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			FirstWin_Text1:SetText(NF_L0_H1282);
			FirstWin_Text1:SetPosition(65,135)
			FirstWin_Text1:Visible(true);
			FirstWin_Text3:SetText(NF_L0_H1283);
			FirstWin_Text3:SetPosition(120,135)
			FirstWin_Text3:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true); 
			Input13:Visible(true); 
			Input11:SetPosition(168,135);
			Input12:SetPosition(160,135);
			Input13:SetPosition(262,135);
			InputText1:SetPosition(164,136);
		elseif SubID == 1263 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1251);
			Button:SetPosition(40,350)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			FirstWin_Text1:SetText(NF_L0_H1282);
			FirstWin_Text1:SetPosition(65,135)
			FirstWin_Text1:Visible(true);
			FirstWin_Text3:SetText(NF_L0_H1283);
			FirstWin_Text3:SetPosition(120,135)
			FirstWin_Text3:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true); 
			Input13:Visible(true); 
			Input11:SetPosition(168,135);
			Input12:SetPosition(160,135);
			Input13:SetPosition(262,135);
			InputText1:SetPosition(164,136);
		elseif SubID == 1264 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1251);
			Button:SetPosition(40,350)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			FirstWin_Text1:SetText(NF_L0_H1282);
			FirstWin_Text1:SetPosition(65,135)
			FirstWin_Text1:Visible(true);
			FirstWin_Text3:SetText(NF_L0_H1283);
			FirstWin_Text3:SetPosition(120,135)
			FirstWin_Text3:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true); 
			Input13:Visible(true); 
			Input11:SetPosition(168,135);
			Input12:SetPosition(160,135);
			Input13:SetPosition(262,135);
			InputText1:SetPosition(164,136);
		elseif SubID == 1265 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1251);
			Button:SetPosition(40,350)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			FirstWin_Text1:SetText(NF_L0_H1282);
			FirstWin_Text1:SetPosition(65,135)
			FirstWin_Text1:Visible(true);
			FirstWin_Text3:SetText(NF_L0_H1283);
			FirstWin_Text3:SetPosition(120,135)
			FirstWin_Text3:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true); 
			Input13:Visible(true); 
			Input11:SetPosition(168,135);
			Input12:SetPosition(160,135);
			Input13:SetPosition(262,135);
			InputText1:SetPosition(164,136);
		elseif SubID == 1266 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1251);
			Button:SetPosition(40,350)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			FirstWin_Text1:SetText(NF_L0_H1282);
			FirstWin_Text1:SetPosition(65,135)
			FirstWin_Text1:Visible(true);
			FirstWin_Text3:SetText(NF_L0_H1283);
			FirstWin_Text3:SetPosition(120,135)
			FirstWin_Text3:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true); 
			Input13:Visible(true); 
			Input11:SetPosition(168,135);
			Input12:SetPosition(160,135);
			Input13:SetPosition(262,135);
			InputText1:SetPosition(164,136);
		elseif SubID == 1267 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1251);
			Button:SetPosition(40,350)
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			FirstWin_Text1:SetText(NF_L0_H1282);
			FirstWin_Text1:SetPosition(65,135)
			FirstWin_Text1:Visible(true);
			FirstWin_Text3:SetText(NF_L0_H1283);
			FirstWin_Text3:SetPosition(120,135)
			FirstWin_Text3:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true); 
			Input13:Visible(true); 
			Input11:SetPosition(168,135);
			Input12:SetPosition(160,135);
			Input13:SetPosition(262,135);
			InputText1:SetPosition(164,136);		
		elseif SubID == 1281 then
			FirstWin_Text2:SetText(NF_L0_H1281);
			FirstWin_Text2:Visible(true);
		elseif SubID == 1005 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_H1005);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 1006 then
			FirstWin_Text1:SetText(NF_L0_H1006);
			FirstWin_Text1:Visible(true);
		elseif SubID == 1101 then
			FirstWin_Text1:SetText(NF_L0_H1101);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);		
		elseif SubID == 1105 then
			FirstWin_Text1:SetText(NF_L0_H1105);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1106 then
			FirstWin_Text1:SetText(NF_L0_H1106);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1107 then
			FirstWin_Text1:SetText(NF_L0_H1107);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1114 then
			FirstWin_Text1:SetText(NF_L0_H1114);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);

		elseif SubID == 1219 then
			FirstWin_Text1:SetText(NF_L0_H1219);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1221 then
			FirstWin_Text1:SetText(NF_L0_H1107);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1222 then
			FirstWin_Text1:SetText(NF_L0_H1222);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1223 then
			FirstWin_Text1:SetText(NF_L0_H1223);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1111 then
			FirstWin_Text1:SetText(NF_L0_H1251);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);

		elseif SubID == 1113 then
			FirstWin_Text1:SetText(NF_L0_H1104);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1300 then
			FirstWin_Text1:SetText(NF_L0_H1300);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1400 then
			FirstWin_Text1:SetText(NF_L0_H1400);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		
		elseif SubID == 1507 then
			FirstWin_Text1:SetText(NF_L0_H1507);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1508 then
			FirstWin_Text1:SetText(NF_L0_H1508);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1509 then
			FirstWin_Text1:SetText(NF_L0_H1509);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1510 then
			FirstWin_Text1:SetText(NF_L0_H1510);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1511 then
			FirstWin_Text1:SetText(SM_Msg_01);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			
		elseif SubID > 1000000 and math.mod(SubID ,100) >=1 and math.mod(SubID ,100) <=10 then
			FirstWin_Text1:SetText(NF_L0_H1111);
			FirstWin_Text1:Visible(true);
                        FirstWin_Text1:SetPosition(45,90);
			tpoint = math.mod(SubID ,100);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText("   "..tpoint..":  "..string.format("%.3f",((SubID - tpoint)/100000))..SM_311);
			Button:SetTextFormat(0);
			if tpoint <= 5 then
                        	Button:SetPosition(25,95+tpoint*25)
			elseif tpoint > 5 then
                        	Button:SetPosition(165,95+(tpoint-5)*25)
			end;
			Button:Visible(true);
			Button:Enable(false);
                      	UIAPI:SetChecked(false,Button);
			NPCFUN:EndMessage(true);
		elseif SubID > 10000 and math.mod(SubID ,100) == 11 then
			FirstWin_Text2:SetText(NF_L0_H1117);
			FirstWin_Text2:Visible(true);
                        FirstWin_Text2:SetPosition(45,30);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(string.format("%.3f",(SubID - 11)/100000)..SM_311);
                        Button:SetPosition(45,50)
			Button:Visible(true);
			Button:Enable(false);
                      	UIAPI:SetChecked(false,Button);	
			NPCFUN:EndMessage(true);			
		elseif math.mod(SubID ,10000) == 50 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(((SubID - 50)/10000));
                        Button:SetPosition(35,135)
			Button:Visible(true);
			Button:Enable(false);
                      	UIAPI:SetChecked(false,Button);
		elseif math.mod(SubID ,10000) == 60 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(((SubID - 60)/10000));
                        Button:SetPosition(85,135)
			Button:Visible(true);
			Button:Enable(false);
                      	UIAPI:SetChecked(false,Button);
		end;
	elseif Index == 3 then		-------消息提示文字----------

		if math.mod(SubID ,10000)== 1 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(((SubID - 1)/10000)..SM_311);
			Button:SetPosition(25,150)
			Button:Visible(true);
		elseif math.mod(SubID ,10000) == 2 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(((SubID - 2)/10000)..SM_313);
			Button:SetPosition(80,150)
			Button:Visible(true);
		elseif SubID == 1102 then
			FirstWin_Text1:SetText(NF_L0_H1102);
			FirstWin_Text1:Visible(true);
			FirstWin_Text1:SetPosition(40,150)
			NPCFUN:EndMessage(true);
		elseif SubID == 1104 then
			FirstWin_Text1:SetText(NF_L0_H1104);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3202 then
			FirstWin_Text1:SetText(NF_L0_H1112);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3292 then
			FirstWin_Text1:SetText(NF_L0_H1112x);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1112 then
			FirstWin_Text1:SetText(NF_L0_H1112);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1283 then
			FirstWin_Text1:SetText(NF_L0_H1107);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1110 then
			FirstWin_Text1:SetText(NF_L0_H1107);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1401 then
			FirstWin_Text1:SetText(NF_L0_H1401);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1402 then
			FirstWin_Text1:SetText(NF_L0_H1402);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1403 then
			FirstWin_Text1:SetText(NF_L0_H1403);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1404 then
			FirstWin_Text1:SetText(NF_L0_H1404);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1405 then
			FirstWin_Text1:SetText(NF_L0_H1405);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1406 then
			FirstWin_Text1:SetText(NF_L0_H1406);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1407 then
			FirstWin_Text1:SetText(NF_L0_H1407);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1408 then
			FirstWin_Text1:SetText(NF_L0_H1408);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1409 then
			FirstWin_Text1:SetText(NF_L0_H1409);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1410 then
			FirstWin_Text1:SetText(NF_L0_H1410);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1411 then
			FirstWin_Text1:SetText(NF_L0_H1411);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1412 then
			FirstWin_Text1:SetText(NF_L0_H1412);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1413 then
			FirstWin_Text1:SetText(NF_L0_H1413);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1414 then
			FirstWin_Text1:SetText(NF_L0_H1414);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1415 then
			FirstWin_Text1:SetText(NF_L0_H1415);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1416 then
			FirstWin_Text1:SetText(NF_L0_H1416);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1417 then
			FirstWin_Text1:SetText(NF_L0_H1417);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1280 then
			FirstWin_Text1:SetText(NF_L0_H1280);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1285 then
			FirstWin_Text1:SetText(NF_L0_H1284);
			FirstWin_Text1:Visible(true);
			FirstWin_Text1:SetPosition(40,80)
			NPCFUN:EndMessage(true);
		elseif SubID == 1600 then
			FirstWin_Text1:SetText(NF_L0_H1511);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1603 then
			FirstWin_Text1:SetText(NF_L0_H1107);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 2101 then
			FirstWin_Text1:SetText(NF_L0_H1511);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3182 then
			FirstWin_Text1:SetText(NF_L0_H1112);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3252 then
			FirstWin_Text1:SetText(NF_L0_H1312);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1172 then
			FirstWin_Text1:SetText(NF_L0_H1112);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1242 then
			FirstWin_Text1:SetText(NF_L0_H1312);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1212 then
			FirstWin_Text1:SetText(NF_L0_H1112);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1512 then
			FirstWin_Text1:SetText(NF_L0_H1312);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 2100 then
			FirstWin_Text1:SetText(NF_L0_H1314);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 2400 then
			FirstWin_Text1:SetText(NF_L0_H1313);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
	
		end;
	end;
end
