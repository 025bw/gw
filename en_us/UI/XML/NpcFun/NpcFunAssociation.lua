local win = UIAPI:GetElement("FirstWin");
--公会保卫活动
function NpcFunAssociation_SetUI(Type,Index)
	FirstWin_Text1:SetPosition(45,100);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	strDesig = ""
	win:Visible(true);

end

function NpcFunAssociation_SetText(Type,Index,BtnID,SubID)
		if Index == 1 then	------第1个页面-----
			if SubID == 1002 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1002);
                                Button:SetPosition(40,200)
				Button:Visible(true);
			end;
		
		elseif Index == 2 then		-------消息提示文字----------
			if SubID == 1003 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1003);
                                Button:SetPosition(40,120)
				Button:Visible(true);
			elseif SubID == 1004 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1004);
                                Button:SetPosition(40,150)
				Button:Visible(true);
			elseif SubID == 1005 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1005);
                                Button:SetPosition(40,180)
				Button:Visible(true);
			elseif SubID == 1006 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1006);
                                Button:SetPosition(40,210)
				Button:Visible(true);
			elseif SubID == 1007 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1007);
                                Button:SetPosition(40,240)
				Button:Visible(true);
			elseif SubID == 1008 then
				FirstWin_Text1:SetText(NF_L0_A1008);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1101 then
				FirstWin_Text1:SetText(NF_L0_A1009);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			end;
		elseif Index == 3 then		-------消息提示文字----------
			if SubID == 1103 then
				FirstWin_Text1:SetText(NF_L0_A1103);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 998 then
				FirstWin_Text1:SetText(NF_L0_A998);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 999 then
				FirstWin_Text1:SetText(NF_L0_A1010);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID % 100 == 14 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1112..((SubID-14)/100));
				Button:SetPosition(40,180)
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID % 100 == 15 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1113 .. ((SubID-15)/100));
				Button:SetPosition(40,200)
				Button:Visible(true)
				NPCFUN:EndMessage(true)
			elseif SubID == 1009 then
				FirstWin_Text1:SetText(NF_L0_A1010);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID % 100 == 11 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1114..((SubID-11)/100));
				Button:SetPosition(40,150)
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID % 100 == 12 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1115..((SubID-12)/100));
				Button:SetPosition(40,170)
				Button:Visible(true)
				NPCFUN:EndMessage(true);
			elseif SubID % 100 == 13 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_A1116..((SubID-13)/100));
				Button:SetPosition(40,190)
				Button:Visible(true)
			elseif SubID == 1010 then
				FirstWin_Text1:SetText(NF_L0_A1106);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1200 then
				FirstWin_Text1:SetText(NF_L0_A1200);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1201 then
				FirstWin_Text1:SetText(NF_L0_A1201);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1104 then
				FirstWin_Text1:SetText(NF_L0_A1104);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1105 then
				FirstWin_Text1:SetText(NF_L0_A1105);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1106 then
				FirstWin_Text1:SetText(NF_L0_A1106);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1107 then
				FirstWin_Text1:SetText(NF_L0_A1107);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1108 then
				FirstWin_Text1:SetText(NF_L0_A1108);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 1109 then
				FirstWin_Text1:SetText(NF_L0_A1109);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID%10 == 7 then
				FirstWin_Text1:SetText(NF_L0_A1110 .. ((SubID-7)/10));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID%10 == 8 then
				FirstWin_Text1:SetText(NF_L0_A1111 .. ((SubID-8)/10));
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			

			end;

		end;
end
