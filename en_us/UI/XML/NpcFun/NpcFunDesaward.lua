local win = UIAPI:GetElement("FirstWin");
--称谓奖励
function NpcFunDesaward_SetUI(Type,Index)
	FirstWin_Text1:SetPosition(45,100);
	FirstWin_Text2:SetPosition(45,120);
	FirstWin_Text3:SetPosition(45,160);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	FirstWin_Button1:SetPosition(35,160);
	FirstWin_Button2:SetPosition(35,185);
        FirstWin_Button3:SetPosition(35,210);
	FirstWin_Button4:SetPosition(35,235);
	FirstWin_Button5:SetPosition(35,260);
	FirstWin_Button6:SetPosition(35,285);
	FirstWin_Button7:SetPosition(35,310);
	FirstWin_Button8:SetPosition(35,335);
	FirstWin_Button9:SetPosition(35,360);
	FirstWin_Button10:SetPosition(35,385);
	FirstWin_Button11:SetPosition(35,410);
	FirstWin_Button12:SetPosition(35,435);
	win:Visible(true);

end

function NpcFunDesaward_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第1个页面------
		if SubID == 100 then
			FirstWin_Text1:SetText(NF_L0_DES517);
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 1 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES500);
			Button:Visible(true);
		elseif SubID == 2 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES501);
			Button:Visible(true);
		elseif SubID == 3 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES502);
			Button:Visible(true);
		elseif SubID == 4 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES503);
			Button:Visible(true);
		elseif SubID == 5 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES504);
			Button:Visible(true);
		elseif SubID == 6 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES505);
			Button:Visible(true);
		end;
	elseif Index == 2 then	--第2个页面---------------------
		if SubID == 500 then
			FirstWin_Text1:SetText("操作异常");
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 600 then
			FirstWin_Text1:SetText(NF_L0_DES506);
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 601 then
			FirstWin_Text1:SetText(NF_L0_DES507);
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 1000 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES508);
			Button:Visible(true);
		elseif SubID == 1200 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES509);
			Button:Visible(true);
		elseif SubID == 1201 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES510);
			Button:Visible(true);
		elseif SubID == 2500 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES511);
			Button:Visible(true);
		elseif SubID == 2501 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES512);
			Button:Visible(true);

		end;
	elseif Index == 3 then	--第3个页面---------------------
		if SubID == 500 then
			FirstWin_Text1:SetText(NF_L0_DES11);
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 501 then
			FirstWin_Text1:SetText(NF_L0_DES513);
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 502 then
			FirstWin_Text1:SetText(NF_L0_DES514);
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 503 then
			FirstWin_Text1:SetText(NF_L0_DES515);
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 504 then
			FirstWin_Text1:SetText("状态已经达到最大,不能再领取");
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 505 then
			FirstWin_Text1:SetText("状态已经达到最大,不能再领取");
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 510 then
			FirstWin_Text1:SetText(NF_L0_DES516);
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 511 then
			FirstWin_Text1:SetText(NF_L0_DES516);
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 512 then
			FirstWin_Text1:SetText(NF_L0_DES516);
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 513 then
			FirstWin_Text1:SetText(NF_L0_DES516);
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 514 then
			FirstWin_Text1:SetText(NF_L0_DES516);
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			NPCFUN:EndMessage(true);
		end;
	end;
end
