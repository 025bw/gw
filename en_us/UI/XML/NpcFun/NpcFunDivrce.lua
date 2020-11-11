local win = UIAPI:GetElement("FirstWin");
--½â³ý»éÔ¼
function NpcFunDivrce_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunDivrce_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   if SubID == 1 then
	      FirstWin_Text1:SetText(NF_L0_AWAY1000);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:NeedMessage(False);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_AWAY1);
	      Button:Visible(true);
              Button:SetPosition(25,135);
	   elseif SubID == 2 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_AWAY2);
	      Button:Visible(true);
              Button:SetPosition(25,155);
	   end;
	elseif Index == 2 then
	   if SubID == 11 then
	      FirstWin_Text1:SetText(NF_L0_AWAY1001);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:NeedMessage(False);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_AWAY11);
	      Button:Visible(true);
              Button:SetPosition(25,135);
	   elseif SubID == 12 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_AWAY12);
	      Button:Visible(true);
              Button:SetPosition(25,155);
	   elseif SubID == 21 then
	      FirstWin_Text1:SetText(NF_L0_AWAY1002);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:NeedMessage(False);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_AWAY21);
	      Button:Visible(true);
              Button:SetPosition(25,135);
	   elseif SubID == 22 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_AWAY22);
	      Button:Visible(true);
              Button:SetPosition(25,155);
	   elseif SubID == 1100 then
	      FirstWin_Text1:SetText(NF_L0_AWAY1100);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 1200 then
	      FirstWin_Text1:SetText(NF_L0_AWAY1200);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID == 1300 then
	      FirstWin_Text1:SetText(NF_L0_AWAY1300);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   end;
	elseif Index == 3 then
	   if SubID == 2100 then
	      FirstWin_Text1:SetText(NF_L0_AWAY2100);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 2200 then
	      FirstWin_Text1:SetText(NF_L0_AWAY2200);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 2300 then
	      FirstWin_Text1:SetText(NF_L0_AWAY2300);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 2400 then
	      FirstWin_Text1:SetText(NF_L0_AWAY2400);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 2500 then
	      FirstWin_Text1:SetText(NF_L0_AWAY2500);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 2600 then
	      FirstWin_Text1:SetText(NF_L0_AWAY2600);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
           end;
	end;
end
