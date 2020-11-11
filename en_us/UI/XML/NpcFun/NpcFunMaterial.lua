local win = UIAPI:GetElement("FirstWin");
--
function NpcFunMaterial_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	strDesig = ""
	win:Visible(true);

end

function NpcFunMaterial_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   if SubID == 1 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_MRI1);
	      Button:Visible(true);
	      Button:SetPosition(25,135);
	   elseif SubID == 2 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_MRI2);
	      Button:Visible(true);
	      Button:SetPosition(25,155);
	   elseif SubID == 3 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_MRI3);
	      Button:Visible(true);
	      Button:SetPosition(25,175);
	   elseif SubID == 4 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_MRI4);
	      Button:Visible(true);
	      Button:SetPosition(25,195);
	   elseif SubID == 5 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_MRI5);
	      Button:Visible(true);
	      Button:SetPosition(25,215);
	   elseif SubID == 6 then
	      FirstWin_Text1:SetText(NF_L0_MRI6);
	      FirstWin_Text1:Visible(true);
	   elseif SubID == 100 then
	      FirstWin_Text1:SetText(NF_L0_MOON100);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID == 200 then
	      FirstWin_Text2:SetText(NF_L0_MOON200);
	      FirstWin_Text2:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID == 300 then
	      FirstWin_Text1:SetText(NF_L0_MOON300);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID == 400 then
	      FirstWin_Text1:SetText(NF_L0_MOON400);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	   end
	elseif Index == 2 then --服务器消息提示
	   if SubID == 11 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_MRI11);
	      Button:Visible(true);
	      Button:SetPosition(25,135);
	   elseif SubID == 41 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_MRI41);
	      Button:Visible(true);
	      Button:SetPosition(45,175);
	   elseif SubID  == 12 then
		FirstWin_Text1:SetText(NF_L0_MRI13);
		FirstWin_Text1:Visible(true);
		FirstWin_Text2:SetText(NF_L0_MRI1201);
		FirstWin_Text2:Visible(true);
		FirstWin_Text2:SetPosition(160,140);
		FirstWin_Text3:SetText(NF_L0_MRI1202);
		FirstWin_Text3:Visible(true);
		FirstWin_Text3:SetPosition(160,190);
	        InputText1:Visible(true);
	        InputText1:SetPosition(52,135);
	        Input11:Visible(true);
	        Input11:SetPosition(56,135);
	        Input12:Visible(true);
	        Input12:SetPosition(48,135);
	        Input13:Visible(true);
	        Input13:SetPosition(150,135);
	        InputText2:Visible(true);
	        InputText2:SetPosition(52,185);
	        Input21:Visible(true);
	        Input21:SetPosition(56,185);
	        Input22:Visible(true);
	        Input22:SetPosition(48,185);
	        Input23:Visible(true);
	        Input23:SetPosition(150,185);
	   elseif SubID  == 14 then
	        local Button = win:GetChild("FirstWin_Button" .. BtnID);
	        Button:SetText(NF_L0_MRI14);
	        Button:Visible(true);
	        Button:SetPosition(25,135);
	   elseif SubID  == 15 then
	        local Button = win:GetChild("FirstWin_Button" .. BtnID);
	        Button:SetText(NF_L0_MRI15);
	        Button:Visible(true);
	        Button:SetPosition(25,155);
	   elseif SubID  == 16 then
		FirstWin_Text1:SetText(NF_L0_MRI160);
		FirstWin_Text1:Visible(true);
	   elseif SubID  == 17 then
		FirstWin_Text1:SetText(NF_L0_MRI170);
		FirstWin_Text1:Visible(true);
	   elseif SubID  == 21 then
		FirstWin_Text1:SetText(NF_L0_MRI12);
		FirstWin_Text1:Visible(true);
	   elseif SubID  == 1010 then
		FirstWin_Text1:SetText(NF_L0_MRI1010);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 1020 then
		FirstWin_Text1:SetText(NF_L0_MRI1020);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 1030 then
		FirstWin_Text1:SetText(NF_L0_MRI1030);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 1050 then
		FirstWin_Text1:SetText(NF_L0_MRI1050);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 1060 then
		FirstWin_Text1:SetText(NF_L0_MRI1060);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 1070 then
		FirstWin_Text1:SetText(NF_L0_MRI1070);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 1080 then
		FirstWin_Text1:SetText(NF_L0_MRI1080);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 1090 then
		FirstWin_Text1:SetText(NF_L0_MRI1090);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 1100 then
		FirstWin_Text1:SetText(NF_L0_MRI1070);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 1110 then
		FirstWin_Text1:SetText(NF_L0_MRI1080);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 1120 then
		FirstWin_Text1:SetText(NF_L0_MRI1090);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 1130 then
		FirstWin_Text1:SetText(NF_L0_MRI1130);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 1200 then
		FirstWin_Text1:SetText(NF_L0_MRI1200);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 1210 then
		FirstWin_Text1:SetText(NF_L0_MRI1210);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 1220 then
		FirstWin_Text1:SetText(NF_L0_MRI1220);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID/10000  >= 1 then
		mou= string.format("%d",SubID/10000);
		day = string.format("%d",(SubID-mou*10000)/100);
		hour =SubID-mou*10000-day*100;
		FirstWin_Text1:SetText(NF_L0_MRI5001..(mou)..NF_L0_MRI5002..(day)..NF_L0_MRI5003..(hour)..NF_L0_MRI5004);
		FirstWin_Text1:Visible(true);
                --NPCFUN:EndMessage(true);
	   elseif SubID  == 3100 then
		FirstWin_Text1:SetText(NF_L0_MRI3100);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 3200 then
		FirstWin_Text1:SetText(NF_L0_MRI3200);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 3300 then
		FirstWin_Text1:SetText(NF_L0_MRI3300);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 3400 then
		FirstWin_Text1:SetText(NF_L0_MRI3400);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
           end
	elseif Index == 3 then --服务器消息提示
	   if SubID  == 2010 then
		FirstWin_Text1:SetText(NF_L0_MRI2010);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 2020 then
		FirstWin_Text1:SetText(NF_L0_MRI2020);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 1040 then
		FirstWin_Text1:SetText(NF_L0_MRI1041);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 2030 then
		FirstWin_Text1:SetText(NF_L0_MRI2030);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 2040 then
		FirstWin_Text1:SetText(NF_L0_MRI2040);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 2050 then
		FirstWin_Text1:SetText(NF_L0_MRI2050);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 2060 then
		FirstWin_Text1:SetText(NF_L0_MRI2060);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 2190 then
		FirstWin_Text1:SetText(NF_L0_MRI1130);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 2070 then
		FirstWin_Text1:SetText(NF_L0_MRI2070);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 2080 then
		FirstWin_Text1:SetText(NF_L0_MRI1210);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 2090 then
		FirstWin_Text1:SetText(NF_L0_MRI2090);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 2100 then
		FirstWin_Text1:SetText(NF_L0_MRI1210);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 2110 then
		FirstWin_Text1:SetText(NF_L0_MRI2110);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 2120 then
		FirstWin_Text1:SetText(NF_L0_MRI2120);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 2130 then
		FirstWin_Text1:SetText(NF_L0_MRI2130);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 2140 then
		FirstWin_Text1:SetText(NF_L0_MRI1040);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 2150 then
		FirstWin_Text1:SetText(NF_L0_MRI2150);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 2160 then
		FirstWin_Text1:SetText(NF_L0_MRI2160);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   elseif SubID  == 2990 then
		FirstWin_Text2:SetText(NF_L0_MRI1201);
		FirstWin_Text2:Visible(true);
		FirstWin_Text2:SetPosition(160,140);
		FirstWin_Text3:SetText(NF_L0_MRI1202);
		FirstWin_Text3:Visible(true);
		FirstWin_Text3:SetPosition(160,190);
	        InputText1:Visible(true);
	        InputText1:SetPosition(52,135);
	        Input11:Visible(true);
	        Input11:SetPosition(56,135);
	        Input12:Visible(true);
	        Input12:SetPosition(48,135);
	        Input13:Visible(true);
	        Input13:SetPosition(150,135);
	        InputText2:Visible(true);
	        InputText2:SetPosition(52,185);
	        Input21:Visible(true);
	        Input21:SetPosition(56,185);
	        Input22:Visible(true);
	        Input22:SetPosition(48,185);
	        Input23:Visible(true);
	        Input23:SetPosition(150,185);
                FirstWin_ButtonA3:Visible(true);
                FirstWin_ButtonA3:SetText(NF_L0_MRI2990);
		FirstWin_ButtonA3:SetPosition(320,240);
                FirstWin_ButtonA1:Visible(false);
                FirstWin_ButtonA2:Visible(false);
	   end

	end;

end

