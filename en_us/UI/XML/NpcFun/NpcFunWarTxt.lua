local win = UIAPI:GetElement("FirstWin");
--战场说明
function NpcFunWarTxt_SetUI(Type,Index)
	FirstWin_Text1:SetPosition(45,100);
	FirstWin_Text1:Visible(false);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	strDesig = ""
	win:Visible(true);

end

function NpcFunWarTxt_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
		if SubID== 1 then
			FirstWin_Text1:SetText(NF_L0_WT2);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_WT1);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID== 2 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_WT3);
			Button:Visible(true);
			Button:SetPosition(25,155);
		elseif SubID== 3 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y8004);
			Button:Visible(true);
			Button:SetPosition(25,175);
		elseif SubID== 4 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_THWAR01);
			Button:Visible(true);
			Button:SetPosition(25,195);
		elseif SubID== 5 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_1001);
			Button:Visible(true);
			Button:SetPosition(25,215);
		elseif SubID == 6 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_1002);
			Button:Visible(true);
			Button:SetPosition(25,235);
		end;
	elseif Index == 2 then
		if SubID== 200 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W200);
			Button:Visible(true);
		elseif SubID== 201 then
			FirstWin_Text1:SetText(NF_L0_W200);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W301);
			Button:Visible(true);
			Button:SetPosition(25,95);
		elseif SubID== 202 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W302);
			Button:Visible(true);
			Button:SetPosition(25,115);
		elseif SubID== 203 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W303);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID== 204 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W304);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID== 301 then
			FirstWin_Text1:SetText(NF_L0_WT301);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 401 then
			FirstWin_Text1:SetText(NF_L0_FRAM730);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_WT401);
			Button:Visible(true);
			Button:SetPosition(25,95);
		elseif SubID== 402 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_WT402);
			Button:Visible(true);
			Button:SetPosition(25,115);
		elseif SubID== 403 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_WT403);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID== 404 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_WT404);
			Button:Visible(true);
			Button:SetPosition(25,155);
		elseif SubID== 501 then
			FirstWin_Text1:SetText(NF_L0_THWAR10501);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 601 then
			FirstWin_Text1:SetText(NF_L0_THWAR10601);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 701 then
			FirstWin_Text1:SetText(NF_L0_WQX1);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	elseif Index == 3 then --服务器消息提示
		if SubID ==211 then
			FirstWin_Text1:SetText(NF_L0_W211);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==212 then
			FirstWin_Text1:SetText(NF_L0_W212);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID==213 then
			FirstWin_Text1:SetText(NF_L0_W213);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==214 then
			FirstWin_Text1:SetText(NF_L0_W214);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==231 then
			FirstWin_Text1:SetText(NF_L0_W231);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==232 then
			FirstWin_Text1:SetText(NF_L0_W232);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID==233 then
			FirstWin_Text1:SetText(NF_L0_W233);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==234 then
			FirstWin_Text1:SetText(NF_L0_W234);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==450 then
			FirstWin_Text1:SetText(NF_L0_FRAM460);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==451 then
			FirstWin_Text1:SetText(NF_L0_FRAM461);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==452 then
			FirstWin_Text1:SetText(NF_L0_FRAM462);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==453 then
			FirstWin_Text1:SetText(NF_L0_FRAM463);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==454 then
			FirstWin_Text1:SetText(NF_L0_FRAM464);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	end;
end
