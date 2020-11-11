local win = UIAPI:GetElement("FirstWin");
--副本
function NpcFunMoon_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end
function NpcFunMoon_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then---第一个页面
		if SubID == 1 then
			FirstWin_Text1:SetText(NF_L0_MOON1);
			FirstWin_Text1:Visible(true);
		elseif SubID == 2 then
			FirstWin_Text2:SetText(NF_L0_MOON2);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(45,235);
		elseif SubID == 200 then
			FirstWin_Text1:SetText(NF_L0_MSER102);
			FirstWin_Text1:Visible(true);
		elseif SubID == 3 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MOON3);
			Button:SetPosition(60,290)
			Button:Visible(true);	
		elseif SubID == 4 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MOON4);
			Button:SetPosition(60,315)
			Button:Visible(true);	
		elseif SubID == 5 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MOON5);
			Button:SetPosition(60,340)
			Button:Visible(true);	
		elseif SubID == 6 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MOON6);
			Button:SetPosition(60,365)
			Button:Visible(true);	
		end;
	elseif Index == 2 then    ----第二个页面
		if SubID == 1000 then
			FirstWin_Text1:SetText(NF_L0_MOON1000);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1001 then
			FirstWin_Text1:SetText(NF_L0_MOON1001);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1002 then
			FirstWin_Text1:SetText(NF_L0_MOON1002);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1003 then
			FirstWin_Text1:SetText(NF_L0_MOON1003);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1004 then
			FirstWin_Text1:SetText(NF_L0_MOON1004);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	end;
end