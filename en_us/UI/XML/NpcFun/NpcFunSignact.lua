local win = UIAPI:GetElement("FirstWin");
--令牌活动
function NpcFunSignact_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	strDesig = ""
	win:Visible(true);

end

function NpcFunSignact_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第1个页面------
		if SubID == 1 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT1);
			Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID == 2 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT2);
			Button:SetPosition(25,175)
			Button:Visible(true);
		elseif SubID == 3 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT29);
			Button:SetPosition(25,195)
			Button:Visible(true);
		elseif SubID == 4 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT30);
			Button:SetPosition(25,215)
			Button:Visible(true);
		elseif SubID ==1000 then
			FirstWin_Text1:SetText(NF_L0_SATS1000);
			FirstWin_Text1:Visible(true);
		end;



	elseif Index == 2 then	--第2个页面---------------------
		if SubID == 10 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT3);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 20 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT4);
			Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID == 31 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT31);
			Button:SetPosition(25,120)
			Button:Visible(true);
		elseif SubID == 32 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT32);
			Button:SetPosition(25,140)
			Button:Visible(true);
		elseif SubID == 33 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT33);
			Button:SetPosition(25,160)
			Button:Visible(true);
		elseif SubID == 34 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT34);
			Button:SetPosition(25,180)
			Button:Visible(true);
		elseif SubID == 35 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT35);
			Button:SetPosition(25,200)
			Button:Visible(true);
		elseif SubID == 36 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT36);
			Button:SetPosition(25,220)
			Button:Visible(true);
		elseif SubID == 41 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT37);
			Button:SetPosition(25,145)
			Button:Visible(true);
		elseif SubID == 42 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT38);
			Button:SetPosition(25,165)
			Button:Visible(true);
		elseif SubID == 43 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT39);
			Button:SetPosition(25,185)
			Button:Visible(true);
		elseif SubID == 44 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT40);
			Button:SetPosition(320,145)
			Button:Visible(true);
		elseif SubID == 45 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT41);
			Button:SetPosition(320,165)
			Button:Visible(true);
		elseif SubID == 46 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT42);
			Button:SetPosition(320,185)
			Button:Visible(true);
		elseif SubID ==1001 then
			FirstWin_Text1:SetText(NF_L0_SATS1001);
			FirstWin_Text1:Visible(true);
		elseif SubID == 1200 then
			FirstWin_Text1:SetText(NF_L0_SATS1200);
			FirstWin_Text1:Visible(true);
		elseif SubID == 1300 then
			FirstWin_Text1:SetText(NF_L0_SATS1300);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(NF_L0_SATS1301);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,75);
			FirstWin_ItemBtn1:Visible(true);
			FirstWin_ItemBtn1:SetPosition(25,95);


		elseif SubID == 500 then
			FirstWin_Text1:SetText(NF_L0_SATS1);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 501 then
			FirstWin_Text1:SetText(NF_L0_SATS2);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 502 then
			FirstWin_Text1:SetText(NF_L0_SATS3);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 503 then
			FirstWin_Text1:SetText(NF_L0_SATS4);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 360 then
			FirstWin_Text1:SetText(NF_L0_SATS5);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 361 then
			FirstWin_Text1:SetText(NF_L0_SATS6);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 362 then
			FirstWin_Text1:SetText(NF_L0_SATS7);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 363 then
			FirstWin_Text1:SetText(NF_L0_SATS8);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 364 then
			FirstWin_Text1:SetText(NF_L0_SATS9);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 365 then
			FirstWin_Text1:SetText(NF_L0_SATS10);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 517 then
			FirstWin_Text1:SetText(NF_L0_SATS11);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);

		end;

	elseif Index == 3 then	--第3个页面---------------------
		if SubID == 101 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT5);
			Button:SetPosition(25,185)
			Button:Visible(true);
		elseif SubID == 102 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT6);
			Button:SetPosition(25,205)
			Button:Visible(true);
		elseif SubID == 103 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT7);
			Button:SetPosition(25,225)
			Button:Visible(true);
		elseif SubID == 104 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT8);
			Button:SetPosition(320,185)
			Button:Visible(true);
		elseif SubID == 105 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT9);
			Button:SetPosition(320,205)
			Button:Visible(true);
		elseif SubID == 106 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT10);
			Button:SetPosition(320,225)
			Button:Visible(true);
		elseif SubID == 107 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT11);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 108 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT12);
			Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID == 109 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT13);
			Button:SetPosition(25,175)
			Button:Visible(true);
		elseif SubID ==1002 then
			FirstWin_Text1:SetText(NF_L0_SATS1002);
			FirstWin_Text1:Visible(true);
		elseif SubID ==1003 then
			FirstWin_Text1:SetText(NF_L0_SATS1003);
			FirstWin_Text1:Visible(true);

		elseif SubID == 700 then
			FirstWin_Text1:SetText(NF_L0_SATS700);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 701 then
			FirstWin_Text1:SetText(NF_L0_SATS701);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 702 then
			FirstWin_Text1:SetText(NF_L0_SATS702);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 731 then
			FirstWin_Text1:SetText(NF_L0_SATS731);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 732 then
			FirstWin_Text1:SetText(NF_L0_SATS732);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 733 then
			FirstWin_Text1:SetText(NF_L0_SATS733);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 734 then
			FirstWin_Text1:SetText(NF_L0_SATS734);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 735 then
			FirstWin_Text1:SetText(NF_L0_SATS735);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 736 then
			FirstWin_Text1:SetText(NF_L0_SATS736);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 800 then
			FirstWin_Text1:SetText(NF_L0_SATS800);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 801 then
			FirstWin_Text1:SetText(NF_L0_SATS801);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 841 then
			FirstWin_Text1:SetText(NF_L0_SATS841);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 842 then
			FirstWin_Text1:SetText(NF_L0_SATS842);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 843 then
			FirstWin_Text1:SetText(NF_L0_SATS843);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 844 then
			FirstWin_Text1:SetText(NF_L0_SATS844);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 845 then
			FirstWin_Text1:SetText(NF_L0_SATS845);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 846 then
			FirstWin_Text1:SetText(NF_L0_SATS846);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 900 then
			FirstWin_Text1:SetText(NF_L0_SATS900);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);


		end;

	elseif Index == 4 then	--第4个页面---------------------
		if SubID == 110 then               -----------按钮文字---------
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT14);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 111 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT15);
			Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID == 112 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT16);
			Button:SetPosition(25,175)
			Button:Visible(true);
		elseif SubID == 113 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT17);
			Button:SetPosition(25,195)
			Button:Visible(true);
		elseif SubID == 114 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT18);
			Button:SetPosition(25,215)
			Button:Visible(true);
		elseif SubID == 115 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT19);
			Button:SetPosition(320,135)
			Button:Visible(true);
		elseif SubID == 116 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT20);
			Button:SetPosition(320,155)
			Button:Visible(true);
		elseif SubID == 117 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT21);
			Button:SetPosition(320,175)
			Button:Visible(true);
		elseif SubID == 118 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT22);
			Button:SetPosition(320,195)
			Button:Visible(true);
		elseif SubID == 119 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT23);
			Button:SetPosition(320,215)
			Button:Visible(true);
		elseif SubID == 120 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT14);
			Button:SetPosition(25,135)
			Button:Visible(true);
		elseif SubID == 121 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT15);
			Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID == 122 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT16);
			Button:SetPosition(25,175)
			Button:Visible(true);
		elseif SubID == 123 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT17);
			Button:SetPosition(25,195)
			Button:Visible(true);
		elseif SubID == 124 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT18);
			Button:SetPosition(25,215)
			Button:Visible(true);
		elseif SubID == 125 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT19);
			Button:SetPosition(320,135)
			Button:Visible(true);
		elseif SubID == 126 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT20);
			Button:SetPosition(320,155)
			Button:Visible(true);
		elseif SubID == 127 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT21);
			Button:SetPosition(320,175)
			Button:Visible(true);
		elseif SubID == 128 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT22);
			Button:SetPosition(320,195)
			Button:Visible(true);
		elseif SubID == 129 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT23);
			Button:SetPosition(320,215)
			Button:Visible(true);
		elseif SubID == 130 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT24);
			Button:SetPosition(25,155)
			Button:Visible(true);
		elseif SubID == 131 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT25);
			Button:SetPosition(25,175)
			Button:Visible(true);
		elseif SubID == 132 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT26);
			Button:SetPosition(25,195)
			Button:Visible(true);
		elseif SubID == 133 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT27);
			Button:SetPosition(25,215)
			Button:Visible(true);
		elseif SubID == 134 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_SABT28);
			Button:SetPosition(25,235)
			Button:Visible(true);
		elseif SubID ==1004 then
			FirstWin_Text1:SetText(NF_L0_SATS1004);
			FirstWin_Text1:Visible(true);
		elseif SubID ==1005 then
			FirstWin_Text1:SetText(NF_L0_SATS1005);
			FirstWin_Text1:Visible(true);
		elseif SubID ==1006 then
			FirstWin_Text1:SetText(NF_L0_SATS1006);
			FirstWin_Text1:Visible(true);
		elseif SubID ==1900 then
			FirstWin_Text1:SetText(NF_L0_SATS1800);
			FirstWin_Text1:Visible(true);
		elseif SubID ==10001 or  SubID ==10000 then
			FirstWin_Text1:SetText(NF_L0_SATS10001);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(NF_L0_SATS10011);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,50);
			FirstWin_Text3:SetText(NF_L0_SATS10111);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,110)
		elseif SubID ==10002  then
			FirstWin_Text1:SetText(NF_L0_SATS10002);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(NF_L0_SATS10021);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,50);
			FirstWin_Text3:SetText(NF_L0_SATS10111);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,110)
		elseif SubID ==10003  then
			FirstWin_Text1:SetText(NF_L0_SATS10003);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(NF_L0_SATS10031);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,50);
			FirstWin_Text3:SetText(NF_L0_SATS10111);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,110)
		elseif SubID ==10004  then
			FirstWin_Text1:SetText(NF_L0_SATS10004);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(NF_L0_SATS10041);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,50);
			FirstWin_Text3:SetText(NF_L0_SATS10111);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,110)
		elseif SubID ==10005 or SubID ==10006 then
			FirstWin_Text1:SetText(NF_L0_SATS10005);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(NF_L0_SATS10051);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,50);
			FirstWin_Text3:SetText(NF_L0_SATS10111);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,110)
		elseif SubID ==10007 then
			FirstWin_Text1:SetText(NF_L0_SATS10007);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(NF_L0_SATS10071);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,50);
			FirstWin_Text3:SetText(NF_L0_SATS10111);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,110)
		elseif SubID ==20001 or  SubID ==20000 then
			FirstWin_Text1:SetText(NF_L0_SATS10001);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(NF_L0_SATS20011);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,50);
		elseif SubID ==20002  then
			FirstWin_Text1:SetText(NF_L0_SATS10002);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(NF_L0_SATS20021);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,50);
		elseif SubID ==20003  then
			FirstWin_Text1:SetText(NF_L0_SATS10003);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(NF_L0_SATS20031);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,50);
		elseif SubID ==20004  then
			FirstWin_Text1:SetText(NF_L0_SATS10004);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(NF_L0_SATS20041);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,50);
		elseif SubID ==20005 or SubID ==20006   then
			FirstWin_Text1:SetText(NF_L0_SATS10005);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(NF_L0_SATS20051);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,50);
		elseif SubID ==20007   then
			FirstWin_Text1:SetText(NF_L0_SATS10007);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(NF_L0_SATS20071);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,50);
		end;

		if SubID == 2000 then                 -------------信息提示文字-------------
			FirstWin_Text1:SetText(NF_L0_SATS2000);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1901 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1901
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1902 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1902
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1903 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1903
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1904 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1904
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1905 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1905
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30)
			NPCFUN:EndMessage(true);
		elseif SubID == 1906 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1906
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30)
			NPCFUN:EndMessage(true);
		elseif SubID == 31905 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS31905
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2001 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2001
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2002 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2002
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2003 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2003
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2004 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2004
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2005 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2005
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 20061 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS20061
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 32005 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS32005
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);





		end;

	elseif Index == 5 then	--第5个页面---------------------


		if SubID == 2000 then                 -------------信息提示文字-------------
			FirstWin_Text1:SetText(NF_L0_SATS2000);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1900 then
			FirstWin_Text1:SetText(NF_L0_SATS1800);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1911 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1911
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1912 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1912
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1913 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1913
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1914 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1914
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1915 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1915
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 19161 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS19161
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 31915 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS31915
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1916 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1916
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1917 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1917
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1918 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1918
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1919 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1919
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1920 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1920
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 19211 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS19211
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 31920 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS31920
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1921 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1921
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1922 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1922
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1923 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1923
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1924 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1924
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 1925 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS1925
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 19261 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS19261
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 31925 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS31925
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);

		elseif SubID == 2011 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2011
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2012 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2012
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2013 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2013
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2014 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2014
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2015 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2015
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 20161 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS20161
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 32015 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS32015
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2016 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2016
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2017 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2017
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2018 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2018
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2019 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2019
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2020 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2020
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 20211 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS20211
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 32020 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS32020
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2021 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2021
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2022 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2022
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2023 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2023
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2024 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2024
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 2025 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS2025
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 20261 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS20261
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 32025 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS32025
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 3001 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS3001
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 3002 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS3002
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 3003 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS3003
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 3004 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS3004
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 3005 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS3005
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 30061 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS30061
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 33005 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS33005
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 3006 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS3006
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 3007 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS3007
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 3008 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS3008
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 3009 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS3009
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 3010 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS3010
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 30111 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS30111
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 33010 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS33010
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 3011 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS3011
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 3012 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS3012
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 3013 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS3013
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 3014 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS3014
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 3015 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS3015
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 30161 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS30161
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);
		elseif SubID == 33015 then
			FirstWin_Text1:SetText(NF_L0_SATS1900);
			strDesig = strDesig .. NF_L0_SATS33015
			FirstWin_Text2:SetText(strDesig);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(160,30);
			NPCFUN:EndMessage(true);

		end;

	end;

end
