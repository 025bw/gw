local win = UIAPI:GetElement("FirstWin");
--公会任务
function NpcFunGuildQuest_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunGuildQuest_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第几个页面------
		FirstWin_Text1:SetText(NF_L0_97);
		FirstWin_Text1:Visible(true);
		if SubID== 1 or SubID == 3 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,135);
			Button:SetText(NF_L0_98);
			Button:Visible(true);
		elseif SubID == 2 or SubID == 4 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,160);
			Button:SetText(NF_L0_99);
			Button:Visible(true);
		elseif SubID == 5 or SubID == 7 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,185);
			Button:SetText(NF_L0_1066);
			Button:Visible(false);
		end;
	elseif Index == 2 then	--服务器提示消息---------------------
		if SubID == 1000 then
			FirstWin_Text1:SetText(NF_L0_100);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1001 then
			FirstWin_Text1:SetText(NF_L0_101);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1002 then
			FirstWin_Text1:SetText(NF_L0_1067);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1003 then
			FirstWin_Text1:SetText(NF_L0_1068);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1004 then
			FirstWin_Text1:SetText(NF_L0_1069);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	end;
end


function NpcFunGuildQuest_SetMsg(Type,Index,PreSubID,SubID)
	if SubID== 1 then
	elseif SubID== 2 then

	end;
end
