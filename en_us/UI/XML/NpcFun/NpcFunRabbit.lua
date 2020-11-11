local win = UIAPI:GetElement("FirstWin");
local text = {RABBIT1001T, RABBIT1002T, RABBIT1003T, RABBIT1004T, RABBIT1005T, RABBIT1006T}
function NpcFunRabbit_SetUI(Type,Index)
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
    win:Visible(true);
end

function NpcFunRabbit_SetText(Type,Index,BtnID,SubID)
    if Index == 1 then
        if SubID >= 101 and SubID <= 106 then
            FirstWin_Text1:SetText(text[SubID - 100]);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 101 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(25,155);
            Button:SetText(REVIVE101B);
            Button:Visible(true);
        elseif SubID == 199 then
            FirstWin_Text1:SetText(RABBIT199T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
    elseif Index == 2 then
        if SubID == 200 then
            FirstWin_Text1:SetText(REVIVE200T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 201 then
            FirstWin_Text1:SetText(REVIVE201T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 296 then
            FirstWin_Text1:SetText(REVIVE296T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID >= 1001 and SubID <= 1006 then
            FirstWin_Text1:SetText(text[SubID - 1000]);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 297 then
            FirstWin_Text1:SetText(REVIVE297T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 299 then
            FirstWin_Text1:SetText(REVIVE299T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 203 then
            FirstWin_Text1:SetText(REVIVE203T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 298 then
            FirstWin_Text1:SetText(REVIVE298T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
    end;
end
