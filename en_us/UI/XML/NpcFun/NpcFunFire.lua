local win = UIAPI:GetElement("FirstWin");
--副本
function NpcFunFire_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunFire_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第几个页面
		if SubID == 999 then
			FirstWin_Text1:SetText(CJ_FIRET999);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
                elseif SubID == 998  then
			FirstWin_Text1:SetText(NF_L0_MOON903);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
                elseif SubID == 997  then
			FirstWin_Text1:SetText(CJ_FIRET997);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
                elseif SubID == 101  then
			FirstWin_Text1:SetText(CJ_FIRET101);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
                elseif SubID == 102  then
			FirstWin_Text1:SetText(CJ_FIRET102);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
                elseif SubID == 103  then
			FirstWin_Text1:SetText(CJ_FIRET103);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
                elseif SubID == 104  then
			FirstWin_Text1:SetText(CJ_FIRET104);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
                elseif SubID == 105  then
			FirstWin_Text1:SetText(CJ_FIRET105);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
                elseif SubID == 106  then
			FirstWin_Text1:SetText(CJ_FIRET106);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
                elseif SubID == 107  then
			FirstWin_Text1:SetText("");
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
                elseif math.mod(SubID,1000) == 9 then
			FirstWin_Text2:SetText(CJ_FIRET1000 .. "|cff39D8B8" .. math.floor((SubID-1)/1000) .. "|cFFFFFFFF" .. CJ_FIRET1001);
			FirstWin_Text2:Visible(true);
                        FirstWin_Text2:SetPosition(25,60)
			NPCFUN:EndMessage(true);

		end;
	end;
end
