local win = UIAPI:GetElement("FirstWin");
--刺杀执政官
function NpcFunMurder2_SetUI(Type,Index)
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
    win:Visible(true);

end

function NpcFunMurder2_SetText(Type,Index,BtnID,SubID)
    if Index == 1 then
	if SubID >= 150 and SubID <= 156 then
		FirstWin_Text1:SetText(LuaText["Murder_T" .. SubID]);
		FirstWin_Text1:Visible(true);
		NPCFUN:EndMessage(true);
        end;
    end;
end
