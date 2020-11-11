local win = UIAPI:GetElement("FirstWin");
--活动
function NpcFunMooncake_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunMooncake_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第几个页面------
		FirstWin_Text1:SetText(NF_L0_M101);
		FirstWin_Text1:Visible(true);
		if SubID== 100      then
			FirstWin_Text1:SetText(NF_L0_MN100);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,220);
			Button:SetText(NF_L0_M100);
			Button:Visible(true);

		end;
	elseif Index == 2 then	--服务器提示消息---------------------
		if SubID == 901 then
			FirstWin_Text1:SetText(NF_L0_M118);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 900 then
			FirstWin_Text1:SetText(NF_L0_S009);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 910 then
			FirstWin_Text1:SetText(NF_L0_M110);
			FirstWin_Text1:Visible(true);
	                FirstWin_ButtonA1:Visible(false);
	                FirstWin_ButtonA2:Visible(false);
                        FirstWin_ButtonA3:Visible(true);
                        FirstWin_ButtonA3:SetPosition(400,250);
		elseif SubID == 902 then
			FirstWin_Text1:SetText(NF_L0_M117);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);

		end;
	end;
end
