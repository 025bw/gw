local win = UIAPI:GetElement("FirstWin");
--活动
function NpcFunNewYear_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunNewYear_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第几个页面------
		FirstWin_Text1:SetText(LuaText["NF_NY_T10"]);
		FirstWin_Text1:Visible(true);
		--NPCFUN:EndMessage(true);
		if SubID >= 100 and SubID <= 105 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,135 + (SubID - 100) * 20);
			Button:SetText(LuaText["NF_NY_B" .. SubID]);
			Button:Visible(true);
		end;
	elseif Index == 2 then	--
		if SubID >= 200 and SubID <= 202  then
			FirstWin_Text1:SetText(LuaText["NF_NY_T20"]);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,135 + (SubID - 200) * 20);
			Button:SetText(LuaText["NF_NY_B" .. SubID]);
			Button:Visible(true);
		elseif SubID == 203 or SubID == 204 then
			FirstWin_Text1:SetText(LuaText["NF_NY_T21"]);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,95 + (SubID - 203) * 20);
			Button:SetText(LuaText["NF_NY_B" .. SubID]);
			Button:Visible(true);
		elseif SubID == 205 or SubID == 206 then
			FirstWin_Text1:SetText(LuaText["NF_NY_T22"]);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,95 + (SubID - 205) * 20);
			Button:SetText(LuaText["NF_NY_B" .. SubID]);
			Button:Visible(true);
		elseif SubID == 207 or SubID == 208 then
			FirstWin_Text1:SetText(LuaText["NF_NY_T23"]);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,95 + (SubID - 207) * 20);
			Button:SetText(LuaText["NF_NY_B" .. SubID]);
			Button:Visible(true);
		elseif SubID == 209 or SubID == 210 then
			FirstWin_Text1:SetText(LuaText["NF_NY_T24"]);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,95 + (SubID - 209) * 20);
			Button:SetText(LuaText["NF_NY_B" .. SubID]);
			Button:Visible(true);
		elseif SubID == 211 or SubID == 212 then
			FirstWin_Text1:SetText(LuaText["NF_NY_T25"]);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(LuaText["NF_NY_T26"]);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,125);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(LuaText["NF_NY_B" .. SubID]);
			Button:SetPosition(25,105 + (SubID - 211) * 40);
			Button:Visible(true);
		end;
	elseif Index == 3 then	--
		if SubID == 300  then
			FirstWin_Text1:SetText(LuaText["NF_NY_T300"]);
			FirstWin_Text1:Visible(true);
           		FirstWin_ItemBtn1:Visible(true);
            		FirstWin_ItemBtn1:SetPosition(25,135);
		elseif SubID >= 302 and SubID <= 309 then 
            		FirstWin_Text1:SetText(LuaText["NF_NY_T" .. SubID]);
            		FirstWin_Text1:Visible(true);
            		NPCFUN:EndMessage(true);
		end;
	elseif Index == 4 then
		if SubID == 400 then
			FirstWin_Text1:SetText(LuaText["NF_NY_T" .. SubID]);
			FirstWin_Text1:Visible(true);
            		NPCFUN:EndMessage(true);
                elseif SubID == 401 then
			FirstWin_Text1:SetText(LuaText["NF_NY_T302"]);
			FirstWin_Text1:Visible(true);
            		NPCFUN:EndMessage(true);
                elseif SubID == 402 then
			FirstWin_Text1:SetText(LuaText["NF_NY_T305"]);
			FirstWin_Text1:Visible(true);
            		NPCFUN:EndMessage(true);
                elseif SubID == 403 then
			FirstWin_Text1:SetText(LuaText["NF_NY_T307"]);
			FirstWin_Text1:Visible(true);
            		NPCFUN:EndMessage(true);
		end;
	end;
end
