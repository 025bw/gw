local win = UIAPI:GetElement("FirstWin");
--“©º¡ ¶
function NpcFunChemist_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunChemist_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then 
		if SubID == 101 then
			FirstWin_Text1:SetText(NF_L0_CH100);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_CH101);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 102 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_CH102);
			Button:SetPosition(25,155)
			Button:Visible(true);
		end;
	elseif Index == 2 then
		if SubID == 202 then
			FirstWin_Text1:SetText(NF_L0_CH200);
			FirstWin_Text1:Visible(true);
			FirstWin_ItemBtn1:Visible(true);
			FirstWin_ItemBtn1:SetPosition(25,220);
		elseif math.mod (SubID,100) == 11 then 
			FirstWin_Text1:SetText(NF_L0_CH0001..math.floor(math.mod (SubID/100,10)).. NF_L0_CH0002 .. math.floor(math.mod (SubID/1000,10)).. NF_L0_CH0003 ..math.floor(math.mod (SubID/10000,10)).. NF_L0_CH0004  );
			FirstWin_Text1:Visible(true);
			FirstWin_ItemBtn1:Visible(true);
			FirstWin_ItemBtn1:SetPosition(300,200);
		elseif SubID == 900 then
			FirstWin_Text1:SetText(NF_L0_CH900);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	elseif Index == 3 then
		if SubID == 300 then
			FirstWin_Text1:SetText(NF_L0_CH200);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(NF_L0_CH0011);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,210);
			FirstWin_ItemBtn1:Visible(true);
			FirstWin_ItemBtn1:SetPosition(25,230);
			FirstWin_ButtonA3:Visible(true);
			FirstWin_ButtonA3:SetText(NF_L0_CH20000);
			FirstWin_ButtonA3:SetPosition(420,250);
			FirstWin_ButtonA1:Visible(false);
			FirstWin_ButtonA2:Visible(false);
		elseif math.mod (SubID,100) == 21 then 
			FirstWin_Text1:SetText(NF_L0_CH0001..math.floor(math.mod (SubID/100,10)).. NF_L0_CH0002 .. math.floor(math.mod (SubID/1000,10)).. NF_L0_CH0003 ..math.floor(math.mod (SubID/10000,10)).. NF_L0_CH0004  );
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(NF_L0_CH0010);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,260);
			FirstWin_ItemBtn1:Visible(true);
			FirstWin_ItemBtn1:SetPosition(300,200);
			FirstWin_ButtonA3:Visible(true);
			FirstWin_ButtonA3:SetText(NF_L0_CH10000);
			FirstWin_ButtonA3:SetPosition(420,250);
			FirstWin_ButtonA1:Visible(false);
			FirstWin_ButtonA2:Visible(false);
		elseif SubID == 902 then
			FirstWin_Text1:SetText(NF_L0_CH902);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 903 then
			FirstWin_Text1:SetText(NF_L0_CH903);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 904 then
			FirstWin_Text1:SetText(NF_L0_CH904);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 905 then
			FirstWin_Text1:SetText(NF_L0_CH905);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 906 then
			FirstWin_Text1:SetText(NF_L0_CH906);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 907 then
			FirstWin_Text1:SetText(NF_L0_CH907);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 908 then
			FirstWin_Text1:SetText(NF_L0_CH908);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 909 then
			FirstWin_Text1:SetText(NF_L0_CH909);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 910 then
			FirstWin_Text1:SetText(NF_L0_CH910);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;	
	end;
end 