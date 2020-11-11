local win = UIAPI:GetElement("FirstWin")
--赫拉克利斯
function NpcFunHeracles_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true)
	FirstWin_ButtonA2:Visible(true)
	win:Visible(true)

end

function NpcFunHeracles_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第几个页面------
		if SubID == 100 then
			FirstWin_Text1:SetText(TrailTalk1)
			FirstWin_Text1:Visible(true)
			local Button = win:GetChild("FirstWin_Button" .. BtnID)
			Button:SetPosition(25,175)
			Button:SetText(TrailTalk15)
			Button:Visible(true)
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 101 then
			FirstWin_Text1:SetText(TrailTalk2)
			FirstWin_Text1:Visible(true)
			local Button = win:GetChild("FirstWin_Button" .. BtnID)
			Button:SetPosition(25,175)
			Button:SetText(TrailTalk15)
			Button:Visible(true)
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 102 then
			FirstWin_Text1:SetText(TrailTalk3)
			FirstWin_Text1:Visible(true)
			local Button = win:GetChild("FirstWin_Button" .. BtnID)
			Button:SetPosition(25,175)
			Button:SetText(TrailTalk15)
			Button:Visible(true)
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 103 then
			FirstWin_Text1:SetText(TrailTalk4)
			FirstWin_Text1:Visible(true)
			local Button = win:GetChild("FirstWin_Button" .. BtnID)
			Button:SetPosition(25,175)
			Button:SetText(TrailTalk15)
			Button:Visible(true)
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 104 then
			FirstWin_Text1:SetText(TrailTalk5)
			FirstWin_Text1:Visible(true)
			local Button = win:GetChild("FirstWin_Button" .. BtnID)
			Button:SetPosition(25,175)
			Button:SetText(TrailTalk15)
			Button:Visible(true)
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 105 then
			FirstWin_Text1:SetText(TrailTalk6)
			FirstWin_Text1:Visible(true)
			local Button = win:GetChild("FirstWin_Button" .. BtnID)
			Button:SetPosition(25,175)
			Button:SetText(TrailTalk15)
			Button:Visible(true)
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 106 then
			FirstWin_Text1:SetText(TrailTalk7)
			FirstWin_Text1:Visible(true)
			local Button = win:GetChild("FirstWin_Button" .. BtnID)
			Button:SetPosition(25,175)
			Button:SetText(TrailTalk15)
			Button:Visible(true)
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 107 then
			FirstWin_Text1:SetText(TrailTalk8)
			FirstWin_Text1:Visible(true)
			local Button = win:GetChild("FirstWin_Button" .. BtnID)
			Button:SetPosition(25,175)
			Button:SetText(TrailTalk15)
			Button:Visible(true)
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 108 then
			FirstWin_Text1:SetText(TrailTalk9)
			FirstWin_Text1:Visible(true)
			local Button = win:GetChild("FirstWin_Button" .. BtnID)
			Button:SetPosition(25,175)
			Button:SetText(TrailTalk15)
			Button:Visible(true)
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 109 then
			FirstWin_Text1:SetText(TrailTalk10)
			FirstWin_Text1:Visible(true)
			local Button = win:GetChild("FirstWin_Button" .. BtnID)
			Button:SetPosition(25,175)
			Button:SetText(TrailTalk15)
			Button:Visible(true)
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 110 then
			FirstWin_Text1:SetText(TrailTalk11)
			FirstWin_Text1:Visible(true)
			local Button = win:GetChild("FirstWin_Button" .. BtnID)
			Button:SetPosition(25,175)
			Button:SetText(TrailTalk15)
			Button:Visible(true)
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 111 then
			FirstWin_Text1:SetText(TrailTalk12)
			FirstWin_Text1:Visible(true)
			local Button = win:GetChild("FirstWin_Button" .. BtnID)
			Button:SetPosition(25,175)
			Button:SetText(TrailTalk15)
			Button:Visible(true)
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 112 then
			FirstWin_Text1:SetText(TrailTalk13)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 113 then
			FirstWin_Text1:SetText(TrailTalk14)
			FirstWin_Text1:Visible(true)
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		end
	end
end
