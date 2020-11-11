local win = UIAPI:GetElement("FirstWin");
--副本
function NpcFunMoon0_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end
function NpcFunMoon0_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
		if SubID == 1 then
			FirstWin_Text1:SetText(NF_L0_MOONF_TEXT1);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MOONF_BUTTON1);
			Button:SetPosition(40,170)
			Button:Visible(true);
		elseif SubID == 2 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MOONF_BUTTON2);
			Button:SetPosition(40,190)
			Button:Visible(true);
		elseif SubID == 3 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MOONF_BUTTON3);
			Button:SetPosition(40,210)
			Button:Visible(true);
		elseif SubID == 4 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MOONF_BUTTON4);
			Button:SetPosition(40,230)
			Button:Visible(true);
		end
	elseif Index == 2 then---第一个页面
		if SubID == 100 then
			FirstWin_Text1:SetText(NF_L0_MOONF0100);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MOONFF100);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 110 then
			FirstWin_Text1:SetText(NF_L0_MOONF1100);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MOONFF100);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 120 then
			FirstWin_Text1:SetText(NF_L0_MOONF2100);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MOONFF100);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 130 then
			FirstWin_Text1:SetText(NF_L0_MOONF3100);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MOONFF100);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 101 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MOON101);
			Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID == 102 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MOON102);
			Button:SetPosition(25,175)
			Button:Visible(true);
		elseif SubID == 103 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MOON103);
			Button:SetPosition(25,195)
			Button:Visible(true);
		end;
	elseif Index == 3 then    ----第二个页面
		if SubID == 900 then
			FirstWin_Text1:SetText(NF_L0_S009);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 901 then
			FirstWin_Text1:SetText(NF_L0_MOON901);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 910 then
			FirstWin_Text1:SetText(NF_L0_MOON910);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 902 then
			FirstWin_Text1:SetText(NF_L0_MOON902);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 903 then
			FirstWin_Text1:SetText(NF_L0_MOON903);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);

		end;
	end;
end
