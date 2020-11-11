local win = UIAPI:GetElement("FirstWin");
--神秘老人
function NpcFunOldMan_SetUI(Type,Index)
	FirstWin_Text1:SetPosition(45,100);
	FirstWin_Text1:Visible(false);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	strDesig = ""
	win:Visible(true);

end

function NpcFunOldMan_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第1个页面------
		if SubID == 1 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_LT1);
			Button:SetPosition(25,165)
			Button:Visible(true);
		--elseif SubID == 2 then
		--	print(BtnID,SubID);
		--	local Button = win:GetChild("FirstWin_Button" .. BtnID);
		--	Button:SetText(NF_L0_LT2);
		--      Button:SetPosition(40,300)
		--	Button:Visible(true);
		elseif SubID == 3 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_LT3);
			Button:SetPosition(25,185)
			Button:Visible(true);
		elseif SubID == 4 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_LT4);
			Button:SetPosition(25,205)
			Button:Visible(true);
		elseif SubID == 5 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_LT5);
			Button:SetPosition(25,225)
			Button:Visible(true);
		elseif SubID ==1000 then
			FirstWin_Text1:SetText(NF_L0_LT1000);
			FirstWin_Text1:Visible(true);
		end;
	elseif Index == 2 then	--第2个页面---------------------
		if SubID == 505 then
			FirstWin_Text1:SetText(NF_L0_LT505);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==1001 then
			FirstWin_Text1:SetText(NF_L0_LT1001);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID % 1000 == 5 then
			FirstWin_Text1:SetText(NF_L0_LT500.."|cffFF0000"..(((3600-(SubID-5)/1000-(3600-(SubID-5)/1000)%60))/60).."|cffffffff"..NF_L0_LT509.."|cffFF0000"..((3600-(SubID-5)/1000)%60).."|cffffffff"..NF_L0_LT510);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 501 then
			FirstWin_Text1:SetText(NF_L0_LT501);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 502 then
			FirstWin_Text1:SetText(NF_L0_LT502);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 503 then
			FirstWin_Text1:SetText(NF_L0_LT503);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 504 then
			FirstWin_Text1:SetText(NF_L0_LT504);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 511 then
			FirstWin_Text1:SetText(NF_L0_LT511);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 512 then
			FirstWin_Text1:SetText(NF_L0_LT512);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 515 then
			FirstWin_Text1:SetText(NF_L0_LT515);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 601 then
			FirstWin_Text1:SetText(NF_L0_LT601);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 603 then
			FirstWin_ButtonA3:SetPosition(80,200);
			FirstWin_ButtonA3:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			FirstWin_ButtonA2:Visible(false);
		elseif SubID ==1001 then
			FirstWin_Text1:SetText(NF_L0_LT1001);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	end;
end
