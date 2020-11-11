local win = UIAPI:GetElement("FirstWin");
--装备分解
function NpcFunBreak_SetUI(Type,Index)
	if Index== 3 then
        	zb = 0
        end;
	FirstWin_ButtonA1:SetPosition(145,500);
	FirstWin_ButtonA2:SetPosition(220,500);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunBreak_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   FirstWin_Text1:SetText(NF_L0_FJ1);
	   FirstWin_Text1:Visible(true);
	   FirstWin_Text2:SetText(NF_L0_FJ64);
	   FirstWin_Text2:Visible(true);
	   FirstWin_Text2:SetPosition(25,70);
	   if SubID == 1 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ2);
	      Button:Visible(true);
	      Button:SetPosition(25,135);
	   elseif SubID == 2 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ3);
	      Button:Visible(true);
	      Button:SetPosition(25,155);
	   elseif SubID == 3 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ4);
	      Button:Visible(true);
	      Button:SetPosition(25,175);
	   elseif SubID == 4 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ5);
	      Button:Visible(true);
	      Button:SetPosition(25,195);
	   elseif SubID == 5 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ6);
	      Button:Visible(true);
	      Button:SetPosition(25,215);
	   elseif SubID == 6 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ48);
	      Button:Visible(true);
	      Button:SetPosition(25,235);
	   elseif SubID == 7 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ70);
	      Button:Visible(true);
	      Button:SetPosition(310,135);
	   elseif SubID == 8 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ80);
	      Button:Visible(true);
	      Button:SetPosition(310,155);
	   elseif SubID == 9 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ90);
	      Button:Visible(true);
	      Button:SetPosition(310,175);
	   end;
	elseif Index == 2 then
	   if SubID >= 9900 and SubID <= 10000 then
	      if SubID == 9930 then
		 FirstWin_Text1:SetText(NF_L0_FJ7);
		 FirstWin_Text1:Visible(true);
	      elseif SubID == 9931 then
		 FirstWin_Text1:SetText(NF_L0_FJ23);
		 FirstWin_Text1:Visible(true);
	      elseif SubID == 9932 then
		 FirstWin_Text1:SetText(NF_L0_FJ24);
		 FirstWin_Text1:Visible(true);
	      elseif SubID == 9933 then
		 FirstWin_Text1:SetText(NF_L0_FJ25);
		 FirstWin_Text1:Visible(true);
	      elseif SubID == 9934 then
		 FirstWin_Text1:SetText(NF_L0_FJ26);
		 FirstWin_Text1:Visible(true);
	      elseif SubID == 9935 then
		 FirstWin_Text1:SetText(NF_L0_FJ27);
		 FirstWin_Text1:Visible(true);
	      elseif SubID == 9936 then
		 FirstWin_Text1:SetText(NF_L0_FJ28);
		 FirstWin_Text1:Visible(true);
	      elseif SubID == 9937 then
		 FirstWin_Text1:SetText(NF_L0_FJ29);
		 FirstWin_Text1:Visible(true);
	      elseif SubID == 9938 then
		 FirstWin_Text1:SetText(NF_L0_FJ30);
		 FirstWin_Text1:Visible(true);
	      elseif SubID == 9960 then
		 FirstWin_Text1:SetText(NF_L0_FJ31);
		 FirstWin_Text1:Visible(true);
	      elseif SubID == 9961 then
		 FirstWin_Text1:SetText(NF_L0_FJ32);
		 FirstWin_Text1:Visible(true);
	      elseif SubID == 9962 then
		 FirstWin_Text1:SetText(NF_L0_FJ33);
		 FirstWin_Text1:Visible(true);
	      elseif SubID == 9990 then
		 FirstWin_Text1:SetText(NF_L0_FJ34);
		 FirstWin_Text1:Visible(true);
	      end;
	   elseif SubID >= 1000*100 and SubID < 3700*100 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ8);
	      Button:Visible(true);
	      Button:SetPosition(25,135);
	   elseif SubID == 1 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ9);
	      Button:Visible(true);
	      Button:SetPosition(25,135);
	   elseif SubID == 2 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ10);
	      Button:Visible(true);
	      Button:SetPosition(25,155);
	   elseif SubID == 3 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ11);
	      Button:Visible(true);
	      Button:SetPosition(25,175);
	   elseif SubID == 4 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ12);
	      Button:Visible(true);
	      Button:SetPosition(25,195);
	   elseif SubID == 6 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ62);
	      Button:Visible(true);
	      Button:SetPosition(25,215);
	   elseif SubID == 201 then
	      FirstWin_Text1:SetText(LuaText["NF_Break_T" .. SubID]);
	      FirstWin_Text1:Visible(true);
              FirstWin_ItemBtn1:Visible(true);
              FirstWin_ItemBtn1:SetPosition(25,75);
	   end;
	elseif Index == 3 then
	   if SubID < 100 and SubID >= 0 then
	      FirstWin_Text1:SetText(NF_L0_FJ13);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	   end;
	   if (SubID - 10) == 0 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ14);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(25,135 + (zb - 1)*20);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 1 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ15);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(25,135 + (zb - 1)*20);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 2 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ16);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(25,135 + (zb - 1)*20);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 3 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ17);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(25,135 + (zb - 1)*20);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 10 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ18);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(25,135 + (zb - 1)*20);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 13 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ19);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(25,135 + (zb - 1)*20);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 14 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ20);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(320,135 + (zb - 1)*20);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 15 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ21);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(320,135 + (zb - 1)*20);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 16 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ22);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(320,135 + (zb - 1)*20);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 4 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ52);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(320,135 + (zb - 1)*20);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 5 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ53);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(320,135 + (zb - 1)*20);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 6 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ54);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(320,135 + (zb - 1)*20);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 7 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ55);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(320,135 + (zb - 1)*20);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 8 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ56);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(320,135 + (zb - 1)*25);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 9 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ57);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(320,135 + (zb - 1)*25);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 11 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ58);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(320,135 + (zb - 1)*25);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 12 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ59);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(320,135 + (zb - 1)*25);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 17 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ60);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(320,135 + (zb - 1)*25);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif (SubID - 10) == 18 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_FJ61);
	      Button:Visible(true);
	      zb = zb + 1
	      Button:SetPosition(320,135 + (zb - 1)*25);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif SubID == 100 then
	      FirstWin_Text1:SetText(NF_L0_FJ38);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID == 200 then
	      FirstWin_Text1:SetText(NF_L0_FJ39);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID == 300 then
	      FirstWin_Text1:SetText(NF_L0_FJ40);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID == 400 then
	      FirstWin_Text1:SetText(NF_L0_FJ41);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID == 600 then
	      FirstWin_Text1:SetText(NF_L0_FJ63);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID >= 301 and SubID <= 304 then
	      FirstWin_Text1:SetText(LuaText["NF_Break_T" .. SubID]);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	   end;
	end;
	if SubID == 1000 then
	   FirstWin_Text1:SetText(NF_L0_FJ1000);
	   FirstWin_Text1:Visible(true);
	elseif SubID == 1001 then
	   FirstWin_Text1:SetText(NF_L0_FJ1001);
	   FirstWin_Text1:Visible(true);
           FirstWin_Text1:SetPosition(25,160);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1002 then
	   FirstWin_Text1:SetText(NF_L0_FJ1002);
	   FirstWin_Text1:Visible(true);
           FirstWin_Text1:SetPosition(25,160);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1003 then
	   FirstWin_Text1:SetText(NF_L0_FJ1003);
	   FirstWin_Text1:Visible(true);
           FirstWin_Text1:SetPosition(25,160);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1004 then
	   FirstWin_Text1:SetText(NF_L0_FJ1004);
	   FirstWin_Text1:Visible(true);
           FirstWin_Text1:SetPosition(25,160);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1005 then
	   FirstWin_Text1:SetText(NF_L0_FJ1005);
	   FirstWin_Text1:Visible(true);
           FirstWin_Text1:SetPosition(25,160);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1006 then
	   FirstWin_Text1:SetText(NF_L0_FJ1006);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1007 then
	   FirstWin_Text1:SetText(NF_L0_FJ1007);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1008 then
	   FirstWin_Text1:SetText(NF_L0_FJ1008);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1009 then
	   FirstWin_Text1:SetText(NF_L0_FJ1009);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1010 then
	   FirstWin_Text1:SetText(NF_L0_FJ1010);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1011 then
	   FirstWin_Text1:SetText(NF_L0_FJ1011);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1012 then
	   FirstWin_Text1:SetText(NF_L0_FJ1012);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1013 then
	   FirstWin_Text1:SetText(NF_L0_FJ1013);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1014 then
	   FirstWin_Text1:SetText(NF_L0_FJ1014);
	   FirstWin_Text1:Visible(true);
           FirstWin_Text1:SetPosition(25,160);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1015 then
	   FirstWin_Text1:SetText(NF_L0_FJ1015);
	   FirstWin_Text1:Visible(true);
           FirstWin_Text1:SetPosition(25,160);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1016 then
	   FirstWin_Text1:SetText(NF_L0_FJ1016);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1017 then
	   FirstWin_Text1:SetText(NF_L0_FJ1017);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1117 then
	   FirstWin_Text1:SetText(NF_L0_FJ1117);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1125 then
	   FirstWin_Text1:SetText(NF_L0_FJ1125);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1822 then
	   FirstWin_Text1:SetText(NF_L0_FJ1822);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1823 then
	   FirstWin_Text1:SetText(NF_L0_FJ1825);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1018 then
	   FirstWin_Text1:SetText(NF_L0_FJ1018);
	   FirstWin_Text1:Visible(true);
	elseif SubID == 1019 then
	   FirstWin_Text1:SetText(NF_L0_FJ1019);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1020 then
	   FirstWin_Text1:SetText(NF_L0_FJ1020);
	   FirstWin_Text1:Visible(true);
           FirstWin_Text1:SetPosition(25,160);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1122 then
	   FirstWin_Text1:SetText(NF_L0_FJ1122);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1021 then
	   FirstWin_Text1:SetText(NF_L0_FJ1021);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1022 then
	   FirstWin_Text1:SetText(NF_L0_FJ1022);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1023 then
	   FirstWin_Text1:SetText(NF_L0_FJ1023);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1024 then
	   FirstWin_Text1:SetText(NF_L0_FJ1024);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1025 then
	   FirstWin_Text1:SetText(NF_L0_FJ1025);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1026 then
	   FirstWin_Text1:SetText(NF_L0_FJ1026);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1027 then
	   FirstWin_Text1:SetText(NF_L0_FJ1027);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1028 then
	   FirstWin_Text1:SetText(NF_L0_FJ1028);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1029 then
	   FirstWin_Text1:SetText(NF_L0_FJ1029);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1030 then
	   FirstWin_Text1:SetText(NF_L0_FJ1030);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1031 then
	   FirstWin_Text1:SetText(NF_L0_FJ1031);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	elseif SubID == 1032 then
	   FirstWin_Text1:SetText(NF_L0_FJ1032);
	   FirstWin_Text1:Visible(true);
           FirstWin_Text1:SetPosition(25,160);
	   NPCFUN:EndMessage(true);
	elseif SubID == 2011 then
	      FirstWin_Text2:SetText(NF_L0_FJ35);
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text3:SetText(NF_L0_FJ46);
	      FirstWin_Text3:Visible(true);
	      FirstWin_Text3:SetPosition(25,55);
	      FirstWin_Text4:SetText(NF_L0_FJ47);
	      FirstWin_Text4:Visible(true);
	      FirstWin_Text4:SetPosition(25,75);
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(25,110);
	      FirstWin_ItemBtn2:Visible(true);
	      FirstWin_ItemBtn2:SetPosition(75,110);
	      FirstWin_ItemBtn3:Visible(true);
	      FirstWin_ItemBtn3:SetPosition(125,110);
              FirstWin_ButtonA3:Visible(true);
              FirstWin_ButtonA3:SetText(NF_L0_TXT200);
              FirstWin_ButtonA3:SetPosition(420,250);
              FirstWin_ButtonA1:Visible(false);
              FirstWin_ButtonA2:Visible(false);
	end;
end

function NpcFunBreak_SetMsg(Type,Index,PreSubID,SubID)
	if Index == 1 then
	   if SubID == 1 then
	      FirstWin_Text1:SetText(NF_L0_FJ35);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text2:SetText(NF_L0_FJ46);
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(25,55);
	      FirstWin_Text3:SetText(NF_L0_FJ47);
	      FirstWin_Text3:Visible(true);
	      FirstWin_Text3:SetPosition(25,75);
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(25,145);
	      FirstWin_ItemBtn2:Visible(true);
	      FirstWin_ItemBtn2:SetPosition(75,145);
	      FirstWin_ItemBtn3:Visible(true);
	      FirstWin_ItemBtn3:SetPosition(125,145);
	      NPCFUN:HaveMessageBox(true);
	   elseif SubID == 2 then
	      FirstWin_Text1:SetText(NF_L0_FJ36);
	      FirstWin_Text1:Visible(true);
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(25,55);
	      FirstWin_Text2:SetText(NF_L0_FJ43);
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(25,105);
	      FirstWin_ItemBtn2:Visible(true);
	      FirstWin_ItemBtn2:SetPosition(25,125);
	      FirstWin_Text3:SetText(NF_L0_FJ44);
	      FirstWin_Text3:Visible(true);
	      FirstWin_Text3:SetPosition(25,175);
	      FirstWin_ItemBtn3:Visible(true);
	      FirstWin_ItemBtn3:SetPosition(25,195);
	      NPCFUN:HaveMessageBox(true);
	   elseif SubID== 3 then
	      FirstWin_Text1:SetText(NF_L0_FJ37);
	      FirstWin_Text1:Visible(true);--35
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(25,55);--55
	      FirstWin_Text2:SetText(NF_L0_FJ45);
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(25,105);--105
	      FirstWin_ItemBtn2:Visible(true);
	      FirstWin_ItemBtn2:SetPosition(25,125);
	      FirstWin_Text3:SetText(NF_L0_FJ44);
	      FirstWin_Text3:Visible(true);
	      FirstWin_Text3:SetPosition(25,175);
	      FirstWin_ItemBtn3:Visible(true);
	      FirstWin_ItemBtn3:SetPosition(25,195);
	      NPCFUN:HaveMessageBox(true);
	   elseif SubID == 4 then
	      FirstWin_Text1:SetText(NF_L0_FJ42);
	      FirstWin_Text1:Visible(true);
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(25,55);
	      NPCFUN:HaveMessageBox(true);
	   elseif SubID == 7 then
	      FirstWin_Text1:SetText(NF_L0_FJ77);
	      FirstWin_Text1:Visible(true);
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(25,55);
	      NPCFUN:HaveMessageBox(true);
	   elseif SubID == 8 then
	      FirstWin_Text1:SetText(NF_L0_FJ1824);
	      FirstWin_Text1:Visible(true);
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(25,175);
	      NPCFUN:HaveMessageBox(true);
	   elseif SubID== 6 then
	      FirstWin_Text1:SetText(NF_L0_FJ49);
	      FirstWin_Text1:Visible(true);
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(25,55);
	      FirstWin_Text2:SetText(NF_L0_FJ50);
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(25,105);
	      FirstWin_ItemBtn2:Visible(true);
	      FirstWin_ItemBtn2:SetPosition(25,125);
	      FirstWin_Text3:SetText(NF_L0_FJ51);
	      FirstWin_Text3:Visible(true);
	      FirstWin_Text3:SetPosition(25,175);
	      FirstWin_ItemBtn3:Visible(true);
	      FirstWin_ItemBtn3:SetPosition(25,195);
	      NPCFUN:HaveMessageBox(true);
	   end;
	end;
end