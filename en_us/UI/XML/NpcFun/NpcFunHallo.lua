local win = UIAPI:GetElement("FirstWin");
--ÍòÊ¥½Ú
function NpcFunHallo_SetUI(Type,Index)
	FirstWin_ButtonA1:SetPosition(200,500);
	FirstWin_ButtonA2:SetPosition(250,500);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunHallo_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   if SubID == 1 then
	      FirstWin_Text1:SetText(NF_L0_Hallo1);
	      FirstWin_Text1:Visible(true);
	   elseif SubID == 2 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetPosition(25,135);
	      Button:SetText(NF_L0_Hallo2);
	      Button:Visible(true);
	   elseif SubID == 3 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetPosition(25,155);
	      Button:SetText(NF_L0_Hallo3);
	      Button:Visible(true);
	   elseif SubID == 4 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetPosition(25,175);
	      Button:SetText(NF_L0_Hallo4);
	      Button:Visible(true);
           elseif SubID == 105 then
	      FirstWin_Text1:SetText(NF_L0_Hallo105);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   end;
	elseif Index == 2 then
           if SubID == 5 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetPosition(25,135);
	      Button:SetText(NF_L0_Hallo5);
	      Button:Visible(true);
           elseif SubID == 6 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetPosition(25,155);
	      Button:SetText(NF_L0_Hallo6);
	      Button:Visible(true);
           elseif SubID == 7 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetPosition(25,175);
	      Button:SetText(NF_L0_Hallo7);
	      Button:Visible(true);
           elseif SubID == 8 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetPosition(25,195);
	      Button:SetText(NF_L0_Hallo8);
	      Button:Visible(true);
	   elseif SubID == 100 then
	      FirstWin_Text1:SetText(NF_L0_Hallo100);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 101 then
	      FirstWin_Text1:SetText(NF_L0_Hallo101);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 102 then
	      FirstWin_Text1:SetText(NF_L0_Hallo102);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 103 then
	      FirstWin_Text1:SetText(NF_L0_Hallo101);
	      FirstWin_Text1:SetPosition(105,140);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 104 then
	      FirstWin_Text1:SetText(NF_L0_Hallo104);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 108 then
	      FirstWin_Text1:SetText(NF_L0_Hallo108);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 201 then
	      FirstWin_Text1:SetText(NF_L0_Hallo201);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
           elseif math.mod(SubID ,1000) == 1 then
	      FirstWin_Text1:SetText("|cffF14187" .. NF_L0_Hallo202 .. ((SubID-1)/1000) .. NF_L0_Hallo203 .. "|cFFFFFFFF");
	      FirstWin_Text1:Visible(true);
	   end;
	elseif Index == 3 then
	   if SubID == 106 then
	      FirstWin_Text1:SetText(NF_L0_Hallo106);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 107 then
	      FirstWin_Text1:SetText(NF_L0_Hallo107);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 109 then
	      FirstWin_Text1:SetText(NF_L0_Hallo109);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
           end;
	end;
end
