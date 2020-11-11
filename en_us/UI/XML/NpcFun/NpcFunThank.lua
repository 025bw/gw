local win = UIAPI:GetElement("FirstWin");
--副本
function NpcFunThank_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end
function NpcFunThank_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then---第一个页面
		if SubID == 1 then
			FirstWin_Text1:SetText(NF_L0_THANK01);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_THANK1);
			Button:SetPosition(25,150)
			Button:Visible(true);
		elseif SubID == 2 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_THANK2);
			Button:SetPosition(25,170)
			Button:Visible(true);
		elseif SubID == 3 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_THANK3);
			Button:SetPosition(25,190)
			Button:Visible(true);
		elseif SubID == 199 then
			FirstWin_Text1:SetText(NF_L0_THANK199);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1000 then
			FirstWin_Text1:SetText(NF_L0_THANK1000);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);

		end;
	elseif Index == 2 then    ----第二个页面
		if SubID == 11 then
			FirstWin_Text1:SetText(NF_L0_THANK11);
			FirstWin_Text1:Visible(true);
			FirstWin_Text1:SetPosition(45,50);
			FirstWin_Text2:SetText(NF_L0_THANK011);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(45,150);
			FirstWin_ItemBtn1:Visible(true);
			FirstWin_ItemBtn1:SetPosition(60,90);
			FirstWin_ItemBtn2:Visible(true);
			FirstWin_ItemBtn2:SetPosition(60,215);
		elseif SubID == 12 then
			FirstWin_Text1:SetText(NF_L0_THANK12);
			FirstWin_Text1:Visible(true);
			FirstWin_Text1:SetPosition(45,50);
			FirstWin_Text2:SetText(NF_L0_THANK011);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(45,150);
			FirstWin_ItemBtn1:Visible(true);
			FirstWin_ItemBtn1:SetPosition(60,90);
			FirstWin_ItemBtn2:Visible(true);
			FirstWin_ItemBtn2:SetPosition(60,215);
		elseif SubID == 13 then
			FirstWin_Text1:SetText(NF_L0_THANK13);
			FirstWin_Text1:Visible(true);
			FirstWin_Text1:SetPosition(45,50);
			FirstWin_Text2:SetText(NF_L0_THANK011);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(45,150);
			FirstWin_ItemBtn1:Visible(true);
			FirstWin_ItemBtn1:SetPosition(60,90);
			FirstWin_ItemBtn2:Visible(true);
			FirstWin_ItemBtn2:SetPosition(60,215);
		end;
	elseif Index == 3 then    ----第三个页面
		if SubID == 2000 then
			FirstWin_Text1:SetText(NF_L0_THANK2000);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1100 then
			FirstWin_Text1:SetText(NF_L0_THANK1100);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1200 then
			FirstWin_Text1:SetText(NF_L0_THANK1200);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1300 then
			FirstWin_Text1:SetText(NF_L0_THANK1300);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1400 then
			FirstWin_Text1:SetText(NF_L0_THANK1400);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1500 then
			FirstWin_Text1:SetText(NF_L0_THANK1500);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 2200 then
			FirstWin_Text1:SetText(NF_L0_THANK2200);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	end;
end
