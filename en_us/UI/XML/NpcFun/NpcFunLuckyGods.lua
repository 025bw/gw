local win = UIAPI:GetElement("FirstWin");
--幸运神明
function NpcFunLuckyGods_SetUI(Type,Index)
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
    win:Visible(true);

end

function NpcFunLuckyGods_SetText(Type,Index,BtnID,SubID)
    if Index == 1 then
        if SubID == 100 then
            FirstWin_Text1:SetText(NF_L0_L001);
            FirstWin_Text1:Visible(true);
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(25,175);
            Button:SetText(NF_L0_L002);
            Button:Visible(true);
        elseif SubID == 101 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(25,195);
            Button:SetText(NF_L0_L003);
            Button:Visible(true);
        elseif SubID == 1000 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(25,215);
            Button:SetText(NF_L0_L007);
            Button:Visible(true);
        elseif SubID == 1001 then
            FirstWin_Text1:SetText(NF_L0_L012);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 104 then
            FirstWin_Text1:SetText(NF_L0_L013);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
    elseif SubID == 201 then
        FirstWin_Text1:SetText(NF_L0_L016);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    elseif math.mod(SubID,10) == 2 then
        FirstWin_Text1:SetText(NF_L0_L022.. (SubID - 2)/10 .. NF_L0_L023);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    elseif math.mod(SubID,100) == 3 then
        FirstWin_Text1:SetText(NF_L0_L005);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    elseif math.mod(SubID,100) == 4 then
        local Button = win:GetChild("FirstWin_Button" .. BtnID);
        Button:SetPosition(25,155);
        Button:SetText(NF_L0_L003);
        Button:Visible(true);
    elseif math.mod(SubID,100) == 5 then
        local Button = win:GetChild("FirstWin_Button" .. BtnID);
        Button:SetPosition(25,175);
        Button:SetText(NF_L0_L007);
        Button:Visible(true);
    elseif math.mod(SubID,10) == 6 then
        FirstWin_Text1:SetText(NF_L0_L017.. (SubID -6)/10 ..NF_L0_L018);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true); 
    elseif math.mod(SubID,10) == 7 then
        FirstWin_Text1:SetText(NF_L0_L011.. (SubID-7)/10 .. NF_L0_L015);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    elseif math.mod(SubID,10) == 8 then
        FirstWin_Text1:SetText(NF_L0_L008.. (SubID-8)/10 .. NF_L0_L015);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    elseif math.mod(SubID,10) == 9 then
        FirstWin_Text1:SetText(NF_L0_L004.. (SubID-9)/10 ..NF_L0_L014);
        FirstWin_Text1:Visible(true);
        local Button = win:GetChild("FirstWin_Button" .. BtnID);
        Button:SetPosition(25,135);
        Button:SetText(NF_L0_L002);
        Button:Visible(true);
    end;
end
