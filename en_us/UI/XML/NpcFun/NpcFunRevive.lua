local win = UIAPI:GetElement("FirstWin");
local text = {REVIVE1001T, REVIVE1002T, REVIVE1003T, REVIVE1004T, REVIVE1005T, REVIVE1006T, REVIVE1007T, REVIVE1007T}
function NpcFunRevive_SetUI(Type,Index)
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
    win:Visible(true);
end

function NpcFunRevive_SetText(Type,Index,BtnID,SubID)
    if Index == 1 then
        if SubID == 100 then
            FirstWin_Text1:SetText(REVIVE200T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 101 then
            FirstWin_Text1:SetText(REVIVE100T);
            FirstWin_Text1:Visible(true);
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(25,155);
            Button:SetText(REVIVE101B);
            Button:Visible(true);
        elseif SubID == 102 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(25,175);
            Button:SetText(REVIVE102B);
            Button:Visible(true);
        elseif SubID == 103 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(25,195);
            Button:SetText(REVIVE103B);
            Button:Visible(true);
        elseif SubID == 199 then
            FirstWin_Text1:SetText(REVIVE199T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
    elseif Index == 2 then
        if SubID == 201 then
            FirstWin_Text1:SetText(REVIVE201T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 202 then
            FirstWin_Text1:SetText(REVIVE202T);
            FirstWin_Text1:Visible(true);
            FirstWin_ItemBtn1:Visible(true);
            FirstWin_ItemBtn1:SetPosition(60,150);
        elseif SubID == 203 then
            FirstWin_Text1:SetText(REVIVE203T);
            FirstWin_Text1:Visible(true);
            FirstWin_ItemBtn1:Visible(true);
            FirstWin_ItemBtn1:SetPosition(60,150);
        elseif SubID == 296 then
            FirstWin_Text1:SetText(REVIVE296T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
    elseif Index == 3 then
        if SubID == 297 then
            FirstWin_Text1:SetText(REVIVE297T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID >= 1001 and SubID <= 1008 then
            FirstWin_Text1:SetText(text[SubID - 1000]);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 299 then
            FirstWin_Text1:SetText(REVIVE299T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 303 then
            FirstWin_Text1:SetText(REVIVE303T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 298 then
            FirstWin_Text1:SetText(REVIVE298T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
    end;
end
