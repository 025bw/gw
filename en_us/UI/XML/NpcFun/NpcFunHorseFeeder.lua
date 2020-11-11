local win = UIAPI:GetElement("FirstWin");
--活动
function NpcFunHorseFeeder_SetUI(Type,Index)
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
    win:Visible(true);
end

function NpcFunHorseFeeder_SetText(Type,Index,BtnID,SubID)
    if Index== 1 then    ----第几个页面------
        FirstWin_Text1:SetText(LuaText["NF_HF_T1"]);
        FirstWin_Text1:Visible(true);
        if SubID >= 100 and SubID <= 102 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(25,200 + (SubID - 100) * 20);
            Button:SetText(LuaText["NF_HF_B" .. SubID]);
            Button:Visible(true);
        elseif SubID == 103 or SubID ==104 or SubID ==105 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(300,200 + (SubID - 103) * 20);
            Button:SetText(LuaText["NF_HF_B" .. SubID]);
            Button:Visible(true);
        elseif SubID == 106 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetPosition(25,260);
            Button:SetText(LuaText["NF_HF_B" .. SubID]);
            Button:Visible(true);
        end;

    elseif Index == 2 then
        if SubID == 201 then
            FirstWin_Text1:SetText(LuaText["NF_HF_T" .. SubID]);
            FirstWin_Text1:Visible(true);
            FirstWin_ItemBtn1:Visible(true);
            FirstWin_ItemBtn1:SetPosition(50,200);
        elseif SubID == 200 then
            FirstWin_Text1:SetText(LuaText["NF_HF_T" .. SubID]);
            FirstWin_Text1:Visible(true);
            FirstWin_ItemBtn1:Visible(true);
            FirstWin_ItemBtn1:SetPosition(50,65);
        elseif SubID == 202 then
            FirstWin_Text1:SetText(LuaText["NF_HF_T" .. SubID]);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 203 then
            FirstWin_Text1:SetText(LuaText["NF_HF_T" .. SubID]);
            FirstWin_Text1:Visible(true);
            FirstWin_ItemBtn1:Visible(true);
            FirstWin_ItemBtn1:SetPosition(130,235);
            FirstWin_ItemBtn2:Visible(true);
            FirstWin_ItemBtn2:SetPosition(290,235);
        elseif SubID == 204 then
            FirstWin_Text1:SetText(LuaText["NF_HF_T" .. SubID]);
            FirstWin_Text1:Visible(true);
            FirstWin_ItemBtn1:Visible(true);
            FirstWin_ItemBtn1:SetPosition(120,220);
        elseif SubID == 205 then
            FirstWin_Text1:SetText(LuaText["NF_HF_T" .. SubID]);
            FirstWin_Text1:Visible(true);
            FirstWin_ItemBtn1:Visible(true);
            FirstWin_ItemBtn1:SetPosition(100,200);
            FirstWin_ItemBtn2:Visible(true);
            FirstWin_ItemBtn2:SetPosition(350,200);
        elseif SubID == 206 then
            FirstWin_Text1:SetText(LuaText["NF_HF_T" .. SubID]);
            FirstWin_Text1:Visible(true);
            FirstWin_ItemBtn1:Visible(true);
            FirstWin_ItemBtn1:SetPosition(50,170);
        end;

    elseif Index == 3 then
        if SubID >= 301 and SubID <= 317 then
            FirstWin_Text1:SetText(LuaText["NF_HF_T" .. SubID]);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID >= 988 and SubID <= 999 then
            FirstWin_Text1:SetText(LuaText["NF_HF_T" .. SubID]);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
    end;
end;

function NpcFunHorseFeeder_SetMsg(Type,Index,PreSubID,SubID)
    if PreSubID == 103 then
        FirstWin_Text1:SetText(NF_HF_TH203);
        FirstWin_Text1:Visible(true);
        NPCFUN:HaveMessageBox(true);
    elseif PreSubID == 102 then
        FirstWin_Text1:SetText(NF_HF_TH201);
        FirstWin_Text1:Visible(true);
        NPCFUN:HaveMessageBox(true);
    end;
end;
