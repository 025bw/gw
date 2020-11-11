local win = UIAPI:GetElement("FirstWin");
--兑换宗师级技能书
function NpcFunExchangeSkillBook_SetUI(Type,Index)
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
end

function NpcFunExchangeSkillBook_SetText(Type,Index,BtnID,SubID)
    if Index == 1 then ---第1个页面---
        if (SubID >= 100 and SubID <= 104) or (SubID >= 110 and SubID <= 114) or (SubID >= 120 and SubID <= 124) or (SubID >= 130 and SubID <= 134) then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(LuaText["skillbook" .. SubID]);
            Button:SetPosition(45, 100 + (SubID % 10) * 20)
            Button:Visible(true);
        elseif (SubID >= 105 and SubID <= 106) or (SubID >= 115 and SubID <= 118) or (SubID >= 125 and SubID <= 128) or (SubID >= 135 and SubID <= 138) then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(LuaText["skillbook" .. SubID]);
            Button:SetPosition(280, 100 + (SubID % 10 - 5) * 20)
            Button:Visible(true);
        elseif SubID == 109 or SubID == 119 or SubID == 129 or SubID == 139 then
            FirstWin_Text1:SetText(LuaText["skillbook" .. SubID]);
            FirstWin_Text1:Visible(true);
            FirstWin_Text1:SetPosition(25,45)
        end;

    elseif Index == 2 then ---消息提示文字---
        if SubID == 298 or SubID == 299 then
            FirstWin_Text1:SetText(LuaText["skillbook" .. SubID]);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end
    end
end;