local win = UIAPI:GetElement("FirstWin");
--活动
function NpcFunHpmp_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunHpmp_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第几个页面------
		if SubID== 100      then
			FirstWin_Text1:SetText(NF_HPMP_1001);
			FirstWin_Text1:Visible(true);		    
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,95);
			Button:SetText(NF_L0_HM110);
			Button:Visible(true);
		elseif SubID == 101 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,115);
			Button:SetText(NF_L0_HM111);
			Button:Visible(true);
		elseif SubID == 102 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,135);
			Button:SetText(NF_L0_HM112);
			Button:Visible(true);
		elseif SubID == 120 then
			FirstWin_Text1:SetText(NF_HPMP_1001);
			FirstWin_Text1:Visible(true);		    
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,95);
			Button:SetText(NF_L0_HM113);
			Button:Visible(true);
		elseif SubID == 121 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,115);
			Button:SetText(NF_L0_HM114);
			Button:Visible(true);
		elseif SubID == 122 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,135);
			Button:SetText(NF_L0_HM115);
			Button:Visible(true);
		elseif SubID == 123 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,155);
			Button:SetText(NF_L0_HM116);
			Button:Visible(true);
		end;
	elseif Index == 2 then	--服务器提示消息---------------------
		if SubID == 118 then
			FirstWin_Text1:SetText(NF_L0_HM102);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 119 then
			FirstWin_Text1:SetText(NF_L0_S009);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 110 then
			FirstWin_Text1:SetText(NF_L0_HM104);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 111 then
			FirstWin_Text1:SetText(NF_L0_HM103);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 112 then
			FirstWin_Text1:SetText(NF_L0_HM107);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 113 then
			FirstWin_Text1:SetText(NF_L0_HM108);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 117 then
			FirstWin_Text1:SetText(NF_L0_HM109);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 124 then
			FirstWin_Text1:SetText(NF_L0_HM106);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 125 then
			FirstWin_Text1:SetText(NF_L0_HM105);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 126 then
			FirstWin_Text1:SetText(NF_L0_HM117);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 127 then
			FirstWin_Text1:SetText(NF_L0_HM109);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 128 then
			FirstWin_Text1:SetText(NF_L0_HM108);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	end;
end
