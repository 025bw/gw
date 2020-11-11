local win = UIAPI:GetElement("FirstWin");
--供奉奖励
function NpcFunAward_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   if math.mod(SubID ,100) == 1 then
	      if math.mod((SubID-1)/100 ,100) == 3 then
		 FirstWin_Text1:SetText(NF_L0_CJ1.."|cffFF0000"..((((SubID - 1) / 100) - 3)/100).."|cffFFFFFF"..NF_L0_CJ29);
		 FirstWin_Text1:Visible(true);
	      elseif math.mod((SubID-1)/100 ,100) == 2 then
		 local Button = win:GetChild("FirstWin_Button" .. BtnID);
		 Button:SetText(NF_L0_CJ3);
                 Button:SetPosition(25,135);
		 Button:Visible(true);
	      end;
	   end;
	elseif Index == 2 then
	   if math.mod(SubID ,100) == 1 then
	      if (SubID - 1) / 100 == 10 then
		 local Button = win:GetChild("FirstWin_Button" .. BtnID);
		 Button:SetText(NF_L0_CJ4);
                 Button:SetPosition(25,95);
		 Button:Visible(true);
	      elseif (SubID - 1) / 100 == 11 then
		 local Button = win:GetChild("FirstWin_Button" .. BtnID);
		 Button:SetText(NF_L0_CJ5);
                 Button:SetPosition(25,115);
		 Button:Visible(true);
	      elseif (SubID - 1) / 100 == 12 then
		 local Button = win:GetChild("FirstWin_Button" .. BtnID);
		 Button:SetText(NF_L0_CJ6);
                 Button:SetPosition(25,135);
		 Button:Visible(true);
	      elseif (SubID - 1) / 100 == 13 then
		 local Button = win:GetChild("FirstWin_Button" .. BtnID);
		 Button:SetText(NF_L0_CJ7);
                 Button:SetPosition(25,155);
		 Button:Visible(true);
	      elseif (SubID - 1) / 100 == 14 then
		 local Button = win:GetChild("FirstWin_Button" .. BtnID);
		 Button:SetText(NF_L0_CJ8);
                 Button:SetPosition(25,175);
		 Button:Visible(true);
	      elseif (SubID - 1) / 100 == 15 then
		 local Button = win:GetChild("FirstWin_Button" .. BtnID);
		 Button:SetText(NF_L0_CJ9);
                 Button:SetPosition(25,195);
		 Button:Visible(true);
	      elseif (SubID - 1) / 100 == 16 then
		 local Button = win:GetChild("FirstWin_Button" .. BtnID);
		 Button:SetText(NF_L0_CJ10);
                 Button:SetPosition(320,95);
		 Button:Visible(true);
	      elseif (SubID - 1) / 100 == 17 then
		 local Button = win:GetChild("FirstWin_Button" .. BtnID);
		 Button:SetText(NF_L0_CJ11);
                 Button:SetPosition(320,115);
		 Button:Visible(true);
	      elseif (SubID - 1) / 100 == 18 then
		 local Button = win:GetChild("FirstWin_Button" .. BtnID);
		 Button:SetText(NF_L0_CJ12);
                 Button:SetPosition(320,135);
		 Button:Visible(true);
	      elseif (SubID - 1) / 100 == 19 then
		 local Button = win:GetChild("FirstWin_Button" .. BtnID);
		 Button:SetText(NF_L0_CJ13);
                 Button:SetPosition(320,155);
		 Button:Visible(true);
	      end;
	   elseif math.mod(SubID ,100) == 10 then
	      FirstWin_Text1:SetText(NF_L0_CJ14.."|cffFF0000"..((SubID -10) / 100).."|cffFFFFFF"..NF_L0_CJ15);
	      FirstWin_Text1:Visible(true);
	   elseif math.mod(SubID ,100) == 11 then
	      FirstWin_Text1:SetText(NF_L0_CJ16.."|cffFF0000"..((SubID -11) / 100).."|cffFFFFFF"..NF_L0_CJ17);
	      FirstWin_Text1:Visible(true);
	   end;
	elseif Index == 3 then
	   if math.mod(SubID ,100) == 2 then
	      if math.mod((SubID-2)/100 ,100) == 10 then
		 FirstWin_Text1:SetText(NF_L0_CJ18.."|cffFF0000"..((((SubID - 2) / 100) - 10) / 100).."|cffFFFFFF"..NF_L0_CJ28);
		 FirstWin_Text1:Visible(true);
	      elseif math.mod((SubID-2)/100 ,100) == 11 then
		 FirstWin_Text1:SetText(NF_L0_CJ19.."|cffFF0000"..((((SubID - 2) / 100) - 11) / 100).."|cffFFFFFF"..NF_L0_CJ28);
		 FirstWin_Text1:Visible(true);
	      elseif math.mod((SubID-2)/100 ,100) == 12 then
		 FirstWin_Text1:SetText(NF_L0_CJ20.."|cffFF0000"..((((SubID - 2) / 100) - 12) / 100).."|cffFFFFFF"..NF_L0_CJ28);
		 FirstWin_Text1:Visible(true);
	      elseif math.mod((SubID-2)/100 ,100) == 13 then
		 FirstWin_Text1:SetText(NF_L0_CJ21.."|cffFF0000"..((((SubID - 2) / 100) - 13) / 100).."|cffFFFFFF"..NF_L0_CJ28);
		 FirstWin_Text1:Visible(true);
	      elseif math.mod((SubID-2)/100 ,100) == 14 then
		 FirstWin_Text1:SetText(NF_L0_CJ22.."|cffFF0000"..((((SubID - 2) / 100) - 14) / 100).."|cffFFFFFF"..NF_L0_CJ28);
		 FirstWin_Text1:Visible(true);
	      elseif math.mod((SubID-2)/100 ,100) == 15 then
		 FirstWin_Text1:SetText(NF_L0_CJ23.."|cffFF0000"..((((SubID - 2) / 100) - 15) / 100).."|cffFFFFFF"..NF_L0_CJ28);
		 FirstWin_Text1:Visible(true);
	      elseif math.mod((SubID-2)/100 ,100) == 16 then
		 FirstWin_Text1:SetText(NF_L0_CJ24.."|cffFF0000"..((((SubID - 2) / 100) - 16) / 100).."|cffFFFFFF"..NF_L0_CJ28);
		 FirstWin_Text1:Visible(true);
	      elseif math.mod((SubID-2)/100 ,100) == 17 then
		 FirstWin_Text1:SetText(NF_L0_CJ25.."|cffFF0000"..((((SubID - 2) / 100) - 17) / 100).."|cffFFFFFF"..NF_L0_CJ28);
		 FirstWin_Text1:Visible(true);
	      elseif math.mod((SubID-2)/100 ,100) == 18 then
		 FirstWin_Text1:SetText(NF_L0_CJ26.."|cffFF0000"..((((SubID - 2) / 100) - 18) / 100).."|cffFFFFFF"..NF_L0_CJ28);
		 FirstWin_Text1:Visible(true);
	      elseif math.mod((SubID-2)/100 ,100) == 19 then
		 FirstWin_Text1:SetText(NF_L0_CJ27.."|cffFF0000"..((((SubID - 2) / 100) - 19) / 100).."|cffFFFFFF"..NF_L0_CJ28);
		 FirstWin_Text1:Visible(true);
	      end;
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(false);
	   end;
	end;
	if math.mod(SubID ,100) == 0 then
	   if SubID / 100 == 100 then
	      FirstWin_Text1:SetText(NF_L0_CJ100);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(false);                   
	   elseif SubID / 100 == 101 then
	      FirstWin_Text1:SetText(NF_L0_CJ101);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(false);
	   elseif SubID / 100 == 102 then
	      FirstWin_Text1:SetText(NF_L0_CJ102);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(false);
	   elseif SubID / 100 == 103 then
	      FirstWin_Text1:SetText(NF_L0_CJ103);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(false);
	   elseif SubID / 100 == 104 then
	      FirstWin_Text1:SetText(NF_L0_CJ104);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(false);
	   elseif SubID / 100 == 105 then
	      FirstWin_Text1:SetText(NF_L0_CJ105);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(false);
	   end;
	end;
end
