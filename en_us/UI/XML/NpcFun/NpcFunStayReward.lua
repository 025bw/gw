--~ local t = {}
--~ t.Callback = function(SubID,i)
--~ 	if SubID >= 100000 then
--~ 		t.hour = (SubID - 100000)/3600 - (SubID - 100000)/3600%1
--~ 		UIList_StayReward[i][4] = string.format(StayReward3,t.hour)
--~ 		return true
--~ 	else
--~ 		return false
--~ 	end
--~ end
--~ UIList_StayReward = {
--~ 					{1,t,ENDTEXT,StayReward3},
--~ 					{1,102,ENDTEXT,StayReward4},
--~ 					{1,103,ENDTEXT,StayReward5},
--~ 					{1,104,ENDTEXT,StayReward6},
--~ 					{1,105,ENDTEXT,StayReward7},
--~ }

--~ local win = UIAPI:GetElement("FirstWin")
--~ UIMAKER:Create(win,'StayReward')

local win = UIAPI:GetElement("FirstWin");
function NpcFunStayReward_SetUI(Type,Index)
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
    win:Visible(true);
end

function NpcFunStayReward_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
		if SubID == 102 then
			FirstWin_Text1:SetText(StayReward4);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true)
		elseif SubID == 103 then
			FirstWin_Text1:SetText(StayReward5);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true)
		elseif SubID == 104 then
			FirstWin_Text1:SetText(StayReward6);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true)
		elseif SubID == 105 then
			FirstWin_Text1:SetText(StayReward7);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true)
		elseif SubID >= 100000 then
			local hour = (SubID - 100000)/3600 - (SubID - 100000)/3600%1
			local s = string.format(StayReward3,hour)
			FirstWin_Text1:SetText(s);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true)
	   end;
	end;
end
