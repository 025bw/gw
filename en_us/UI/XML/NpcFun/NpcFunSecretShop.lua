local win = UIAPI:GetElement("FirstWin")
--…Ò√ÿ…Ã»À
function NpcFunSecretShop_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end
function NpcFunSecretShop_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
		if SubID == 100 then
            FirstWin_Text1:SetText(SecretShop_01);
            FirstWin_Text1:Visible(true);
		elseif SubID == 101 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(25,115);
            Button:SetText(SecretShop_02);
            Button:Visible(true);
		elseif SubID == 102 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(25,135);
            Button:SetText(SecretShop_03);
            Button:Visible(true);
		end
	elseif Index == 2 then
		if SubID == 201 then
            FirstWin_Text1:SetText(SecretShop_04)
            FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true);
		elseif SubID == 202 then
            FirstWin_Text1:SetText(SecretShop_05)
            FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true);
		elseif SubID == 901 then
            FirstWin_Text1:SetText(SecretShop_06)
            FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true);
		elseif SubID == 902 then
            FirstWin_Text1:SetText(SecretShop_07)
            FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true);
		elseif SubID == 903 then
            FirstWin_Text1:SetText(SecretShop_08)
            FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true);
		end
	end
end
