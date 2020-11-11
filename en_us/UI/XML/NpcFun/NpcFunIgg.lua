local win = UIAPI:GetElement("FirstWin");
--igg÷‹ƒÍ«Ï
function NpcFunIgg_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);
end

function NpcFunIgg_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
		if SubID == 100 then
			FirstWin_ButtonA1:Visible(false);
			FirstWin_ButtonA2:Visible(false);
			FirstWin_ButtonA3:Visible(true);
			FirstWin_Text1:SetText(igg100t);
	   		FirstWin_Text1:Visible(true);
                        FirstWin_ButtonA3:SetText(igg100b);
                        FirstWin_ButtonA3:SetPosition(45, 150);
		elseif SubID == 199 then
			FirstWin_Text1:SetText(NF_L0_MOON200);
	   		FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 198 then
			FirstWin_Text1:SetText(igg198t);
	   		FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 197 then
			FirstWin_Text1:SetText(igg197t);
	   		FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);

		end;
	end;
end;

function NpcFunIgg_SetMsg(Type,Index,PreSubID,SubID)
	if SubID== 100 then
		FirstWin_Text1:SetText(igg101t);
		FirstWin_Text1:Visible(true);
		NPCFUN:HaveMessageBox(true);

	end;
end
