local win = UIAPI:GetElement("FirstWin");
--活动
function NpcFunWork_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunWork_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第几个页面------
		if SubID== 100      then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,155);
			Button:SetText(NF_L0_WK100);
			Button:Visible(true);
			FirstWin_Text1:SetText(NF_L0_WK132);
			FirstWin_Text1:Visible(true);
		elseif SubID== 101      then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,175);
			Button:SetText(NF_L0_WK101);
			Button:Visible(true);
		elseif SubID== 102      then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,195);
			Button:SetText(NF_L0_WK102);
			Button:Visible(true);
		elseif SubID== 103      then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,215);
			Button:SetText(NF_L0_WK103);
			Button:Visible(true);
		end;
	elseif Index == 2 then	--服务器提示消息---------------------
		if SubID == 110 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(320,135);
			Button:SetText(NF_L0_WK104);
			Button:Visible(true);
		elseif SubID== 111      then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(320,155);
			Button:SetText(NF_L0_WK105);
			Button:Visible(true);
		elseif SubID== 112      then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(320,175);
			Button:SetText(NF_L0_WK106);
			Button:Visible(true);
		elseif SubID== 113      then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(320,195);
			Button:SetText(NF_L0_WK107);
			Button:Visible(true);
		elseif SubID== 116      then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,215);
			Button:SetText(NF_L0_WK108);
			Button:Visible(true);
		elseif SubID== 117      then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,235);
			Button:SetText(NF_L0_WK109);
			Button:Visible(true);
		elseif SubID== 118      then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(320,215);
			Button:SetText(NF_L0_WK110);
			Button:Visible(true);
		elseif SubID== 119      then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(320,235);
			Button:SetText(NF_L0_WK111);
			Button:Visible(true);
		elseif SubID == 128 then
			FirstWin_Text1:SetText(NF_L0_WK126);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 129 then
			FirstWin_Text1:SetText(NF_L0_WK125);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 114 then
           	        FirstWin_ItemBtn1:Visible(true);
                        FirstWin_ItemBtn1:SetPosition(25,135);
			FirstWin_Text1:SetText(NF_L0_WK131);
			FirstWin_Text1:Visible(true);
		elseif SubID == 120 then
           	        FirstWin_ItemBtn1:Visible(true);
                        FirstWin_ItemBtn1:SetPosition(25,100);
			FirstWin_Text1:SetText(NF_L0_WK127);
			FirstWin_Text1:Visible(true);
		elseif SubID == 121 then
           	        FirstWin_ItemBtn2:Visible(true);
                        FirstWin_ItemBtn2:SetPosition(25,175);
			FirstWin_Text2:SetText(NF_L0_WK128);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,140);
		elseif SubID == 123 then
           	        FirstWin_ItemBtn1:Visible(true);
                        FirstWin_ItemBtn1:SetPosition(25,100);
			FirstWin_Text1:SetText(NF_L0_WK129);
			FirstWin_Text1:Visible(true);
		elseif SubID == 124 then
           	        FirstWin_ItemBtn2:Visible(true);
                        FirstWin_ItemBtn2:SetPosition(25,195);
			FirstWin_Text2:SetText(NF_L0_WK130);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,150);
		end;
	elseif Index == 3 then	--服务器提示消息---------------------
		if SubID == 200 then
			FirstWin_Text1:SetText(NF_L0_WK125);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 201 then
			FirstWin_Text1:SetText(NF_L0_WK113);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 202 then
			FirstWin_Text1:SetText(NF_L0_WK114);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 203 then
			FirstWin_Text1:SetText(NF_L0_WK115);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 205 then
			FirstWin_Text1:SetText(NF_L0_WK123);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 130 then
			FirstWin_Text1:SetText(NF_L0_WK116);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 209 then
			FirstWin_Text1:SetText(NF_L0_WK117);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 206 then
			FirstWin_Text1:SetText(NF_L0_WK118);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 207 then
			FirstWin_Text1:SetText(NF_L0_WK120);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 208 then
			FirstWin_Text1:SetText(NF_L0_WK119);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 211 then
			FirstWin_Text1:SetText(NF_L0_WK121);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 213 then
			FirstWin_Text1:SetText(NF_L0_WK119);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 214 then
			FirstWin_Text1:SetText(NF_L0_WK124);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	end;
end
