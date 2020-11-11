local win = UIAPI:GetElement("FirstWin");
--五一节日使者

function NpcFunWorkday_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   if SubID == 101 then
	      FirstWin_Text1:SetText(NF_L0_WKD0101);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:NeedMessage(False);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_WKD101);
              Button:SetPosition(25,220);
	      Button:Visible(true);
	   elseif SubID == 102 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_WKD102);
              Button:SetPosition(25,240);
	      Button:Visible(true);
	   end;
	elseif Index == 2 then
	   if SubID == 210 then
	      FirstWin_Text1:SetText(NF_L0_FOD400);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 220 then
	      FirstWin_Text1:SetText(NF_L0_WKD220);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 230 then
	      FirstWin_Text1:SetText(NF_L0_WKD230);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 240 then
	      FirstWin_Text1:SetText(NF_L0_WKD240);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 250 then
	      FirstWin_Text1:SetText(NF_L0_WKD250);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 260 then
	      FirstWin_Text1:SetText(NF_L0_WKD260);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 270 then
	      FirstWin_Text1:SetText(NF_L0_WKD270);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 280 then
	      FirstWin_Text1:SetText(NF_L0_WKD280);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 410 then
	      FirstWin_Text1:SetText(NF_L0_WKD410);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 420 then
	      FirstWin_Text1:SetText(NF_LO_PET10000);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 430 then
	      FirstWin_Text1:SetText(NF_L0_WKD430);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 440 then
	      FirstWin_Text1:SetText(NF_L0_WKD440);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 480 then
	      FirstWin_Text1:SetText(NF_L0_WKD480);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);


	   end;
	end;
end
