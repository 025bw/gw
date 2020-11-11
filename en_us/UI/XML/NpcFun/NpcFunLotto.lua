--~ UIList_Lotto = {
--~ 	{1,101,TEXT,Lotto1},
--~ 	{1,102,BUTTON,Lotto2},
--~ 	{1,103,BUTTON,Lotto3,25,155},
--~ 	{1,104,BUTTON,Lotto4,25,175},
--~ 	{2,201,ENDTEXT,Lotto5},
--~ 	{2,202,TEXT,Lotto6},
--~ 	{2,203,VALUE},
--~ 	{2,204,ENDTEXT,Lotto7},
--~ 	{2,205,ENDTEXT,Lotto8},
--~ 	{3,301,ENDTEXT,Lotto9},
--~ 	{2,206,ENDTEXT,Lotto10}, --°ü¹üÂú
--~ 	{3,390,ENDTEXT,Lotto11}, --Êý×Ö³¬·¶Î§
--~ 	{3,391,ENDTEXT,Lotto12}, --°ü¹üÂú
--~ 	{2,207,ENDTEXT,Lotto13}, --ÎÞÖÐ½±
--~ }

--~ local win = UIAPI:GetElement("FirstWin")
--~ UIMAKER:Create(win,'Lotto')


local win = UIAPI:GetElement("FirstWin");

function NpcFunLotto_SetUI(Type,Index)
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
    win:Visible(true);
end


function NpcFunLotto_SetText(Type,Index,BtnID,SubID)
    if Index == 1 then
		if SubID == 101 then
			FirstWin_Text1:SetText(Lotto1)
			FirstWin_Text1:Visible(true)
		elseif SubID == 102 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(Lotto2)
			Button:SetPosition(25,135)
			Button:Visible(true)
		elseif SubID == 103 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(Lotto3)
			Button:SetPosition(25,155)
			Button:Visible(true)
		elseif SubID == 104 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(Lotto4)
			Button:SetPosition(25,175)
			Button:Visible(true)
		end
    elseif Index == 2 then
		if SubID == 201 then
			FirstWin_Text1:SetText(Lotto5)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true)
		elseif SubID == 202 then
			FirstWin_Text1:SetText(Lotto6)
			FirstWin_Text1:Visible(true)
		elseif SubID == 203 then
			InputText1:Visible(true);
			Input11:Visible(true)
			Input12:Visible(true)
			Input13:Visible(true)
			Input11:SetPosition(98,200)
			Input12:SetPosition(90,200)
			Input13:SetPosition(192,200)
			InputText1:SetPosition(94,201)
		elseif SubID == 204 then
			FirstWin_Text1:SetText(Lotto7)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true)
		elseif SubID == 205 then
			FirstWin_Text1:SetText(Lotto8)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true)
		elseif SubID == 206 then
			FirstWin_Text1:SetText(Lotto10)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true)
		elseif SubID == 207 then
			FirstWin_Text1:SetText(Lotto13)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true)
		end
	elseif Index == 3 then
		if SubID == 301 then
			FirstWin_Text1:SetText(Lotto9)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true)
		elseif SubID == 206 then
			FirstWin_Text1:SetText(Lotto10)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true)
		elseif SubID == 390 then
			FirstWin_Text1:SetText(Lotto11)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true)
		elseif SubID == 391 then
			FirstWin_Text1:SetText(Lotto12)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true)
		end
    end;
end
