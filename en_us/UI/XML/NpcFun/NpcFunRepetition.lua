local win = UIAPI:GetElement("FirstWin");
--副本
function NpcFunRepetition_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunRepetition_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第几个页面
		if SubID== 11 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_R11);
			Button:Visible(true);
		elseif SubID== 12 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_R11);
			Button:Visible(true);
		elseif SubID== 13 then
			FirstWin_Text1:SetText(NF_L0_R0011);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_R13);
			Button:Visible(true);
		elseif SubID== 14 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_R14);
			Button:Visible(true);
		elseif SubID== 15 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(LuaText["NF_EM_B15"]);
			Button:Visible(true);
		elseif SubID== 16 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(LuaText["NF_EM_B16"]);
			Button:Visible(true);
		elseif SubID== 17 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(LuaText["NF_EM_B17"]);
			Button:Visible(true);
		end;
	elseif Index == 2 then    ----第二个页面
		if SubID== 111 then
			FirstWin_Text1:SetText(NF_L0_R111);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 112 then
			FirstWin_Text1:SetText(NF_L0_R112);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 113 then
			FirstWin_Text1:SetText(NF_L0_R113);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 114 then
			FirstWin_Text1:SetText(NF_L0_R114);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 115 then
			FirstWin_Text1:SetText(NF_L0_R115);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 116 then
			FirstWin_Text1:SetText(NF_L0_R116);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 1111 then
			FirstWin_Text1:SetText(NF_L0_R1111);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 200 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_R200);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID== 201 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_R201);
			Button:Visible(true);
			Button:SetPosition(25,155);
		elseif SubID== 202 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_R202);
			Button:Visible(true);
			Button:SetPosition(25,175);
		elseif SubID== 301 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_R301);
			Button:Visible(true);
			Button:SetPosition(25,195);
		elseif SubID ==203 then
			FirstWin_Text1:SetText(NF_L0_R203);
			FirstWin_Text1:Visible(true);
		elseif SubID== 204 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_R204);
			Button:Visible(true);
			Button:SetPosition(25,215);
		elseif SubID== 205 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_R205);
			Button:Visible(true);
			Button:SetPosition(25,195);
		elseif SubID ==206 then
			FirstWin_Text1:SetText(NF_L0_R206);
			FirstWin_Text1:Visible(true);
		elseif SubID ==208 then
			FirstWin_Text1:SetText(NF_L0_R208);
			FirstWin_Text1:Visible(true);
		elseif SubID== 209 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_R209);
			Button:Visible(true);
			Button:SetPosition(25,225);
		elseif SubID== 210 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_R210);
			Button:Visible(true);
			Button:SetPosition(25,200);
		elseif SubID== 211 then
			FirstWin_Text1:SetText(LuaText["NF_EM_T211"]);
			FirstWin_Text1:Visible(true);

			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(LuaText["NF_EM_B211"]);
			Button:Visible(true);
                        Button:SetPosition(25,155);
		elseif SubID== 229 then
			FirstWin_Text1:SetText(LuaText["NF_EM_T0229"]);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(LuaText["NF_EM_B229"]);
			Button:Visible(true);
		elseif SubID== 230 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(LuaText["NF_EM_B230"]);
			Button:Visible(true);
		elseif SubID == 231 then
			FirstWin_Text1:SetText(TrailTalk16);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(LuaText["NF_EM_B231"]);
			Button:Visible(true);
		elseif SubID ==212 then
			FirstWin_Text1:SetText(NF_L0_R212);
			FirstWin_Text1:Visible(true);
		elseif SubID >= 10000 then
			FirstWin_Text1:SetText(NF_L0_R117 .. SubID%10000) ;
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	elseif Index == 3 then    ----第三个页面
		if SubID== 1000 then
			FirstWin_Text1:SetText(NF_L0_R1000);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 300 or SubID == 301 then
			FirstWin_Text1:SetText(LuaText["NF_EM_T" .. SubID]);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 1001 then
			FirstWin_Text1:SetText(NF_L0_R1001);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 1002 then
			FirstWin_Text1:SetText(NF_L0_R1002);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 1200 then
			FirstWin_Text1:SetText(NF_L0_R1200);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 1203 then
			FirstWin_Text1:SetText(NF_L0_R1203);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,123) == 1 then
			FirstWin_Text1:SetText(NF_L0_R1560..((SubID-1)/123));
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 1203 then
			FirstWin_Text1:SetText(NF_L0_R1203);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 1500 then
			FirstWin_Text1:SetText(NF_L0_R1500);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 1501 then
			FirstWin_Text1:SetText(NF_L0_R1501);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 1502 then
			FirstWin_Text1:SetText(NF_L0_R1502);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 1510 then
			FirstWin_Text1:SetText(NF_L0_R1510);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 1511 then
			FirstWin_Text1:SetText(NF_L0_R1511);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 1521 then
			FirstWin_Text1:SetText(NF_L0_R1521);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 1800 then
			FirstWin_Text1:SetText(NF_L0_R1800);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID >= 10000 then
			FirstWin_Text1:SetText(NF_L0_R117 .. SubID%10000) ;
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	end;
end
function NpcFunRepetition_SetMsg(Type,Index,PreSubID,SubID)
	if SubID== 209 then
		FirstWin_Text1:SetText(NF_L0_R1600) ;
		FirstWin_Text1:Visible(true);
		FirstWin_ItemBtn1:Visible(true);
	        FirstWin_ItemBtn1:SetPosition(25,65);
		NPCFUN:HaveMessageBox(true);
	end;
end
