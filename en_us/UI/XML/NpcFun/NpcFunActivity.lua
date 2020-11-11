local win = UIAPI:GetElement("FirstWin");
--活动
function NpcFunActivity_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunActivity_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第几个页面------
		FirstWin_Text1:SetText(NF_L0_97);
		FirstWin_Text1:Visible(true);
		if SubID== 1      then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
                        Button:SetPosition(65,150);
			Button:SetText(NF_L0_98);
			Button:Visible(true);
		elseif SubID == 2 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
                        Button:SetPosition(65,180);
			Button:SetText(NF_L0_99);
			Button:Visible(true);
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
		end;
	end;		
end
