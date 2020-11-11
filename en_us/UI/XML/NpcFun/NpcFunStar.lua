local win = UIAPI:GetElement("FirstWin");
--星座幸运日
function NpcFunStar_SetUI(Type,Index)
	FirstWin_Text1:SetPosition(45,100);
	FirstWin_Text2:SetPosition(45,120);
	FirstWin_Text3:SetPosition(45,160);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	strDesig = ""
	win:Visible(true);

end

function NpcFunStar_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   if SubID < 1000 then
	      FirstWin_Text1:SetText(NF_L0_XZ1);
	      FirstWin_Text1:Visible(true);
	   elseif SubID>=1000 then
	      FirstWin_Text1:SetText(NF_L0_XZ6);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);

	   end;
	   if SubID == 1 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_XZ2);
	      Button:Visible(true);
	      Button:SetPosition(25,135);
	   elseif SubID == 2 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_XZ3);
	      Button:Visible(true);
	      Button:SetPosition(25,160);
	   elseif SubID == 3 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_XZ4);
	      Button:Visible(true);
	      Button:SetPosition(25,185);
	   elseif SubID == 4 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_XZ5);
	      Button:Visible(true);
	      Button:SetPosition(25,210);
	   end;
	end;
	if Index == 2 then
	   if SubID >= 1 and SubID <= 24 then
	      FirstWin_Text1:SetText(NF_L0_XZ101);
	      FirstWin_Text1:Visible(true);
	   elseif SubID >= 26 and SubID <= 39 then
	      FirstWin_Text1:SetText(NF_L0_XZ102);
	      FirstWin_Text1:Visible(true); 
	   elseif SubID >= 1000 then
	      FirstWin_Text1:SetText(NF_L0_XZ6);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);        
	   end;
	   if SubID == 1 or SubID == 13 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_XZ108);
	      Button:Visible(true);
	      Button:SetPosition(25,135);
	   elseif SubID == 2 or SubID == 14 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_XZ109);
	      Button:Visible(true);
	      Button:SetPosition(25,155);
	   elseif SubID == 3 or SubID == 15 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_XZ110);
	      Button:Visible(true);
	      Button:SetPosition(25,175);
	   elseif SubID == 4 or SubID == 16 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_XZ111);
	      Button:Visible(true);
	      Button:SetPosition(25,195);
	   elseif SubID == 5 or SubID == 17 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_XZ112);
	      Button:Visible(true);
	      Button:SetPosition(25,215);
	   elseif SubID == 6 or SubID == 18 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_XZ113);
	      Button:Visible(true);
	      Button:SetPosition(25,235);
	   elseif SubID == 7 or SubID == 19 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_XZ114);
	      Button:Visible(true);
	      Button:SetPosition(320,135);
	   elseif SubID == 8 or SubID == 20 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_XZ115);
	      Button:Visible(true);
	      Button:SetPosition(320,155);
	   elseif SubID == 9 or SubID == 21 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_XZ116);
	      Button:Visible(true);
	      Button:SetPosition(320,175);
	   elseif SubID == 10 or SubID == 22 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_XZ117);
	      Button:Visible(true);
	      Button:SetPosition(320,195);
	   elseif SubID == 11 or SubID == 23 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_XZ118);
	      Button:Visible(true);
	      Button:SetPosition(320,215);
	   elseif SubID == 12 or SubID == 24 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_XZ119);
	      Button:Visible(true);
	      Button:SetPosition(320,235);
	   elseif SubID == 26 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_XZ20);
	      Button:Visible(true);
	      Button:SetPosition(25,180);
	   elseif SubID == 39 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_XZ20);
	      Button:Visible(true);
	      Button:SetPosition(25,180);
	   end;
	end;
	if Index == 3 then
	   if SubID >= 1000 then
	      FirstWin_Text1:SetText(NF_L0_XZ6);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID == 500 then
	      FirstWin_Text1:SetText(NF_L0_XZ7);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	   end;
	   if SubID == 100 then
	      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_XZ27.."|cffFFFFFF");
	      FirstWin_Text2:Visible(true);
	      NPCFUN:EndMessage(true);

	   elseif SubID == 1 then
	      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_XZ32.."|cffFFFFFF");
	      FirstWin_Text2:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID == 101 then
	      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_XZ28.."|cffFFFFFF");
	      FirstWin_Text2:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID == 102 then
	      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_XZ29.."|cffFFFFFF");
	      FirstWin_Text2:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID == 103 then
	      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_XZ30.."|cffFFFFFF");
	      FirstWin_Text2:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID == 104 then
	      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_XZ31.."|cffFFFFFF");
	      FirstWin_Text2:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID == 105 then
	      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_XZ33.."|cffFFFFFF");
	      FirstWin_Text2:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID == 106 then
	      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_XZ34.."|cffFFFFFF");
	      FirstWin_Text2:Visible(true);
	      NPCFUN:EndMessage(true);
	   end;
	end;
end
