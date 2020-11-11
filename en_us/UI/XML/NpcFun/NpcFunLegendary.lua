
local win = UIAPI:GetElement("FirstWin");

function NpcFunLegendary_SetUI(Type,Index)
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
    win:Visible(true);
end


function NpcFunLegendary_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
		if SubID == 101 then
			FirstWin_Text1:SetText(Legendary3)
			FirstWin_Text1:Visible(true)
		elseif SubID == 102 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(Legendary4)
			Button:SetPosition(25,135)
			Button:Visible(true)
		elseif SubID == 103 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(Legendary5)
			Button:SetPosition(25,155)
			Button:Visible(true)
		elseif SubID == 104 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(Legendary6)
			Button:SetPosition(25,175)
			Button:Visible(true)
		elseif SubID == 105 then
			FirstWin_Text1:SetText(Legendary1)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true)
		elseif SubID == 106 then
			FirstWin_Text1:SetText(Legendary2)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true)
		end
	elseif Index == 2 then
		if SubID == 201 then
			FirstWin_Text1:SetText(Legendary7)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true)
		elseif SubID == 202 then
			FirstWin_Text1:SetText(Legendary8)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true)
		elseif SubID == 203 then
			FirstWin_Text1:SetText(Legendary9)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true)
		elseif SubID == 204 then
			FirstWin_Text1:SetText(Legendary10)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true)
		elseif SubID == 205 then
			FirstWin_Text1:SetText(Legendary11)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true)
		end
	end
end
