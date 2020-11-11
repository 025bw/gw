local win = UIAPI:GetElement("FirstWin");
--≤÷ø‚¿©’π
function NpcFunWarehouse_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);
end

function NpcFunWarehouse_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   if SubID == 100 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(warehouse100B);
	      Button:Visible(true);
	      Button:SetPosition(25,135);
              FirstWin_Text1:SetText(warehouse100T);
	      FirstWin_Text1:Visible(true);
           elseif SubID == 998 then
              FirstWin_Text1:SetText(warehouse998T);
	      FirstWin_Text1:Visible(true);
              NPCFUN:EndMessage(true);
           elseif SubID == 40 then
              FirstWin_Text1:SetText(warehouse40T);
	      FirstWin_Text1:Visible(true);
           elseif SubID == 80 then
              FirstWin_Text1:SetText(warehouse80T);
	      FirstWin_Text1:Visible(true);
           elseif SubID == 120 then
              FirstWin_Text1:SetText(warehouse120T);
	      FirstWin_Text1:Visible(true);
	   end;
        elseif Index == 2 then
	   if SubID == 201 then
              GameAPI.SetStorageNum(80)
              FirstWin_Text1:SetText(warehouse201T);
	      FirstWin_Text1:Visible(true);
              NPCFUN:EndMessage(true);
	   elseif SubID == 202 then
              GameAPI.SetStorageNum(120)
              FirstWin_Text1:SetText(warehouse202T);
	      FirstWin_Text1:Visible(true);
              NPCFUN:EndMessage(true);
	   elseif SubID == 203 then
              GameAPI.SetStorageNum(160)
              FirstWin_Text1:SetText(warehouse203T);
	      FirstWin_Text1:Visible(true);
              NPCFUN:EndMessage(true);
	   elseif SubID == 901 then
              FirstWin_Text1:SetText(warehouse901T);
	      FirstWin_Text1:Visible(true);
              NPCFUN:EndMessage(true);
	   elseif SubID == 902 then
              FirstWin_Text1:SetText(warehouse902T);
	      FirstWin_Text1:Visible(true);
              NPCFUN:EndMessage(true);
	   elseif SubID == 903 then
              FirstWin_Text1:SetText(warehouse903T);
	      FirstWin_Text1:Visible(true);
              NPCFUN:EndMessage(true);
           elseif SubID == 999 then
              FirstWin_Text1:SetText(warehouse100T);
	      FirstWin_Text1:Visible(true);
              NPCFUN:EndMessage(true);
	   end;
	end;
end