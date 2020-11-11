local win = UIAPI:GetElement("FirstWin");
--副本
function NpcFunNewthroughwar_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunNewthroughwar_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第几个页面
		if SubID >= 1 and SubID <= 20 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(LuaText["NF_L0_NTR0002"] .. SubID);
			Button:Visible(true);
			if SubID <= 5 then
			        FirstWin_Text1:SetText(LuaText["NF_L0_NTR1001"]);
			        FirstWin_Text1:Visible(true);
				Button:SetPosition(25,110+SubID*20)
			elseif SubID > 5  and SubID <= 10 then
			        FirstWin_Text1:SetText(LuaText["NF_L0_NTR1002"]);
			        FirstWin_Text1:Visible(true);
				Button:SetPosition(25,110+(SubID-5)*20)
			elseif SubID > 10  and SubID <= 15 then
			        FirstWin_Text1:SetText(LuaText["NF_L0_NTR1003"]);
			        FirstWin_Text1:Visible(true);
				Button:SetPosition(25,110+(SubID-10)*20)
			elseif SubID > 15  and SubID <= 20 then
			        FirstWin_Text1:SetText(LuaText["NF_L0_NTR1004"]);
			        FirstWin_Text1:Visible(true);
				Button:SetPosition(25,110+(SubID-15)*20)
			end;
		elseif SubID >= 51 and  SubID <= 54 then
			FirstWin_Text1:SetText(LuaText["NF_L0_NTR0011"]);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(LuaText["NF_L0_NTR0012"]..(SubID-50));
			Button:Visible(true);
		elseif SubID == 101 then
			FirstWin_Text1:SetText(LuaText["NF_L0_NTR0021"]);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(LuaText["NF_L0_NTR" .. SubID]);
			Button:Visible(true);
		elseif SubID == 102 then
			FirstWin_Text1:SetText(LuaText["NF_L0_NTR0022"]);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(LuaText["NF_L0_NTR" .. SubID]);
			Button:Visible(true);			
		end;
	elseif Index == 2 then
		if SubID == 100 or SubID == 200 or SubID == 300  or SubID == 500 then
			FirstWin_Text1:SetText(LuaText["NF_L0_NTR" .. SubID]);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true)
		elseif math.mod(SubID,100) == 1 then
			FirstWin_Text1:SetText(LuaText["NF_L0_NTR0051"] ..((SubID-1)/100));
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true)
		elseif math.mod(SubID,100) == 2 then
			FirstWin_Text2:SetText(LuaText["NF_L0_NTR0052"] ..((SubID-2)/100));
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,50);
			NPCFUN:EndMessage(true)
		elseif SubID >=	 1021 and  SubID <= 1023 then
			FirstWin_Text1:SetText(LuaText["NF_L0_NTR0061"]);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(LuaText["NF_L0_NTR" .. SubID]);
			Button:Visible(true);
		elseif SubID == 1100 or SubID == 1200 then
			FirstWin_Text1:SetText(LuaText["NF_L0_NTR" .. SubID]);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true)
			
		end;
	elseif Index == 3 then
		if SubID == 1100 or SubID == 1200 then
			FirstWin_Text1:SetText(LuaText["NF_L0_NTR" .. SubID]);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true)
		end;

	end;

end
function NpcFunNewthroughwar_SetMsg(Type,Index,PreSubID,SubID)
	if SubID >= 1 and SubID <= 20 then
	      FirstWin_Text1:SetText(LuaText["NF_L0_NTR11"]);
	      FirstWin_Text1:Visible(true); 
	      NPCFUN:HaveMessageBox(true);
	end;
end
