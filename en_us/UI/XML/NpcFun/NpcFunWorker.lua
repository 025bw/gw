local win = UIAPI:GetElement("FirstWin");
--五一节日使者

function NpcFunWorker_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   if SubID == 210 then
	      FirstWin_Text1:SetText(NF_L0_WKD240);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 220 then
	      FirstWin_Text1:SetText(NF_LO_PET10000);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 230 then
	      FirstWin_Text1:SetText(NF_L0_WKD2230);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 240 then
	      FirstWin_Text1:SetText(NF_L0_WKD230);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 250 then
	      FirstWin_Text1:SetText(NF_L0_FOD400);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 260 then
	      FirstWin_Text1:SetText(NF_L0_WKD2260);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   end;
	end;
end