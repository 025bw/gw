local win = UIAPI:GetElement("FirstWin");
local chains = {}
local pingzhen = {}

function NpcFunChains_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);
end

function NpcFunChains_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
		if SubID <= 199 and SubID >= 191 then
                        chains = {CHAINS199, CHAINS198, CHAINS197, CHAINS196, CHAINS195, CHAINS194, CHAINS193, CHAINS192, MONEYBOX197T}
			FirstWin_Text1:SetText(chains[200 - SubID]);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
                elseif math.mod(SubID ,1000) == 1 then
                        FirstWin_Text1:SetText(CHAINS191 .. "|cffF14187" .. ((SubID - 1)/1000) .. "|cFFFFFFFF" .. CHAINS190);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
                elseif SubID == 100 then
			FirstWin_Text1:SetText(PINGZHEN100);
			FirstWin_Text1:Visible(true);
                        FirstWin_ItemBtn1:Visible(true);
                        FirstWin_ItemBtn1:SetPosition(45,120);
                end;
	elseif Index == 2 then
		if SubID <= 202 and SubID >= 200 then
                        pingzhen = {PINGZHEN202, PINGZHEN201, PINGZHEN200}
			FirstWin_Text1:SetText(pingzhen[203 - SubID]);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
                end;
	end;
end;
