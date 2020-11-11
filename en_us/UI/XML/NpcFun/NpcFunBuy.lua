local win = UIAPI:GetElement("FirstWin");

function NpcFunBuy_SetUI(Type,Index)
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
    win:Visible(true);
end

function NpcFunBuy_SetText(Type,Index,BtnID,SubID)
    if Index == 1 then
        if SubID == 100 then
            FirstWin_Text1:SetText(MONEYBOX100T);
            FirstWin_Text1:Visible(true);
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(25,155);
            Button:SetText(MONEYBOX100B);
            Button:Visible(true);
        elseif SubID == 101 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(25,175);
            Button:SetText(MONEYBOX101B);
            Button:Visible(true);
        elseif SubID == 199 then
            FirstWin_Text1:SetText(MONEYBOX199T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 198 then
            FirstWin_Text1:SetText(REVIVE296T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 197 then
            FirstWin_Text1:SetText(MONEYBOX197T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
    elseif Index == 2 then
        if SubID == 200 then
            FirstWin_Text1:SetText(MONEYBOX200T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 299 then
            FirstWin_Text1:SetText(MONEYBOX299T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
    end;
end
