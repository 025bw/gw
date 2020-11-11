--~ UIList_HolyPackage = {
--~ 	{1,101,ENDTEXT,HolyPackage1},
--~ 	{1,102,TEXT,HolyPackage2},
--~ 	{1,103,INPUT1},
--~ 	{1,104,TEXT,HolyPackage3},
--~ 	{1,105,INPUT1},
--~ 	{2,201,ENDTEXT,HolyPackage6},
--~ 	{2,202,ENDTEXT,HolyPackage10},
--~ 	{2,290,ENDTEXT,REVIVE296T},
--~ 	{2,291,ENDTEXT,HolyPackage5},
--~ 	{2,292,ENDTEXT,HolyPackage7},
--~ 	{2,293,ENDTEXT,HolyPackage4},
--~ }

--~ local win = UIAPI:GetElement("FirstWin")
--~ UIMAKER:Create(win,'HolyPackage')
local win = UIAPI:GetElement("FirstWin");

function NpcFunHolyPackage_SetUI(Type,Index)
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
    win:Visible(true);
end

function NpcFunHolyPackage_SetText(Type,Index,BtnID,SubID)
    if Index == 1 then
        if SubID == 101 then
            FirstWin_Text1:SetText(HolyPackage1);
            FirstWin_Text1:Visible(true)
            NPCFUN:EndMessage(true)
        elseif SubID == 102 then
            FirstWin_Text1:SetText(HolyPackage2);
            FirstWin_Text1:Visible(true)
        elseif SubID == 103 then
			FirstWin_ItemBtn1:Visible(true)
			FirstWin_ItemBtn1:SetPosition(25,190)
        elseif SubID == 104 then
            FirstWin_Text1:SetText(HolyPackage3)
            FirstWin_Text1:Visible(true)
		elseif SubID == 105 then
			FirstWin_ItemBtn1:Visible(true)
			FirstWin_ItemBtn1:SetPosition(25,190)
        end
    elseif Index == 2 then
        if SubID == 201 then
            FirstWin_Text1:SetText(HolyPackage6)
            FirstWin_Text1:Visible(true)
            NPCFUN:EndMessage(true)
        elseif SubID == 202 then
            FirstWin_Text1:SetText(HolyPackage10)
            FirstWin_Text1:Visible(true)
            NPCFUN:EndMessage(true)
        elseif SubID == 290 then
            FirstWin_Text1:SetText(REVIVE296T)
            FirstWin_Text1:Visible(true)
            NPCFUN:EndMessage(true)
        elseif SubID == 291 then
            FirstWin_Text1:SetText(HolyPackage5)
            FirstWin_Text1:Visible(true)
            NPCFUN:EndMessage(true)
        elseif SubID == 292 then
            FirstWin_Text1:SetText(HolyPackage7)
            FirstWin_Text1:Visible(true)
            NPCFUN:EndMessage(true)
        elseif SubID == 293 then
            FirstWin_Text1:SetText(HolyPackage4)
            FirstWin_Text1:Visible(true)
            NPCFUN:EndMessage(true)
        end
    end
end
