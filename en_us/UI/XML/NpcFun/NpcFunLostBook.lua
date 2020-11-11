local win = UIAPI:GetElement("FirstWin");
--失落之书
function NpcFunLostBook_SetUI(Type,Index)
	FirstWin_Text1:SetPosition(45,100);
	FirstWin_Text1:Visible(false);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	strDesig = ""
	win:Visible(true);

end

function NpcFunLostBook_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第1个页面------
		if math.mod(SubID ,2000) == 101 then
			FirstWin_Text1:SetText(NF_L0_BK101.."|cff39D8B8"..(5-(SubID-101)/2000).."|cffffffff"..NF_L0_BK102);
			FirstWin_Text1:Visible(true);
		elseif SubID == 1 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BK1);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 2 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BK2);
			Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID == 500 then
			FirstWin_Text1:SetText(NF_L0_BK500);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	elseif Index == 2 then	--第2个页面---------------------
		if SubID == 200 then
			FirstWin_Text1:SetText(NF_L0_BK200);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 600 then
			FirstWin_Text1:SetText(NF_L0_BK600);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 601 then
			FirstWin_Text1:SetText(NF_L0_BK601);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID % 2000 == 602 then
			FirstWin_Text1:SetText(NF_L0_BK602..((SubID-602)/2000*100));
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID % 2000 == 603 then
			FirstWin_Text1:SetText(NF_L0_BK602..((SubID-603)/2000*300));
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID % 2000 == 604 then
			FirstWin_Text1:SetText(NF_L0_BK602..((SubID-604)/2000*600));
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID % 2000 == 605 then
			FirstWin_Text1:SetText(NF_L0_BK605);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID % 2000 == 606 then
			FirstWin_Text1:SetText(NF_L0_BK606);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		
		elseif SubID  == 700 then
			FirstWin_Text1:SetText(NF_L0_BK700);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 701 then
			FirstWin_Text1:SetText(NF_L0_BK701);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 702 then
			FirstWin_Text1:SetText(NF_L0_BK702);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 703 then
			FirstWin_Text1:SetText(NF_L0_BK703);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 704 then
			FirstWin_Text1:SetText(NF_L0_BK704);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 705 then
			FirstWin_Text1:SetText(NF_L0_BK705);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 706 then
			FirstWin_Text1:SetText(NF_L0_BK706);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 707 then
			FirstWin_Text1:SetText(NF_L0_BK707);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 708 then
			FirstWin_Text1:SetText(NF_L0_BK708);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 709 then
			FirstWin_Text1:SetText(NF_L0_BK709);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 710 then
			FirstWin_Text1:SetText(NF_L0_BK710);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 711 then
			FirstWin_Text1:SetText(NF_L0_BK711);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			
		elseif SubID  == 800 then
			FirstWin_Text1:SetText(NF_L0_BK800);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID % 2000 == 802 then
			FirstWin_Text1:SetText(NF_L0_BK602..((SubID-802)/2000*5000));
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID % 2000 == 803 then
			FirstWin_Text1:SetText(NF_L0_BK602..((SubID-803)/2000*10000));
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID % 2000 == 804 then
			FirstWin_Text1:SetText(NF_L0_BK804);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID % 2000 == 805 then
			FirstWin_Text1:SetText(NF_L0_BK805);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID % 2000 == 806 then
			FirstWin_Text1:SetText(NF_L0_BK806);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			
			
		elseif SubID == 900 then
			FirstWin_Text1:SetText(NF_L0_BK900);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			
		elseif SubID == 901 then
			FirstWin_Text1:SetText(NF_L0_BK901);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 902 then
			FirstWin_Text1:SetText(NF_L0_BK902);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 903 then
			FirstWin_Text1:SetText(NF_L0_BK903);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 904 then
			FirstWin_Text1:SetText(NF_L0_BK904);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 905 then
			FirstWin_Text1:SetText(NF_L0_BK905);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			
		end;
	end; 
end
