local win = UIAPI:GetElement("FirstWin");
--七夕
function NpcFunQixi_SetUI(Type,Index)
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
    win:Visible(true);
end

function NpcFunQixi_SetText(Type,Index,BtnID,SubID)
    if Index == 1 then
        if SubID == 100 then
            FirstWin_Text1:SetText(NF_L0_CD100);
            FirstWin_Text1:Visible(true);
        elseif SubID == 101 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(25,135);
            Button:SetText(NF_L0_CD101);
            Button:Visible(true);
        elseif SubID == 102 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(25,155);
            Button:SetText(NF_L0_CD102);
            Button:Visible(true);
        elseif SubID == 103 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(25,175);
            Button:SetText(NF_L0_CD103);
            Button:Visible(true);
        end;
    elseif Index == 2 then
        if SubID == 900 then
            FirstWin_Text1:SetText(NF_L0_CD900);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif math.mod(SubID,1000) == 8 then
            FirstWin_Text1:SetText(NF_L0_CD104.. (SubID - 8)/1000 .. NF_L0_CD105);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true)
        elseif math.mod(SubID,1000) == 9 then
            FirstWin_Text1:SetText(NF_L0_CD106.. (SubID - 9)/1000 .. NF_L0_CD107);
            FirstWin_Text1:Visible(true);
        elseif SubID == 200 then
            FirstWin_Text1:SetText(NF_L0_CD200);
            FirstWin_Text1:Visible(true);
        elseif SubID == 201 then
            FirstWin_Text1:SetText(NF_L0_CD201);
            FirstWin_Text1:Visible(true);
        elseif SubID == 202 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(25,135);
            Button:SetText(NF_L0_CD202);
            Button:Visible(true);
        elseif SubID == 203 then
            FirstWin_Text1:SetText(NF_L0_CD203);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true)
        elseif SubID == 901 then
            FirstWin_Text1:SetText(NF_L0_CD901);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 902 then
            FirstWin_Text1:SetText(NF_L0_CD902);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 903 then
            FirstWin_Text1:SetText(NF_L0_CD903);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID > 910 and SubID < 1004 then
            FirstWin_Text2:SetText(LuaText["NF_L0_CD" .. SubID]);
            FirstWin_Text2:Visible(true);
            FirstWin_Text2:SetPosition(25,85);
        end;
	elseif SubID == 300 then
        FirstWin_Text1:SetText(NF_L0_CD300);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true)    
    end;
end
        
        
        