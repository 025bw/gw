
local win = UIAPI:GetElement("FirstWin");
--尼米尼医师
function NpcFunHP_SetUI(Type,Index)
	FirstWin_ButtonA1:SetPosition(200,500);
	FirstWin_ButtonA2:SetPosition(250,500);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunHP_SetText(Type,Index,BtnID,SubID)
	 if Index == 1 then
	   if SubID == 100 then
	      FirstWin_Text1:SetText(NF_HP_100);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   end;
	end;
end
