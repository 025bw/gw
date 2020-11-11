local win = UIAPI:GetElement("FirstWin");
--生活技能
function NpcFunLifeSkill_SetUI(Type,Index)
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
    win:Visible(true);
end

function NpcFunLifeSkill_SetText(Type,Index,BtnID,SubID)
    if Index == 1 then
        if SubID == 101 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_LS101);
            Button:SetPosition(25,155)
            Button:Visible(true);
        elseif SubID == 102 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_LS102);
            Button:SetPosition(25,175)
            Button:Visible(true);
        elseif SubID == 103 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_LS103);
            Button:SetPosition(25,195)
            Button:Visible(true);
        elseif SubID == 104 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_LS104);
            Button:SetPosition(25,215)
            Button:Visible(true);
        end;
    elseif Index == 2 then
        if SubID == 201 then
            FirstWin_Text1:SetText(NF_L0_LS201);
            FirstWin_Text1:Visible(true);
        elseif SubID == 202 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_LS202);
            Button:SetPosition(25,160)
            Button:Visible(true);
        elseif SubID == 203 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_LS203);
            Button:SetPosition(25,180)
            Button:Visible(true);
        elseif SubID == 204 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_LS204);
            Button:SetPosition(25,200)
            Button:Visible(true);
        elseif SubID == 205 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_LS205);
            Button:SetPosition(25,220)
            Button:Visible(true);
        elseif SubID == 206 then
            FirstWin_Text1:SetText(NF_L0_LS206);
            FirstWin_Text1:Visible(true);
        elseif SubID == 207 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_LS207);
            Button:SetPosition(25,135)
            Button:Visible(true);
        elseif SubID == 208 then
            FirstWin_Text1:SetText(NF_L0_LS208);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
    elseif Index == 3 then
        if SubID == 301 then
            FirstWin_Text1:SetText(NF_L0_LS301);
            FirstWin_Text1:Visible(true);
        elseif SubID == 302 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_LS302);
            Button:SetPosition(25,135)
            Button:Visible(true);
        elseif SubID == 303 then
            FirstWin_Text1:SetText(NF_L0_LS303);
            FirstWin_Text1:Visible(true);
        elseif SubID == 304 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_LS304);
            Button:SetPosition(25,135)
            Button:Visible(true);
        elseif SubID == 305 then
            FirstWin_Text1:SetText(NF_L0_LS305);
            FirstWin_Text1:Visible(true);
        elseif SubID == 306 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_LS306);
            Button:SetPosition(25,135)
            Button:Visible(true);
        elseif SubID == 307 then
            FirstWin_Text1:SetText(NF_L0_LS307);
            FirstWin_Text1:Visible(true);
        elseif SubID == 308 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_LS308);
            Button:SetPosition(25,135)
            Button:Visible(true);
        elseif SubID == 309 then
            FirstWin_Text1:SetText(NF_L0_LS309);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 310 then
            FirstWin_Text1:SetText(NF_L0_LS310);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
    elseif SubID == 401 then
        FirstWin_Text1:SetText(NF_L0_LS401);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    elseif SubID == 402 then
        FirstWin_Text1:SetText(NF_L0_LS402);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    elseif SubID == 403 then
        FirstWin_Text1:SetText(NF_L0_LS403);
        FirstWin_Text1:Visible(true);
        NPCFUN:EndMessage(true);
    end;
end

function NpcFunLifeSkill_SetMsg(Type,Index,PreSubID,SubID)
	if Index == 1 then
		if SubID == 103 then
			GameAPI:MakeLifeSkillVisible(true)
		end;
	end;
end


