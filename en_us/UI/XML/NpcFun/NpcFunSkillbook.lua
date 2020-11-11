local win = UIAPI:GetElement("FirstWin");
--抽取技能书
function NpcFunSkillbook_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunSkillbook_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   FirstWin_Text1:SetText(NF_L0_JN1);
	   FirstWin_Text1:Visible(true);
	elseif Index == 2 then
	   FirstWin_Text1:SetText(NF_L0_JN2);
	   FirstWin_Text1:Visible(true);
	end;
	if math.mod(SubID ,100) == 0 then
	   if SubID / 100 == 1 then
	      FirstWin_Text1:SetText(NF_L0_JN100);
	      FirstWin_Text1:Visible(true);
	   elseif SubID / 100 == 2 then
	      FirstWin_Text1:SetText(NF_L0_JN200);
	      FirstWin_Text1:Visible(true);
	   elseif SubID / 100 == 3 then
	      FirstWin_Text1:SetText(NF_L0_JN300);
	      FirstWin_Text1:Visible(true);
	   elseif SubID / 100 == 4 then
	      FirstWin_Text1:SetText(NF_L0_JN400);
	      FirstWin_Text1:Visible(true);
	   elseif SubID / 100 == 5 then
	      FirstWin_Text1:SetText(NF_L0_JN500);
	      FirstWin_Text1:Visible(true);
	   end;
	   NPCFUN:EndMessage(true);
	elseif math.mod(SubID ,100) == 1 then
	   if ( SubID - 1 ) / 100 == 1 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_JN101);
	      Button:Visible(true);
	      Button:SetPosition(25,85);
	   elseif ( SubID - 1 ) / 100 == 2 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_JN201);
	      Button:Visible(true);
	      Button:SetPosition(25,105);
	   elseif ( SubID - 1 ) / 100 == 3 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_JN301);
	      Button:Visible(true);
	      Button:SetPosition(25,85);
	   elseif ( SubID - 1 ) / 100 == 4 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_JN401);
	      Button:Visible(true);
	      Button:SetPosition(25,105);
	   elseif ( SubID - 1 ) / 100 == 5 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_JN501);
	      Button:Visible(true);
	      Button:SetPosition(25,125);
	   elseif ( SubID - 1 ) / 100 == 6 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_JN601);
	      Button:Visible(true);
	      Button:SetPosition(25,145);
	   end;
	elseif math.mod(SubID ,100) == 2 then
	   FirstWin_Text1:SetText(NF_L0_JN3..( ( ( ( SubID - 2 ) / 100 ) - ( ( SubID - 2 ) / 100 ) % 60 ) / 60 )..NF_L0_JN4..( ( ( SubID - 2 ) / 100 ) % 60 )..NF_L0_JN5);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif math.mod(SubID ,100) == 3 then
	   if ( SubID - 3 ) / 100 == 1 then
	      FirstWin_Text1:SetText(NF_L0_JN103);
	      FirstWin_Text1:Visible(true);
	   elseif ( SubID - 3 ) / 100 == 2 then
	      FirstWin_Text1:SetText(NF_L0_JN203);
	      FirstWin_Text1:Visible(true);
	   elseif ( SubID - 3 ) / 100 == 3 then
	      FirstWin_Text1:SetText(NF_L0_JN303);
	      FirstWin_Text1:Visible(true);
	   end;
	   NPCFUN:EndMessage(true);
	elseif math.mod(SubID ,100) == 4 then
	   FirstWin_ButtonA3:SetPosition(80,200);
	   FirstWin_ButtonA3:Visible(true);
	   FirstWin_ButtonA1:Visible(false);
	   FirstWin_ButtonA2:Visible(false);
	elseif math.mod(SubID ,100) == 5 then
	   FirstWin_Text1:SetText(NF_L0_JN6.."|cffFF0000"..( ( SubID - 5 ) / 100 ).."|cffffffff"..NF_L0_JN7);
	   FirstWin_Text1:Visible(true);
	end;
end
