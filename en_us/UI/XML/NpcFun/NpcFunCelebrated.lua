local win = UIAPI:GetElement("FirstWin");
--副本
function NpcFunCelebrated_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunCelebrated_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第几个页面
		if SubID >= 1 and SubID <= 12 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,135);
			Button:SetText(LuaText["NF_L0_CE" .. SubID]);
			Button:Visible(true);
			if SubID <= 6 then
				Button:SetPosition(25,125+SubID*20)
			elseif SubID > 6  and SubID <= 12 then
				Button:SetPosition(260,125+(SubID-6)*20)
			end;
                elseif math.mod(SubID,100) == 51 then
			FirstWin_Text1:SetText(LuaText["NF_L0_CE51"] .. math.floor(((SubID-51)/100)));
			FirstWin_Text1:Visible(true);
            
		end;
	elseif Index == 2 then
		if SubID == 100 or SubID == 500 or SubID == 200 then
			FirstWin_Text1:SetText(LuaText["NF_L0_CE" .. SubID]);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true)
		elseif math.mod(SubID,10) == 1 then
			FirstWin_Text1:SetText(LuaText["NF_L0_CE" .. (math.mod((SubID-61),1000)/20+100)] .. math.floor(SubID/1000) .. LuaText["NF_L0_CE1000"]);
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA3:Visible(true);
			FirstWin_ButtonA3:SetText(LuaText["NF_L0_CE10000"]);
			FirstWin_ButtonA3:SetPosition(420,250);
			FirstWin_ButtonA1:Visible(false);
			FirstWin_ButtonA2:Visible(false);
		end;
	end;
			
end
