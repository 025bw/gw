local win = UIAPI:GetElement("FirstWin");
--变性
function NpcDenaturation_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcDenaturation_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
		if SubID == 104 then
			FirstWin_Text1:SetText(Denaturation4);
			FirstWin_Text1:Visible(true);
		elseif SubID == 105 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,135);
			Button:SetText(Denaturation5);
			Button:Visible(true);
		end
	elseif Index== 2 then    ----第几个页面------
		if SubID == 101 then
			FirstWin_Text1:SetText(Denaturation1);
			FirstWin_Text1:Visible(true);
		elseif SubID == 102 then
			FirstWin_Text1:SetText(Denaturation2);
			FirstWin_Text1:Visible(true);
		elseif SubID == 103 then
			FirstWin_Text1:SetText(Denaturation3);
			FirstWin_Text1:Visible(true);
		end
	end;
end
