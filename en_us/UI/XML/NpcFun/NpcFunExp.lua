local win = UIAPI:GetElement("FirstWin");
--圣诞节
function NpcFunExp_SetUI(Type,Index)
	FirstWin_Text1:SetPosition(45,100);
	FirstWin_Text1:Visible(false);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	strDesig = ""
	win:Visible(true);

end

function NpcFunExp_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第1个页面------
		if SubID == 900 then
			FirstWin_Text1:SetText(NF_L0_E001);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 906 then
			FirstWin_Text1:SetText(NF_L0_E002);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 907 then
			FirstWin_Text1:SetText(NF_L0_E003);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 106 then
			FirstWin_Text1:SetText(NF_L0_E006);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_E004);
			Button:SetPosition(25,135);
			Button:Visible(true);
		elseif SubID == 107 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_E005);
			Button:SetPosition(25,155);
			Button:Visible(true);
		end;

	elseif Index== 2 then
		if SubID == 908 or SubID == 909 then
			FirstWin_Text1:SetText(NF_L0_E007);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 920 then
			FirstWin_Text1:SetText(NF_L0_E020);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID, 10) == 1  then
			FirstWin_Text1:SetText(NF_L0_E008 .. NF_L0_E009 .. "|cff39D8B8" .. ((SubID - 1)/10) .. "|cFFFFFFFF");
			FirstWin_Text1:Visible(true);
		elseif math.mod(SubID, 10) == 2  then
			FirstWin_Text2:SetText(NF_L0_E010 .. "|cff39D8B8" .. ((SubID - 2)/10) .. "|cFFFFFFFF");
			FirstWin_Text2:Visible(true);
                        FirstWin_Text2:SetPosition(25,145);
		elseif math.mod(SubID, 10) == 3  then
			FirstWin_Text3:SetText(NF_L0_E011 .. "|cff39D8B8" .. ((SubID - 3)/10) .. "|cFFFFFFFF" );
			FirstWin_Text3:Visible(true);
                        FirstWin_Text3:SetPosition(25,165);
			NPCFUN:EndMessage(true);
		elseif SubID == 200 then
			FirstWin_Text1:SetText(NF_L0_E012);
			FirstWin_Text1:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true);
			Input13:Visible(true);
			Input11:SetPosition(33,50);
			Input12:SetPosition(25,50);
			Input13:SetPosition(127,50);
			InputText1:SetPosition(29,51);
		elseif math.mod(SubID, 10) == 4 then
			FirstWin_Text2:SetText(NF_L0_E013 .. NF_L0_E015 .. "|cff39D8B8" .. ((SubID - 4)/10) .. "|cFFFFFFFF" );
			FirstWin_Text2:Visible(true);
                        FirstWin_Text2:SetPosition(25,80);
		elseif math.mod(SubID, 10) == 5 then
			FirstWin_Text3:SetText(NF_L0_E014 .. "|cff39D8B8" .. ((SubID - 5)/10) .. "|cFFFFFFFF" .. "\n\n" .. NF_L0_E016);
			FirstWin_Text3:Visible(true);
                        FirstWin_Text3:SetPosition(25,115);
		end;

	elseif Index== 3 then
		if SubID == 916 then
			FirstWin_Text1:SetText(NF_L0_E007);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 917 then
			FirstWin_Text1:SetText(NF_L0_E017);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 918 then
			FirstWin_Text1:SetText(NF_L0_E018);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 919 then
			FirstWin_Text1:SetText(NF_L0_E019);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 926 then
			FirstWin_Text1:SetText(NF_L0_E021);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);

		end;
	end;
end;
