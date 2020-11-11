local win = UIAPI:GetElement("FirstWin");
--活动
function NpcFunTongjilin2_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);
end;

function NpcFunTongjilin2_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第几个页面------
		if SubID== 100      then
			FirstWin_Text1:SetText(GW_TJLT100);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,215);
			Button:SetText(GW_TJLB2100);
			Button:Visible(true);
		elseif SubID == 101 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,235);
			Button:SetText(GW_TJLB2101);
			Button:Visible(true);
		elseif SubID == 102 then
			FirstWin_Text3:SetText(GW_TJLT2893);
			FirstWin_Text3:Visible(true);
                        FirstWin_Text3:SetPosition(25,50);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,255);
			Button:SetText(GW_TJLB2102);
			Button:Visible(true);
		elseif math.mod(SubID ,10) == 3 then
			FirstWin_Text1:SetText(GW_TJLT2890 .. "|cffF14187" .. (SubID - 3) / 10 .. "|cFFFFFFFF" .. GW_TJLT2891);
			FirstWin_Text1:Visible(true);
		elseif math.mod(SubID ,10) == 4 then
			FirstWin_Text2:SetText( "|cffF14187" .. (SubID - 4) / 10 .. "|cFFFFFFFF" .. GW_TJLT2892);
			FirstWin_Text2:Visible(true);
                        FirstWin_Text2:SetPosition(385,30);
		end;
	elseif Index == 2 then	--服务器提示消息---------------------
		if SubID == 999 then
			FirstWin_Text1:SetText(GW_TJLT999);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 990 then
			FirstWin_Text1:SetText(GW_TJLT2990);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 998 then
			FirstWin_Text1:SetText(GW_TJLT2990);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 997 then
			FirstWin_Text1:SetText(GW_TJLT2997);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 996 then
			FirstWin_Text1:SetText(GW_TJLT2996);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 995 then
			FirstWin_Text1:SetText(GW_TJLT2995);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 993 then
			FirstWin_Text1:SetText(GW_TJLT2993);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 992 then
			FirstWin_Text1:SetText(GW_TJLT2992);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 991 then
			FirstWin_Text1:SetText(GW_TJLT2991);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;

	end;
end;
