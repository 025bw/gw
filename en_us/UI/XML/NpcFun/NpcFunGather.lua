local win = UIAPI:GetElement("FirstWin");
--生活技能
function NpcFunGather_SetUI(Type,Index)
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
    win:Visible(true);
end

function NpcFunGather_SetText(Type,Index,BtnID,SubID)
    if Index == 1 then
        if SubID == 100 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_GT100);
            Button:SetPosition(25,230);
            Button:Visible(true);
        elseif SubID == 101 then 
            FirstWin_Text1:SetText(NF_L0_GT101);
            FirstWin_Text1:Visible(true);
        elseif SubID == 102 then 
            FirstWin_Text1:SetText(NF_L0_GT102);
            FirstWin_Text1:Visible(true);
        elseif SubID == 103 then 
            FirstWin_Text1:SetText(NF_L0_GT103);
            FirstWin_Text1:Visible(true);
        elseif SubID == 104 then 
            FirstWin_Text1:SetText(NF_L0_GT104);
            FirstWin_Text1:Visible(true);
        elseif SubID == 105 then
            FirstWin_Text2:SetText(NF_L0_GT105);
            FirstWin_Text2:Visible(true);
            FirstWin_Text2:SetPosition(25,80);
            FirstWin_ItemBtn1:Visible(true);
            FirstWin_ItemBtn1:SetPosition(55,105);
        elseif SubID == 110 then 
            FirstWin_Text1:SetText(NF_L0_LI110);
            FirstWin_Text1:Visible(true);
            FirstWin_Text1:SetPosition(25,10);
        elseif SubID == 111 then 
            FirstWin_Text1:SetText(NF_L0_LI111);
            FirstWin_Text1:Visible(true);
            FirstWin_Text1:SetPosition(25,10);
        elseif SubID == 112 then 
            FirstWin_Text1:SetText(NF_L0_LI112);
            FirstWin_Text1:Visible(true);
            FirstWin_Text1:SetPosition(25,10);
        end;
    elseif Index == 2 then
        if SubID == 900 then
            FirstWin_Text1:SetText(NF_L0_GT900);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 901 then
            FirstWin_Text1:SetText(NF_L0_GT901);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 902 then
            FirstWin_Text1:SetText(NF_L0_GT902);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 903 then
            FirstWin_Text1:SetText(NF_L0_GT903);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 904 then
            FirstWin_Text1:SetText(NF_L0_GT904);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 905 then
            GameAPI:Collction();
            win:Visible(false);
        elseif SubID == 906 then
            FirstWin_Text1:SetText(NF_L0_GT906);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 907 then
            FirstWin_Text1:SetText(NF_L0_LI907);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 908 then
            FirstWin_Text1:SetText(NF_L0_LI908);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 909 then
            FirstWin_Text1:SetText(NF_L0_LI909);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
    end;
end
