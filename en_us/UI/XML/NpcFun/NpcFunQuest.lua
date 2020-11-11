local win = UIAPI:GetElement("FirstWin");
--Ëæ»úÈÎÎñ
function NpcFunDivrce_SetUI(Type,Index)
	FirstWin_ButtonA1:SetPosition(145,500);
	FirstWin_ButtonA2:SetPosition(220,500);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunQuest_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   if SubID == 101 then
	      FirstWin_Text1:SetText(NF_L0_QT0101);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:NeedMessage(False);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_QT101);
		  Button:SetPosition(25,100);
	      Button:Visible(true);
	   elseif SubID == 102 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_QT102);
		  Button:SetPosition(25,120);
	      Button:Visible(true);
	   end;
	elseif Index == 2 then
	   if SubID == 210 then
	      FirstWin_Text1:SetText(NF_L0_QT210);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 240 then
	      FirstWin_Text1:SetText(NF_L0_QT240);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 220 then
	      FirstWin_Text1:SetText(NF_L0_QT220);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 230 then
	      FirstWin_Text1:SetText(NF_L0_QT230);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 250 then
	      FirstWin_Text1:SetText(NF_L0_QT250);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 202 then
	      FirstWin_Text1:SetText(NF_L0_QT202);
	      FirstWin_Text1:Visible(true);
              InputText1:Visible(true);
	      InputText1:SetPosition(60,60);
	      Input11:Visible(true);
	      Input11:SetPosition(60,60);
	      Input12:Visible(true);
	      Input12:SetPosition(52,60);
	      Input13:Visible(true);
	      Input13:SetPosition(154,60);

	   end;
	elseif Index == 3 then
	   if SubID == 310 then
	      FirstWin_Text1:SetText(NF_L0_QT310);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 320 then
	      FirstWin_Text1:SetText(NF_L0_QT320);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 330 then
	      FirstWin_Text1:SetText(NF_L0_QT330);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
           end;
	end;
end
