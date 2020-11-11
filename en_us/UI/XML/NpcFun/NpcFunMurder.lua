local win = UIAPI:GetElement("FirstWin");
--刺杀执政官
function NpcFunMurder_SetUI(Type,Index)
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
    win:Visible(true);

end

function NpcFunMurder_SetText(Type,Index,BtnID,SubID)
    if Index == 1 then
        if SubID == 100 then
            FirstWin_Text1:SetText(NF_L0_MD100);
            FirstWin_Text1:Visible(true);
        elseif SubID == 101 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_MD101);
            Button:SetPosition(25,135)
            Button:Visible(true);
        elseif SubID == 102 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_MD102);
            Button:SetPosition(25,155)
            Button:Visible(true);
        elseif SubID == 103 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_MD103);
            Button:SetPosition(25,175)
            Button:Visible(true);
        elseif SubID == 104 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_MD104);
            Button:SetPosition(25,195)
            Button:Visible(true);
        elseif SubID >= 150 and SubID <= 156 then
            FirstWin_Text1:SetText(LuaText["Murder_T" .. SubID]);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
    elseif Index == 2 then
        if SubID == 201 then
            FirstWin_Text1:SetText(NF_L0_MD201);
            FirstWin_Text1:Visible(true);
        elseif SubID == 202 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_MD202);
            Button:SetPosition(25,175)
            Button:Visible(true);
        elseif SubID == 203 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_MD203);
            Button:SetPosition(25,200)
            Button:Visible(true);
        elseif SubID == 204 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_MD204);
            Button:SetPosition(25,225)
            Button:Visible(true);
        elseif SubID == 205 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_MD205);
            Button:SetPosition(25,250)
            Button:Visible(true);
        elseif SubID == 1001 then
            FirstWin_Text1:SetText(NF_L0_MD1001);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 1002 then
            FirstWin_Text1:SetText(NF_L0_MD1002);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 1003 then
            FirstWin_Text1:SetText(NF_L0_MD1003);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 1004 then
            FirstWin_Text1:SetText(NF_L0_MD1004);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 1005 then
            FirstWin_Text1:SetText(NF_L0_MD1005);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 1006 then
            FirstWin_Text1:SetText(NF_L0_MD1006);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 1007 then
            FirstWin_Text1:SetText(NF_L0_MD1007);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 1008 then
            FirstWin_Text1:SetText(NF_L0_MD1008);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 1009 then
            FirstWin_Text1:SetText(NF_L0_MD1009);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 1010 then
            FirstWin_Text1:SetText(NF_L0_MD1010);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 1022 then
            FirstWin_Text1:SetText(NF_L0_MD1022);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 1023 then
            FirstWin_Text1:SetText(NF_L0_MD1023);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 1024 then
            FirstWin_Text1:SetText(NF_L0_MD1026);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 1026 then
            FirstWin_Text1:SetText(NF_L0_MD1026);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 1027 then
            FirstWin_Text1:SetText(NF_L0_MD1027);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 1028 then
            FirstWin_Text1:SetText(NF_L0_MD1028);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif not (SubID / 10000 == 0) then
            if string.sub(SubID,-1) == '5' then
                FirstWin_Text1:SetText(NF_L0_MD302 .. ((SubID - 10005)/100) );
                FirstWin_Text1:Visible(true);
            elseif string.sub(SubID,-1) == '6' then
                FirstWin_Text2:SetText(NF_L0_MD303 .. ((SubID - 10006)/100) );
                FirstWin_Text2:Visible(true);
                FirstWin_Text2:SetPosition(25,140)
            end;
        end;
    elseif SubID == 1011 then
        FirstWin_Text1:SetText(NF_L0_MD1001);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    elseif SubID == 1012 then
        FirstWin_Text1:SetText(NF_L0_MD1024);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    elseif SubID == 1016 then
        FirstWin_Text1:SetText(NF_L0_MD1016);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    elseif SubID == 1017 then
        FirstWin_Text1:SetText(NF_L0_MD1017);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    elseif SubID == 1018 then
        FirstWin_Text1:SetText(NF_L0_MD1018);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    elseif SubID == 1019 then
        FirstWin_Text1:SetText(NF_L0_MD1019);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    elseif SubID == 1020 then
        FirstWin_Text1:SetText(NF_L0_MD1020);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    elseif SubID == 1021 then 
        FirstWin_Text1:SetText(NF_L0_MD1021);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    elseif SubID == 1031 then 
        FirstWin_Text1:SetText(NF_L0_MD1031);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    elseif SubID == 301 then
        FirstWin_Text1:SetText(NF_L0_MD301);
        FirstWin_Text1:Visible(true);
        InputText1:Visible(true);
        Input11:Visible(true); 
        Input12:Visible(true); 
        Input13:Visible(true); 
        Input11:SetPosition(33,135);
        Input12:SetPosition(25,135);
        Input13:SetPosition(127,135);
        InputText1:SetPosition(29,136);
    elseif SubID == 1025 then
        FirstWin_Text1:SetText(NF_L0_MD1025);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    elseif not (SubID / 10000 == 0) then
        if math.mod(SubID,10000) == 1 then 
            FirstWin_Text1:SetText(NF_L0_MD1011 .. ((SubID - 10001)/10000) .. NF_L0_MD1015);
            FirstWin_Text1:Visible(true);
        elseif math.mod(SubID,10000) == 2 then
            FirstWin_Text2:SetText(NF_L0_MD1012 .. ((SubID - 10002)/10000) .. NF_L0_MD1015);
            FirstWin_Text2:Visible(true);
            FirstWin_Text2:SetPosition(25,140)
        elseif math.mod(SubID,10000) == 3 then
            FirstWin_Text3:SetText(NF_L0_MD1013 .. ((SubID - 10003)/10000) .. NF_L0_MD1015);
            FirstWin_Text3:Visible(true);
            FirstWin_Text3:SetPosition(25,160)
        elseif math.mod(SubID,10000) == 4 then
            FirstWin_Text4:SetText(NF_L0_MD1014 .. ((SubID - 10004)/10000) .. NF_L0_MD1015);
            FirstWin_Text4:Visible(true);
            FirstWin_Text4:SetPosition(25,180)
        end;
    end;
end
