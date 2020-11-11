local win = UIAPI:GetElement("FirstWin");
--称谓鉴定
function NpcFunDesidentify_SetUI(Type,Index)
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
	strDesig = ""

end

function NpcFunDesidentify_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第1个页面------
		if SubID == 1 then
			print(BtnID,SubID);
			FirstWin_Text1:SetText(NF_L0_DES001);
			FirstWin_Text1:Visible(true);			
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES1);
			Button:Visible(true);
			Button:SetPosition(25,95);
		elseif SubID == 2 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES2);
			Button:Visible(true);
			Button:SetPosition(25,115);
		end;
	elseif Index == 2 then	--第2个页面---------------------
		if SubID == 1 then
			FirstWin_Text1:SetText(NF_L0_WA102);
			FirstWin_Text1:Visible(true); 
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES3);
			Button:Visible(true);
			Button:SetPosition(25,95);
		elseif SubID == 2 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES4);
			Button:Visible(true);
			Button:SetPosition(25,115);
		elseif SubID == 3 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES5);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID == 4 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES6);
			Button:Visible(true);
			Button:SetPosition(25,155);
		elseif SubID == 5 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES7);
			Button:Visible(true);
			Button:SetPosition(25,175);
		elseif SubID == 6 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES8);
			Button:Visible(true);
			Button:SetPosition(25,195);
		elseif SubID == 7 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES9);
			Button:Visible(true);
			Button:SetPosition(320,95);
		elseif SubID == 8 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_DES10);
			Button:Visible(true);
			Button:SetPosition(320,115);
		end;

		if SubID == 500 then
			FirstWin_Text1:SetText(NF_L0_DES11);
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 600 then
			FirstWin_Text3:SetText(NF_L0_DES12);
			FirstWin_Text3:SetPosition(25,50);			
			FirstWin_Text3:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 501 then
			FirstWin_Text3:SetText(NF_L0_DES13);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 502 then
			FirstWin_Text3:SetText(NF_L0_DES14);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 503 then
			FirstWin_Text3:SetText(NF_L0_DES15);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 504 then
			FirstWin_Text3:SetText(NF_L0_DES16);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 510 then
			FirstWin_Text3:SetText(NF_L0_DES17);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 511 then
			FirstWin_Text3:SetText(NF_L0_DES18);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 512 then
			FirstWin_Text3:SetText(NF_L0_DES19);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 513 then
			FirstWin_Text3:SetText(NF_L0_DES20);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 520 then
			FirstWin_Text3:SetText(NF_L0_DES21);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 521 then
			FirstWin_Text3:SetText(NF_L0_DES22);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 522 then
			FirstWin_Text3:SetText(NF_L0_DES23);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 523 then
			FirstWin_Text3:SetText(NF_L0_DES24);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 530 then
			FirstWin_Text3:SetText(NF_L0_DES25);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 531 then
			FirstWin_Text3:SetText(NF_L0_DES26);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 532 then
			FirstWin_Text3:SetText(NF_L0_DES27);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 533 then
			FirstWin_Text3:SetText(NF_L0_DES28);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		end;

		if SubID == 1000 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES30
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);			
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);			
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 1001 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES31
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);			
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 1002 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES32
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);			
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 1003 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES33
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);			
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 1100 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES34
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);			
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 1101 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES35
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);			
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 1102 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES36
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);			
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 1103 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES37
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);			
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 1200 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES38
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);		
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 1201 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES39
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);			
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 1202 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES40
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);			
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 1203 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES41
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);			
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 1300 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES42
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);			
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 1301 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES43
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);			
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 1302 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES44
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);			
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 1303 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES45
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);			
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		end;
	elseif Index == 3 then    ----第3个页面------
		if SubID == 500 then
			FirstWin_Text1:SetText(NF_L0_DES11);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text1:Visible(true);
			FirstWin_ButtonA1:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 600 then
			FirstWin_Text3:SetText(NF_L0_DES12);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_Text3:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 501 then
			FirstWin_Text3:SetText(NF_L0_DES46);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 502 then
			FirstWin_Text3:SetText(NF_L0_DES47);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 505 then
			FirstWin_Text3:SetText(NF_L0_DES48);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 506 then
			FirstWin_Text3:SetText(NF_L0_DES49);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 510 then
			FirstWin_Text3:SetText(NF_L0_DES50);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 511 then
			FirstWin_Text3:SetText(NF_L0_DES51);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 515 then
			FirstWin_Text3:SetText(NF_L0_DES52);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 516 then
			FirstWin_Text3:SetText(NF_L0_DES53);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 520 then
			FirstWin_Text3:SetText(NF_L0_DES54);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 521 then
			FirstWin_Text3:SetText(NF_L0_DES55);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 525 then
			FirstWin_Text3:SetText(NF_L0_DES56);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 526 then
			FirstWin_Text3:SetText(NF_L0_DES57);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 530 then
			FirstWin_Text3:SetText(NF_L0_DES58);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 531 then
			FirstWin_Text3:SetText(NF_L0_DES59);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 535 then
			FirstWin_Text3:SetText(NF_L0_DES60);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 536 then
			FirstWin_Text3:SetText(NF_L0_DES61);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,50);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		end;


		if SubID == 3000 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES62
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);			
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 3001 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES63
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);
						
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 3002 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES64
			FirstWin_Text2:SetText(strDesig);	
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);
					
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 3003 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES65
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);
						
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 3004 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES66
			FirstWin_Text2:SetText(strDesig);	
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);
					
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 3005 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES67
			FirstWin_Text2:SetText(strDesig);	
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);					
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 3006 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES68
			FirstWin_Text2:SetText(strDesig);	
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);					
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 3007 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES69
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);						
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 3008 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES70
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);						
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 3009 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES71
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);						
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 3010 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES72
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);						
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 3011 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES73
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);						
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 3012 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES74
			FirstWin_Text2:SetText(strDesig);	
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);					
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 3013 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES75
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);						
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 3014 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES76
			FirstWin_Text2:SetText(strDesig);	
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);					
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		elseif SubID == 3015 then
			FirstWin_Text1:SetText(NF_L0_DES29);
			strDesig = strDesig .. NF_L0_DES77
			FirstWin_Text2:SetText(strDesig);	
			FirstWin_Text1:SetPosition(25,30);
			FirstWin_Text2:SetPosition(165,30);					
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_ButtonA2:Visible(false);
			NPCFUN:EndMessage(true);
		end;
	end; 
end
