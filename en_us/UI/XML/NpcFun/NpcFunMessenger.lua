local win = UIAPI:GetElement("FirstWin");
--潘神使者
function NpcFunMessenger_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	strDesig = ""
	win:Visible(true);

end

function NpcFunMessenger_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第1个页面------
		if SubID == 1 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MSER1);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 2 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MSER2);
			Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID == 3 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MSER3);
			Button:SetPosition(25,175)
			Button:Visible(true);
		elseif SubID ==1000 then
			FirstWin_Text1:SetText(NF_L0_MSER1000);
			FirstWin_Text1:Visible(true);
		elseif SubID == 11 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MSERS1);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 12 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MSERS2);
			Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID == 13 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_MSERS3);
			Button:SetPosition(25,175)
			Button:Visible(true);
		elseif SubID ==10001 then
			FirstWin_Text1:SetText(NF_L0_MSERS1000);
			FirstWin_Text1:Visible(true);
		elseif SubID == 500 then
			FirstWin_Text1:SetText(NF_L0_MSER521);
			FirstWin_Text1:Visible(true);
			FirstWin_ItemBtn1:Visible(true);
			FirstWin_ItemBtn1:SetPosition(60,135);
		end;
	elseif Index == 2 then	--第2个页面---------------------
		if SubID == 301 then
			FirstWin_Text1:SetText(NF_L0_MSERS301);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 31 then
			FirstWin_Text1:SetText(NF_L0_MSERS31);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1001 then
			FirstWin_Text1:SetText(NF_L0_MSERS1001);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 51 then
			FirstWin_Text1:SetText(NF_L0_MSER111);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 52 then
			FirstWin_Text1:SetText(NF_L0_MSER102);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 53 then
			FirstWin_Text1:SetText(NF_L0_MSER53);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 253 then
			FirstWin_Text1:SetText(NF_L0_MSER253);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 101 then
			FirstWin_Text1:SetText(NF_L0_MSER101);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 11 then
			FirstWin_Text1:SetText(NF_L0_MSER11);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 301 then
			FirstWin_Text1:SetText(NF_L0_MSER301);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 32 then
			FirstWin_Text1:SetText(NF_L0_MSER31);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 102 then
			FirstWin_Text1:SetText(NF_L0_MSER102);
			FirstWin_Text1:Visible(true);
		elseif SubID == 103 then
			FirstWin_Text1:SetText(NF_L0_MSER103);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 104 then
			FirstWin_Text1:SetText(NF_L0_MSER104);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 111 then
			FirstWin_Text1:SetText(NF_L0_MSER111);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1001 then
			FirstWin_Text1:SetText(NF_L0_MSER1001);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 21 then
			FirstWin_Text1:SetText(NF_L0_MSER21);
			FirstWin_Text1:Visible(true);
			FirstWin_ItemBtn1:Visible(true);
			FirstWin_ItemBtn1:SetPosition(60,135);
			FirstWin_ItemBtn2:Visible(true);
			FirstWin_ItemBtn2:SetPosition(160,135);
			FirstWin_ItemBtn3:Visible(true);
			FirstWin_ItemBtn3:SetPosition(260,135);
		end;
	elseif Index == 3 then	--第3个页面---------------------
		if SubID == 41 then
			FirstWin_Text1:SetText(NF_L0_MSER41);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 42 then
			FirstWin_Text1:SetText(NF_L0_MSER42);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1001 then
			FirstWin_Text1:SetText(NF_L0_MSER1001);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 102 then
			FirstWin_Text1:SetText(NF_L0_MSER102);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 401 then
			FirstWin_Text1:SetText(NF_L0_MSER401);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	end;
end
