local win = UIAPI:GetElement("FirstWin");
--婚礼助兴
function NpcFunCongrate_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunCongrate_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   if SubID  == 1 then
		FirstWin_Text1:SetText(NF_L0_CONG1000);
		FirstWin_Text1:Visible(true);
		local Button = win:GetChild("FirstWin_Button" .. BtnID);
		Button:SetText(NF_L0_CONG1);
	        Button:Visible(true);
	        Button:SetPosition(25,135);
	   elseif SubID  == 2 then
		local Button = win:GetChild("FirstWin_Button" .. BtnID);
		Button:SetText(NF_L0_CONG2);
	        Button:Visible(true);
	        Button:SetPosition(25,155);
	   end;
	elseif Index == 2 then --服务器消息提示
           if SubID == 11 then
		FirstWin_Text1:SetText(NF_L0_CONG1200);
		FirstWin_Text1:Visible(true);
		local Button = win:GetChild("FirstWin_Button" .. BtnID);
		Button:SetText(NF_L0_CONG11);
	        Button:Visible(true);
	        Button:SetPosition(25,135);
           elseif SubID == 12 then
		local Button = win:GetChild("FirstWin_Button" .. BtnID);
		Button:SetText(NF_L0_CONG12);
	        Button:Visible(true);
	        Button:SetPosition(25,155);
           elseif SubID == 21 then
		FirstWin_Text1:SetText(NF_L0_CONG1300);
		FirstWin_Text1:Visible(true);
		local Button = win:GetChild("FirstWin_Button" .. BtnID);
		Button:SetText(NF_L0_CONG21);
	        Button:Visible(true);
	        Button:SetPosition(25,135);
           elseif SubID == 22 then
		local Button = win:GetChild("FirstWin_Button" .. BtnID);
		Button:SetText(NF_L0_CONG22);
	        Button:Visible(true);
	        Button:SetPosition(25,155);
           elseif SubID == 23 then
		local Button = win:GetChild("FirstWin_Button" .. BtnID);
		Button:SetText(NF_L0_CONG23);
	        Button:Visible(true);
	        Button:SetPosition(25,185);
           elseif SubID == 24 then
		local Button = win:GetChild("FirstWin_Button" .. BtnID);
		Button:SetText(NF_L0_CONG24);
	        Button:Visible(true);
	        Button:SetPosition(25,215);
           elseif SubID == 1100 then
		FirstWin_Text1:SetText(NF_L0_CONG1100);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
           end;
	elseif Index == 3 then --服务器消息提示
           if SubID == 31 then
		FirstWin_Text1:SetText(NF_L0_CONG3100);
		FirstWin_Text1:Visible(true);
		FirstWin_Text2:SetText(NF_L0_CONG3200);
		FirstWin_Text2:Visible(true);
		FirstWin_Text2:SetPosition(25,135);
		FirstWin_Text3:SetText(NF_L0_CONG3300);
		FirstWin_Text3:Visible(true);
		FirstWin_Text3:SetPosition(25,205);
		FirstWin_ItemBtn1:Visible(true);
		FirstWin_ItemBtn1:SetPosition(32,155);
		InputText1:Visible(true);
		InputText1:SetPosition(40,230);
		Input11:Visible(true);
		Input11:SetPosition(40,225);
		Input12:Visible(true);
		Input12:SetPosition(32,225);
		Input13:Visible(true);
		Input13:SetPosition(134,225);
           elseif SubID == 41 then
		FirstWin_Text1:SetText(NF_L0_CONG4100);
		FirstWin_Text1:Visible(true);
		FirstWin_Text2:SetText(NF_L0_CONG4200);
		FirstWin_Text2:Visible(true);
		FirstWin_Text2:SetPosition(25,135);
		FirstWin_Text3:SetText(NF_L0_CONG3300);
		FirstWin_Text3:Visible(true);
		FirstWin_Text3:SetPosition(25,205);
		FirstWin_ItemBtn1:Visible(true);
		FirstWin_ItemBtn1:SetPosition(32,155);
		InputText1:Visible(true);
		InputText1:SetPosition(40,230);
		Input11:Visible(true);
		Input11:SetPosition(40,225);
		Input12:Visible(true);
		Input12:SetPosition(32,225);
		Input13:Visible(true);
		Input13:SetPosition(134,225);
           elseif SubID == 2200 then
		FirstWin_Text1:SetText(NF_L0_CONG2200);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
           elseif SubID == 2500 then
		FirstWin_Text1:SetText(NF_L0_CONG2500);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
           elseif SubID == 2700 then
		FirstWin_Text1:SetText(NF_L0_CONG2700);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
           elseif SubID == 300 then
		FirstWin_Text1:SetText(NF_L0_CONG300);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
			elseif SubID == 999 then
				FirstWin_Text1:SetText(Level_limit);
				FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
           end;
	elseif Index == 4 then --服务器消息提示
           if SubID == 2100 then
		FirstWin_Text1:SetText(NF_L0_CONG2100);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
           elseif SubID == 2200 then
		FirstWin_Text1:SetText(NF_L0_CONG2200);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
           elseif SubID == 2300 then
		FirstWin_Text1:SetText(NF_L0_CONG2300);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
           elseif SubID == 2400 then
		FirstWin_Text1:SetText(NF_L0_CONG2400);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
           elseif SubID == 2500 then
		FirstWin_Text1:SetText(NF_L0_CONG2500);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
           elseif SubID == 2600 then
		FirstWin_Text1:SetText(NF_L0_CONG2600);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
           elseif SubID == 2800 then
		FirstWin_Text1:SetText(NF_L0_CONG2800);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
           elseif SubID == 2900 then
		FirstWin_Text1:SetText(NF_L0_CONG2900);
		FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
	   end;
	end;

end
