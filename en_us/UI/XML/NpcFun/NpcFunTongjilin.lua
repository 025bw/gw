local win = UIAPI:GetElement("FirstWin");
--活动
function NpcFunTongjilin_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);
end;

function NpcFunTongjilin_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第几个页面------
		if SubID== 100      then
			FirstWin_Text1:SetText(GW_TJLT100);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,135);
			Button:SetText(GW_TJLB100);
			Button:Visible(true);
		elseif SubID == 101 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,155);
			Button:SetText(GW_TJLB101);
			Button:Visible(true);

		end;
	elseif Index == 2 then	--服务器提示消息---------------------
		if SubID == 200 then
			FirstWin_Text1:SetText(GW_TJLT200);
			FirstWin_Text1:Visible(true);
                        FirstWin_ItemBtn1:Visible(true);
                        FirstWin_ItemBtn1:SetPosition(60,150);
		elseif SubID == 999 then
			FirstWin_Text1:SetText(GW_TJLT999);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 201 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,135);
			Button:SetText(GW_TJLB201);
			Button:Visible(true);
		elseif SubID == 202 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,155);
			Button:SetText(GW_TJLB202);
			Button:Visible(true);
		elseif SubID == 998 then
			FirstWin_Text1:SetText(GW_TJLT998);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 994 then
			FirstWin_Text1:SetText(GW_TJLT994);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,10) == 5 then
			FirstWin_Text1:SetText(GW_TJLT203 .. (SubID - 5) / 10 .. GW_TJLT204);
			FirstWin_Text1:Visible(true);
		end;
	elseif Index == 3 then	--服务器提示消息---------------------
		if SubID == 997 then
			FirstWin_Text1:SetText(GW_TJLT997);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 996 then
			FirstWin_Text1:SetText(GW_TJLT996);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 992 then
			FirstWin_Text1:SetText(GW_TJLT992);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 993 then
			FirstWin_Text1:SetText(GW_TJLT993);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 990 then
			FirstWin_Text1:SetText(GW_TJLT990);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	end;
end;
