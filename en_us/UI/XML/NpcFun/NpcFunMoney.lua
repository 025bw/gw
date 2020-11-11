local win = UIAPI:GetElement("FirstWin");
--装备分解
function NpcFunMoney_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);
end

function NpcFunMoney_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   if SubID == 996 then
		FirstWin_Text1:SetText(MONEYCHANGE4);
		FirstWin_Text1:Visible(true);
		NPCFUN:EndMessage(true);
	   elseif SubID == 997 then
		FirstWin_Text1:SetText(MONEYCHANGE3);
		FirstWin_Text1:Visible(true);
		NPCFUN:EndMessage(true);
	   elseif SubID == 998 then
		FirstWin_Text1:SetText(MONEYCHANGE6);
		FirstWin_Text1:Visible(true);
		NPCFUN:EndMessage(true);
	   elseif SubID == 999 then
		FirstWin_Text1:SetText(MONEYCHANGE5);
		FirstWin_Text1:Visible(true);
		NPCFUN:EndMessage(true);
	   end;
	end;
end