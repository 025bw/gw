local win = UIAPI:GetElement("FirstWin");
--潘神
function NpcFunPan_SetUI(Type,Index)
	FirstWin_ButtonA1:SetPosition(145,500);
	FirstWin_ButtonA2:SetPosition(220,500);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunPan_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   if SubID == 1 then
	      FirstWin_Text1:SetText(XD_P001);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 2 then
	      FirstWin_Text1:SetText(XD_P002);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID >= 10000 then
	      FirstWin_Text1:SetText(XD_P003 .. 9-SubID%10000);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 13 then
	      FirstWin_Text1:SetText(XD_P013);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   end;
	end;
end
