local win = UIAPI:GetElement("FirstWin");
local tpoint =nil
--战场
function NpcFunWar_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunWar_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
		if SubID== 89 then
			FirstWin_Text1:SetText(NF_HPMP_1001);
			FirstWin_Text1:Visible(true);		    
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W89);
			Button:Visible(true);
		elseif SubID== 1 then
			FirstWin_Text1:SetText(NF_L0_WA100);
			FirstWin_Text1:Visible(true);		    
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1);
			Button:Visible(true);
		elseif SubID== 2 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W2);
			Button:Visible(true);
		elseif SubID== 3 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_Y8004);
			Button:Visible(true);
		elseif SubID == 4 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_TR219);
			Button:Visible(true);
		elseif SubID== 90 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W90);
			Button:Visible(true);
		elseif SubID== 91 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W91);
			Button:Visible(true)
		elseif SubID== 92 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W92);
			Button:Visible(true)
		elseif SubID== 93 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W93);
			Button:Visible(true)
		elseif SubID== 150 then
			FirstWin_Text1:SetText(NF_HPMP_1001);
			FirstWin_Text1:Visible(true);		    
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W150);
			Button:Visible(true)
		elseif SubID== 160 then
			FirstWin_Text1:SetText(NF_HPMP_1001);
			FirstWin_Text1:Visible(true);   
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W160);
			Button:Visible(true)
		elseif SubID== 173 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W173);
			Button:Visible(true)
		elseif SubID== 174 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W174);
			Button:Visible(true)
		elseif SubID== 136 then
			FirstWin_Text1:SetText(NF_L0_WA100);
			FirstWin_Text1:Visible(true);		    
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W136);
			Button:Visible(true);
			Button:SetPosition(25,95);
		elseif SubID== 137 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W137);
			Button:Visible(true);
			Button:SetPosition(25,115);
		elseif SubID== 138 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W138);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID== 139 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W139);
			Button:Visible(true);
			Button:SetPosition(25,155);
		elseif SubID== 140 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W140);
			Button:Visible(true);
			Button:SetPosition(25,175);
		elseif SubID== 201 then
			FirstWin_Text1:SetText(NF_L0_WA100);
			FirstWin_Text1:Visible(true);			
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W201);
			Button:Visible(true);
			Button:SetPosition(25,95);
		elseif SubID== 202 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W202);
			Button:Visible(true);
			Button:SetPosition(25,115);
		elseif SubID== 203 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W203);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID== 204 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W204);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID== 361 then
			FirstWin_Text1:SetText(NF_L0_W0361);
			FirstWin_Text1:Visible(true);			
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W361);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID== 362 then		
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W362);
			Button:Visible(true);
			Button:SetPosition(25,155);
		end;
	elseif Index == 2 then --服务器消息提示
		if SubID == 215 then
			FirstWin_Text1:SetText(NF_L0_TR215);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 216 then
			FirstWin_Text1:SetText(NF_L0_TR216);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 217 then
			FirstWin_Text1:SetText(NF_L0_TR217);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 218 then
			FirstWin_Text1:SetText(NF_L0_TR218);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 220 then
			FirstWin_Text1:SetText(NF_L0_TR220);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3900 then
			FirstWin_Text1:SetText(NF_L0_Y3900);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1757 then
			FirstWin_Text1:SetText(NF_L0_W1757);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 173 then
			FirstWin_Text1:SetText(NF_L0_W00173);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W173);
			Button:Visible(true)
		elseif SubID== 174 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W174);
			Button:Visible(true)
		elseif SubID== 175 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W175);
			Button:Visible(true)
		elseif SubID== 176 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W176);
			Button:Visible(true)
		elseif SubID== 1966 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W5);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID== 1967 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W6);
			Button:Visible(true);
			Button:SetPosition(25,155);
		elseif SubID== 8888 then
			FirstWin_Text1:SetText(Msg_Bug01);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);	
		elseif SubID == 1700 then
			FirstWin_Text1:SetText(NF_L0_W1700);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1701 then
			FirstWin_Text1:SetText(NF_L0_W1701);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1702 then
			FirstWin_Text1:SetText(NF_L0_W1702);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 2701 then
			FirstWin_Text1:SetText(NF_L0_W2701);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 2702 then
			FirstWin_Text1:SetText(NF_L0_W2702);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 94 then
			FirstWin_Text1:SetText(NF_HPMP_1001);
			FirstWin_Text1:Visible(true);		    
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W94);
			Button:Visible(true)
		elseif SubID == 3001 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W3001);
			Button:Visible(true)
		elseif SubID == 3002 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W3002);
			Button:Visible(true)
		elseif SubID == 95 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W95);
			Button:Visible(true)
		elseif SubID == 96 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W96);
			Button:Visible(true)
		elseif SubID == 97 then
			FirstWin_Text1:SetText(NF_HPMP_1001);
			FirstWin_Text1:Visible(true);		    
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W97);
			Button:Visible(true)
		elseif SubID == 98 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W98);
			Button:Visible(true)
		elseif SubID == 99 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W99);
			Button:Visible(true)
		elseif SubID == 100 then
			FirstWin_Text1:SetText(NF_HPMP_1001);
			FirstWin_Text1:Visible(true);		    
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W100);
			Button:Visible(true)
		elseif SubID == 101 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W101);
			Button:Visible(true)
		elseif SubID == 102 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W102);
			Button:Visible(true)
		elseif SubID == 103 then
			FirstWin_Text1:SetText(NF_HPMP_1001);
			FirstWin_Text1:Visible(true);		    
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W103);
			Button:Visible(true)
		elseif SubID == 104 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W104);
			Button:Visible(true)
		elseif SubID == 105 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W105);
			Button:Visible(true)
		elseif SubID == 1950 then
			FirstWin_Text1:SetText(NF_L0_W1950);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1951 then
			FirstWin_Text1:SetText(NF_L0_W1951);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1952 then
			FirstWin_Text1:SetText(NF_L0_W1952);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1953 then
			FirstWin_Text1:SetText(NF_L0_W1953);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1954 then
			FirstWin_Text1:SetText(NF_L0_W1954);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1755 then
			FirstWin_Text1:SetText(NF_L0_W1755);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1756 then
			FirstWin_Text1:SetText(NF_L0_W1756);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1757 then
			FirstWin_Text1:SetText(NF_L0_W1757);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1758 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1758);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		elseif SubID == 1759 then
			FirstWin_Text1:SetText(NF_L0_W1759);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1760 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1760);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		elseif SubID == 1199 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1199);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		elseif SubID == 1761 then
			FirstWin_Text1:SetText(NF_L0_W1761);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1762 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1762);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		elseif SubID == 1763 then
			FirstWin_Text1:SetText(NF_L0_W1763);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1790 then
			FirstWin_Text1:SetText(NF_L0_W1790);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1770 then
			FirstWin_Text1:SetText(NF_L0_W1770);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1771 then
			FirstWin_Text1:SetText(NF_L0_W1771);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1772 then
			FirstWin_Text1:SetText(NF_L0_W1772);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1900 then
			FirstWin_Text1:SetText(NF_L0_W1900);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1901 then
			FirstWin_Text1:SetText(NF_L0_W1901);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1960 then
			FirstWin_Text1:SetText(NF_L0_W1960);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1961 then
			FirstWin_Text1:SetText(NF_L0_W1961);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1962 then
			FirstWin_Text1:SetText(NF_L0_W1962);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1963 then
			FirstWin_Text1:SetText(NF_L0_W1963);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1964 then
			FirstWin_Text1:SetText(NF_L0_W1964);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1965 then
			FirstWin_Text1:SetText(NF_L0_W1965);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,200) == 21 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(((SubID-21)/200)..NF_L0_W1801);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,200) == 22 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(((SubID-22)/200)..NF_L0_W1802);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,200) == 23 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(((SubID-23)/200)..NF_L0_W1803);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,200) == 24 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(((SubID-24)/200)..NF_L0_W1801);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,200) == 25 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(((SubID-25)/200)..NF_L0_W1802);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,200) == 29 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(((SubID-29)/200)..NF_L0_W1801);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,200) == 27 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(((SubID-27)/200)..NF_L0_W1802);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==11 then
			FirstWin_Text1:SetText(NF_L0_WA101);
			FirstWin_Text1:Visible(true);		    
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1780..(SubID-11)/1000);
			Button:Visible(true);
			Button:SetPosition(25,95);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==12 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1781..(SubID-12)/1000);
			Button:Visible(true);
			Button:SetPosition(25,115);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==13 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1782..(SubID-13)/1000);
			Button:Visible(true);
			Button:SetPosition(25,135);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==14 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1783..(SubID-14)/1000);
			Button:Visible(true);
			Button:SetPosition(25,155);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==15 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1784..(SubID-15)/1000);
			Button:Visible(true);
			Button:SetPosition(25,175);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==16 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1785..(SubID-16)/1000);
			Button:Visible(true);
			Button:SetPosition(25,195);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==17 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1786..(SubID-17)/1000);
			Button:Visible(true);
			Button:SetPosition(320,95);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==18 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1787..(SubID-18)/1000);
			Button:Visible(true);
			Button:SetPosition(320,115);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==19 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1788..(SubID-19)/1000);
			Button:Visible(true);
			Button:SetPosition(320,135);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==20 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1789..(SubID-20)/1000);
			Button:Visible(true);
			Button:SetPosition(320,155);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==31 then
			FirstWin_Text1:SetText(NF_L0_WA101);
			FirstWin_Text1:Visible(true);		    
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1880..(SubID-31)/1000);
			Button:Visible(true);
			Button:SetPosition(25,95);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==32 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1881..(SubID-32)/1000);
			Button:Visible(true);
			Button:SetPosition(25,115);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==33 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1882..(SubID-33)/1000);
			Button:Visible(true);
			Button:SetPosition(25,135);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==34 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1883..(SubID-34)/1000);
			Button:Visible(true);
			Button:SetPosition(25,155);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==35 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1884..(SubID-35)/1000);
			Button:Visible(true);
			Button:SetPosition(25,175);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==36 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1885..(SubID-36)/1000);
			Button:Visible(true);
			Button:SetPosition(25,195);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==37 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1886..(SubID-37)/1000);
			Button:Visible(true);
			Button:SetPosition(320,95);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==38 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1887..(SubID-38)/1000);
			Button:Visible(true);
			Button:SetPosition(320,115);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==39 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1888..(SubID-39)/1000);
			Button:Visible(true);
			Button:SetPosition(320,135);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==40 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1889..(SubID-40)/1000);
			Button:Visible(true);
			Button:SetPosition(320,155);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==6 then
			FirstWin_Text1:SetText(NF_L0_W1775..(SubID-6)/1000);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==7 then
			FirstWin_Text1:SetText(NF_L0_W1776..(SubID-7)/1000);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==8 then
			FirstWin_Text1:SetText(NF_L0_W1777..(SubID-8)/1000);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==1 then
			FirstWin_Text1:SetText(NF_L0_WA100);
			FirstWin_Text1:Visible(true);		    
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1776..(SubID-1)/1000);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) ==2 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1770..(SubID-2)/1000);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		elseif SubID ==211 then
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
		elseif SubID== 71 then
			FirstWin_Text1:SetText(NF_L0_FRAM171);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM371);
			Button:Visible(true);
			Button:SetPosition(45,170);
		elseif SubID== 72 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM372);
			Button:Visible(true);
			Button:SetPosition(45,195);
		elseif SubID== 73 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM373);
			Button:Visible(true);
			Button:SetPosition(45,220);
		elseif SubID== 74 then
			FirstWin_Text2:SetText(NF_L0_FRAM374);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,70);
		elseif SubID== 202 then
			FirstWin_Text1:SetText(NF_L0_FRAM222);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID ==460 then
			FirstWin_Text1:SetText(NF_L0_W460);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==461 then
			FirstWin_Text1:SetText(NF_L0_W461);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==462 then
			FirstWin_Text1:SetText(NF_L0_W462);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==463 then
			FirstWin_Text1:SetText(NF_L0_W463);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==464 then
			FirstWin_Text1:SetText(NF_L0_W464);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==465 then
			FirstWin_Text1:SetText(NF_L0_W465);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==471 then
			FirstWin_Text1:SetText(NF_L0_W471);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==472 then
			FirstWin_Text1:SetText(NF_L0_W472);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==473 then
			FirstWin_Text1:SetText(NF_L0_W473);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==474 then
			FirstWin_Text1:SetText(NF_L0_W474);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	elseif Index == 3 then --服务器消息提示
		if SubID == 1911 then
			FirstWin_Text1:SetText(NF_L0_W1911);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 121 then
			FirstWin_Text1:SetText(NF_L0_W121);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 173 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W173);
			Button:Visible(true)
		elseif SubID== 174 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W174);
			Button:Visible(true)
		elseif SubID== 8888 then
			FirstWin_Text1:SetText(Msg_Bug01);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1758 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1758);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		elseif SubID == 1960 then
			FirstWin_Text1:SetText(NF_L0_W1960);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1961 then
			FirstWin_Text1:SetText(NF_L0_W1961);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1199 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1199);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		        Button:SetPosition(43,150);
		        Button:Enable(false);
		        UIAPI:SetChecked(false,Button);
		elseif SubID == 3001 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W3001);
			Button:Visible(true)
		elseif SubID == 3002 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W3002);
			Button:Visible(true)
		elseif SubID == 1755 then
			FirstWin_Text1:SetText(NF_L0_W1755);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1756 then
			FirstWin_Text1:SetText(NF_L0_W1756);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1757 then
			FirstWin_Text1:SetText(NF_L0_W1757);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 11757 then
			FirstWin_Text1:SetText(NF_L0_SATS900);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1760 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1760);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		        Button:SetPosition(43,150);
		        Button:Enable(false);
		        UIAPI:SetChecked(false,Button);
		elseif SubID == 1964 then
			FirstWin_Text1:SetText(NF_L0_W1964);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1965 then
			FirstWin_Text1:SetText(NF_L0_W1965);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,200) == 21 then
			FirstWin_Text2:SetText(LuaText["War_T201"] .. ((SubID-21)/200*800) .. LuaText["War_T202"] .. (800) .. LuaText["War_T203"] .. ((SubID-21)/200) .. LuaText["War_T204"]);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,105);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,200) == 22 then
			FirstWin_Text2:SetText(LuaText["War_T201"] .. (math.floor((SubID-22)/200*500)) .. LuaText["War_T202"] .. (400) .. LuaText["War_T203"] .. (math.floor((SubID-22)/200/2)) .. LuaText["War_T204"]);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,105);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,200) == 23 then
			FirstWin_Text3:SetText(LuaText["War_T205"] .. ((SubID-23)/200) .. LuaText["War_T207"]);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,130);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,200) == 24 then
			FirstWin_Text4:SetText(LuaText["War_T206"] .. ((SubID-24)/200) .. LuaText["War_T207"]);
			FirstWin_Text4:Visible(true);
			FirstWin_Text4:SetPosition(25,170);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,200) == 25 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(((SubID-25)/200)..NF_L0_W1802);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,200) == 29 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(((SubID-29)/200)..NF_L0_W1801);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		        Button:SetPosition(43,175);
		        Button:Enable(false);
		        UIAPI:SetChecked(false,Button);
		elseif math.mod(SubID ,200) == 27 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(((SubID-27)/200)..NF_L0_W1802);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		        Button:SetPosition(43,200);
		        Button:Enable(false);
		        UIAPI:SetChecked(false,Button);
		elseif SubID == 1762 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W1762);
			Button:Visible(true)
			NPCFUN:EndMessage(true);
		elseif SubID == 1962 then
			FirstWin_Text1:SetText(NF_L0_W1962);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1963 then
			FirstWin_Text1:SetText(NF_L0_W1963);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 122 then
			FirstWin_Text1:SetText(NF_L0_W122);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1761 then
			FirstWin_Text1:SetText(NF_L0_W1761);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1902 then
			FirstWin_Text1:SetText(NF_L0_W1902);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1903 then
			FirstWin_Text1:SetText(NF_L0_W1903);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1904 then
			FirstWin_Text1:SetText(NF_L0_W1904);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1905 then
			FirstWin_Text1:SetText(NF_L0_W1905);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1906 then
			FirstWin_Text1:SetText(NF_L0_W1906);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1907 then
			FirstWin_Text1:SetText(NF_L0_W1907);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1908 then
			FirstWin_Text1:SetText(NF_L0_W1908);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1909 then
			FirstWin_Text1:SetText(NF_L0_W1909);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1910 then
			FirstWin_Text1:SetText(NF_L0_W1910);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1930 then
			FirstWin_Text1:SetText(NF_L0_W1930);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1931 then
			FirstWin_Text1:SetText(NF_L0_W1931);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1932 then
			FirstWin_Text1:SetText(NF_L0_W1932);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3011 then
			FirstWin_Text1:SetText(NF_L0_W3011);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3012 then
			FirstWin_Text1:SetText(NF_L0_W3012);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3014 then
			FirstWin_Text1:SetText(NF_L0_W3014);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 4002 then
			FirstWin_Text1:SetText(NF_L0_W4002);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 4003 then
			FirstWin_Text1:SetText(NF_L0_W4003);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 4004 then
			FirstWin_Text1:SetText(NF_L0_W4004);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 4005 then
			FirstWin_Text1:SetText(NF_L0_W4005);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 5002 then
			FirstWin_Text1:SetText(NF_L0_W5002);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 5003 then
			FirstWin_Text1:SetText(NF_L0_W5003);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 5004 then
			FirstWin_Text1:SetText(NF_L0_W5004);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 5005 then
			FirstWin_Text1:SetText(NF_L0_W5005);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID ,1000) == 14 then
			FirstWin_Text1:SetText(NF_L0_FRAM741..(140000+(SubID-14)*5)..NF_L0_FRAM742..(10000+((SubID-14)/1000)*((SubID-14)/1000)*50)..NF_L0_FRAM743..string.format("%.0f",(16+(SubID-14)/5000))..NF_L0_FRAM744);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif math.mod(SubID ,1000) == 15 then
			FirstWin_Text1:SetText(NF_L0_FRAM751..((140000+(SubID-15)*5)/2)..NF_L0_FRAM742..((10000+((SubID-15)/1000)*((SubID-15)/1000)*50)/2)..NF_L0_FRAM743..string.format("%.0f",((16+(SubID-15)/5000)/2))..NF_L0_FRAM744);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif math.mod(SubID ,1000) == 16 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM713..((SubID-16)/1000));
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			Button:SetTextFormat(0);
			Button:SetPosition(45,150);
		elseif math.mod(SubID ,1000) == 12 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM714..((SubID-12)/1000));
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			Button:SetTextFormat(0);
			Button:SetPosition(45,180);
		elseif math.mod(SubID ,1000) == 13 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM715..((SubID-13)/1000));
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			Button:SetTextFormat(0);
			Button:SetPosition(45,210);
		elseif SubID== 201 then
			FirstWin_Text1:SetText(NF_L0_FRAM801);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 203 then
			FirstWin_Text1:SetText(NF_L0_FRAM803);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 204 then
			FirstWin_Text1:SetText(NF_L0_FRAM804);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 205 then
			FirstWin_Text1:SetText(NF_L0_FRAM805);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 210 then
			FirstWin_Text1:SetText(NF_L0_FRAM815);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 206 then
			FirstWin_Text1:SetText(NF_L0_FRAM806);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 207 then
			FirstWin_Text1:SetText(NF_L0_FRAM807);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 208 then
			FirstWin_Text1:SetText(NF_L0_FRAM809);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 219 then
			FirstWin_Text1:SetText(NF_L0_FRAM808);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 11761 then
			FirstWin_Text1:SetText(NF_L0_W11761);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 11762 then
			FirstWin_Text1:SetText(NF_L0_W11762);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 11763 then
			FirstWin_Text1:SetText(NF_L0_W011763);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W11763);
			Button:Visible(true);
		elseif SubID == 11764 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W11764);
			Button:Visible(true);
		elseif SubID == 11765 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_W11765);
			Button:Visible(true);
		end;
	elseif Index == 4 then --服务器消息提示
		if SubID == 1911 then
			FirstWin_Text1:SetText(NF_L0_W1911);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID== 8888 then
			FirstWin_Text1:SetText(Msg_Bug01);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3 then
			FirstWin_Text1:SetText(NF_L0_W3);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 4 then
			FirstWin_Text1:SetText(NF_L0_W4);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 201 then
			FirstWin_Text1:SetText(NF_L0_WS201);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 601 then
			FirstWin_Text1:SetText(NF_L0_W601);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1201 or SubID == 1200  then
			FirstWin_Text1:SetText(NF_L0_W210);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 200 then
			FirstWin_Text1:SetText(NF_L0_WS200);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 600 then
			FirstWin_Text1:SetText(NF_L0_W600);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1761 then
			FirstWin_Text1:SetText(NF_L0_W1761);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3011 then
			FirstWin_Text1:SetText(NF_L0_W3011);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3012 then
			FirstWin_Text1:SetText(NF_L0_W3012);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3014 then
			FirstWin_Text1:SetText(NF_L0_W3014);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3015 then
			FirstWin_Text1:SetText(NF_L0_W3015);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 4002 then
			FirstWin_Text1:SetText(NF_L0_W4002);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 4003 then
			FirstWin_Text1:SetText(NF_L0_W4003);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 4004 then
			FirstWin_Text1:SetText(NF_L0_W4004);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 4005 then
			FirstWin_Text1:SetText(NF_L0_W4005);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 5002 then
			FirstWin_Text1:SetText(NF_L0_W5002);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 5003 then
			FirstWin_Text1:SetText(NF_L0_W5003);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 5004 then
			FirstWin_Text1:SetText(NF_L0_W5004);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 5005 then
			FirstWin_Text1:SetText(NF_L0_W5005);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1757 then
			FirstWin_Text1:SetText(NF_L0_W1757);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1902 then
			FirstWin_Text1:SetText(NF_L0_W1902);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1903 then
			FirstWin_Text1:SetText(NF_L0_W1903);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1904 then
			FirstWin_Text1:SetText(NF_L0_W1904);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1905 then
			FirstWin_Text1:SetText(NF_L0_W1905);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1906 then
			FirstWin_Text1:SetText(NF_L0_W1906);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1907 then
			FirstWin_Text1:SetText(NF_L0_W1907);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1908 then
			FirstWin_Text1:SetText(NF_L0_W1908);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1909 then
			FirstWin_Text1:SetText(NF_L0_W1909);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1910 then
			FirstWin_Text1:SetText(NF_L0_W1910);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 11771 then
			FirstWin_Text1:SetText(NF_L0_W11771);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID > 100000 and math.mod(SubID-100000 ,100) >=1 and math.mod(SubID-100000 ,100) <=5 then
			FirstWin_Text1:SetText(NF_L0_W011765);
			FirstWin_Text1:Visible(true);
			tpoint = math.mod(SubID-100000 ,100);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText("   "..tpoint..":  "..((SubID-100000-tpoint)/100));
			Button:SetTextFormat(0);
                        Button:SetPosition(25,85+tpoint*20)
			Button:Visible(true);
			Button:Enable(false);
                      	UIAPI:SetChecked(false,Button);
			NPCFUN:EndMessage(true);
		elseif SubID > 100000 and math.mod(SubID-100000 ,100) >=11 and math.mod(SubID-100000 ,100) <=15 then
			FirstWin_Text1:SetText(NF_L0_W011766);
			FirstWin_Text1:Visible(true);
			tpoint = math.mod(SubID-100000 ,100);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText("   "..(tpoint-10)..":  "..((SubID-100000-tpoint)/100));
			Button:SetTextFormat(0);
                        Button:SetPosition(25,85+(tpoint-10)*20)
			Button:Visible(true);
			Button:Enable(false);
                      	UIAPI:SetChecked(false,Button);
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID,100) == 16 then
			FirstWin_Text2:SetText(LuaText["War_PDS_T401"] .. ((SubID - 16)/100));
			FirstWin_Text2:Visible(true);	
			FirstWin_Text2:SetPosition(25,205)
			NPCFUN:EndMessage(true);		
		elseif math.mod(SubID,100) == 17 then
			FirstWin_Text2:SetText(LuaText["War_PDS_T402"] .. ((SubID - 17)/100));
			FirstWin_Text2:Visible(true);	
			FirstWin_Text2:SetPosition(25,205)
			NPCFUN:EndMessage(true);	
		elseif SubID > 100000 and math.mod(SubID-100000 ,100) ==21 then
			FirstWin_Text1:SetText(NF_L0_W011767);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText( NF_L0_W011768..":  "..((SubID-100000-21)/100));
			Button:SetTextFormat(0);
                        Button:SetPosition(25,85)
			Button:Visible(true);
			Button:Enable(false);
                      	UIAPI:SetChecked(false,Button);
		elseif SubID > 100000 and math.mod(SubID-100000 ,100) ==22 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText( NF_L0_W011769..":  "..((SubID-100000-22)/100));
			Button:SetTextFormat(0);
                        Button:SetPosition(25,105)
			Button:Visible(true);
			Button:Enable(false);
                      	UIAPI:SetChecked(false,Button);
			NPCFUN:EndMessage(true);
		end;
	end;
end
