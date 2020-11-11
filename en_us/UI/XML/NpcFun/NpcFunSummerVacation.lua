local win = UIAPI:GetElement("FirstWin");
--Êî¼ÙÀñ°ü
function NpcFunChemist_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunSummerVacation_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
                FirstWin_Text1:SetText(LuaText["Summer_Page1_T0"]);
                FirstWin_Text1:Visible(true);
		if SubID >= 100 and SubID <= 102 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(LuaText["Summer_Page1_B" .. (SubID-99)]);
			Button:SetPosition(25,80 + (30 * (SubID - 100)));
			Button:Visible(true);
		end;
	elseif Index == 2 then
		if SubID >= 200 and SubID <= 202 then
			FirstWin_Text1:SetText(LuaText["Summer_Page2_T" .. (SubID - 199)]);
			FirstWin_Text1:Visible(true);
				if SubID ~= 201 then
					FirstWin_ItemBtn1:Visible(true);
					FirstWin_ItemBtn1:SetPosition(25,70);
                                else
					local Button = win:GetChild("FirstWin_Button" .. BtnID);
					Button:SetText(LuaText["Summer_Page2_B1"]);
					Button:SetPosition(25,80);
					Button:Visible(true);
				end;
		end;
	elseif Index == 3 then
		if SubID >= 300 then
			FirstWin_Text1:SetText(LuaText["Summer_Page3_T" .. (SubID - 299)]);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	end;
end;
