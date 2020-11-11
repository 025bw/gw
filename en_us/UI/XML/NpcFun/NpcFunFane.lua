local win = UIAPI:GetElement("FirstWin");
--副本
function NpcFunFane_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunFane_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第几个页面
		if SubID >= 100 and SubID <= 106 then
                        SubID = SubID + 1 ;
			FirstWin_Text1:SetText(LuaText["NF_EM2_T100"] .. LuaText["NF_EM21_T" .. SubID] .. LuaText["NF_EM2_T101"]);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
        elseif SubID == 107 then
			FirstWin_Text3:SetText(LuaText["FANE_NMGV_T143"]);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,40);
			NPCFUN:EndMessage(true);
        elseif SubID >= 121 and SubID <= 123 then
			FirstWin_Text1:SetText(LuaText["FANE_NMGV_T" .. SubID]);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID,1000) == 1 then
			FirstWin_Text1:SetText(LuaText["FANE_NMGV_T124"] .. LuaText["FANE_NMGV_T125"] .. ((SubID-1)/1000) .. LuaText["FANE_NMGV_T127"] );
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
        elseif math.mod(SubID,1000) == 2 then
			FirstWin_Text2:SetText(LuaText["FANE_NMGV_T126"] .. ((SubID-2)/1000));
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,80);
			NPCFUN:EndMessage(true);
        elseif SubID == 124 or SubID == 125 then
			FirstWin_Text3:SetText(LuaText["FANE_NMGV_T" .. (SubID + 5)] );
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,100);
			NPCFUN:EndMessage(true);
        elseif SubID == 141 or SubID == 142 then
			FirstWin_Text1:SetText(LuaText["FANE_NMGV_T" .. SubID]);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	end;
end
