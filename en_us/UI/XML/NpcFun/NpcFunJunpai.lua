local win = UIAPI:GetElement("FirstWin");
--圣诞节
function NpcFunJunpai_SetUI(Type,Index)
	FirstWin_Text1:SetPosition(45,100);
	FirstWin_Text1:Visible(false);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	strDesig = ""
	win:Visible(true);

end

function NpcFunJunpai_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第1个页面------
		if SubID == 100 then
			FirstWin_Text1:SetText(NF_L0_JPT100);
			FirstWin_Text1:Visible(true);
			InputText1:Visible(true);
			Input11:Visible(true); --设置为可见
			Input12:Visible(true);
			Input13:Visible(true);
			Input11:SetPosition(68,100);
			Input12:SetPosition(60,100);
			Input13:SetPosition(162,100);
			InputText1:SetPosition(64,101);
		end;

	elseif Index== 2 then
		if SubID == 999 then
			FirstWin_Text1:SetText(NF_L0_JPT999);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 998 then
			FirstWin_Text1:SetText(NF_L0_JPT998);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID, 100) == 1  then
			FirstWin_Text1:SetText(NF_L0_JPT101 .. "|cff39D8B8" .. ((SubID - 1)/100*1000) .. "|cFFFFFFFF" .. NF_L0_JPT102);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	end;
end;
