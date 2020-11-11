local win = UIAPI:GetElement("FirstWin");
local lvv = nil
local stil_1 = nil
local stil_2 = nil
local stil_3 = nil
local shxg ={}
local shtext ={}
--圣石工艺
function NpcFunEment_SetUI(Type,Index)
	FirstWin_Text1:SetPosition(45,100);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	strDesig = ""
	win:Visible(true);

end

function NpcFunEment_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   if SubID  == 2101 then
		FirstWin_Text1:SetText(NF_L0_ZBJY2102);
		FirstWin_Text1:Visible(true);
		FirstWin_Text1:SetPosition(45,100);
	   else
		FirstWin_Text1:SetText(NF_L0_ZBXQ1);
		FirstWin_Text1:Visible(true);
	   end
	elseif Index == 2 then --服务器消息提示
	   if SubID == 106 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ2);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text2:SetText(NF_L0_ZBXQ3);
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(25,190);
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(60,70);
	      FirstWin_ItemBtn2:Visible(true);
	      FirstWin_ItemBtn2:SetPosition(60,140);
	   elseif SubID  == 206 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_ZBXQ206);
	      Button:SetTextFormat(0);
	      Button:SetPosition(25,50);
	      Button:Visible(true);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif SubID  == 306 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_ZBXQ306);
	      Button:SetTextFormat(0);
	      Button:SetPosition(25,120);
	      Button:Visible(true);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif SubID == 406 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ6);
	      FirstWin_Text1:Visible(true);
              FirstWin_Text1:SetPosition(25,20);
	      FirstWin_Text2:SetText(NF_L0_ZBXQ7);
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(25,160);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_CY001);
	      Button:Visible(true);
	      Button:SetPosition(25,230);
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(60,120);
	      FirstWin_ItemBtn2:Visible(true);
	      FirstWin_ItemBtn2:SetPosition(330,120);
	      FirstWin_ItemBtn3:Visible(true);
	      FirstWin_ItemBtn3:SetPosition(60,180);
	   elseif SubID  == 506 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_ZBXQ506);
	      Button:SetTextFormat(0);
	      Button:SetPosition(20,95);
	      Button:Visible(true);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif SubID  == 606 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_ZBXQ606);
	      Button:SetTextFormat(0);
	      Button:SetPosition(320,95);
	      Button:Visible(true);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif SubID == 706 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ9);
	      FirstWin_Text1:Visible(true);

	      FirstWin_Text2:SetText(NF_L0_ZBXQ10);
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(25,140);
	      FirstWin_Text3:SetText(NF_L0_ZBXQ11);
	      FirstWin_Text3:Visible(true);
	      FirstWin_Text3:SetPosition(25,200);
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(60,90);
	      FirstWin_ItemBtn2:Visible(true);
	      FirstWin_ItemBtn2:SetPosition(330,90);
	      FirstWin_ItemBtn3:Visible(true);
	      FirstWin_ItemBtn3:SetPosition(60,160);
	   elseif SubID  == 806 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_ZBXQ806);
	      Button:SetTextFormat(0);
	      Button:SetPosition(25,70);
	      Button:Visible(true);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif SubID  == 906 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_ZBXQ906);
	      Button:SetTextFormat(0);
	      Button:SetPosition(320,70);
	      Button:Visible(true);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
		elseif SubID == 907 then
			FirstWin_Text1:SetText(HolyLevup2)
			FirstWin_Text1:Visible(true)

			FirstWin_Text2:SetText(HolyLevup3)
			FirstWin_Text2:Visible(true)
			FirstWin_Text2:SetPosition(25,140)

--~ 			FirstWin_Text3:SetText(HolyLevup4)
--~ 			FirstWin_Text3:Visible(true)
--~ 			FirstWin_Text3:SetPosition(25,210)

			FirstWin_ItemBtn1:Visible(true)
			FirstWin_ItemBtn1:SetPosition(25,90)

			FirstWin_ItemBtn2:Visible(true)
			FirstWin_ItemBtn2:SetPosition(25,160)

			FirstWin_ItemBtn3:Visible(true)
			FirstWin_ItemBtn3:SetPosition(95,160)

			FirstWin_ItemBtn4:Visible(true)
			FirstWin_ItemBtn4:SetPosition(165,160)
	   end;
	elseif Index == 3 then --服务器消息提示
	   if SubID  == 4406 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ8);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	   end;
	   if SubID == 3100 then
	      FirstWin_Text4:SetText(NF_L0_ZBXQ6);
	      FirstWin_Text4:Visible(true);
	      FirstWin_Text4:SetPosition(25,20);
	      FirstWin_Text2:SetText(NF_L0_ZBXQ7);
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(25,160);
	      FirstWin_Text3:SetText(NF_L0_ZBXQ606);
	      FirstWin_Text3:Visible(true);
	      FirstWin_Text3:SetPosition(320,95);
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(60,120);
	      FirstWin_ItemBtn2:Visible(true);
	      FirstWin_ItemBtn2:SetPosition(330,120);
	      FirstWin_ItemBtn3:Visible(true);
	      FirstWin_ItemBtn3:SetPosition(60,180);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_ZBXQ506);
	      Button:SetTextFormat(0);
	      Button:SetPosition(20,95);
	      Button:Visible(true);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
              FirstWin_ButtonA3:Visible(true);
              FirstWin_ButtonA3:SetText(NF_L0_TXT000);
              FirstWin_ButtonA3:SetPosition(420,250);
              FirstWin_ButtonA1:Visible(false);
              FirstWin_ButtonA2:Visible(false);
	   elseif SubID == 3200 then
	      FirstWin_Text4:SetText(NF_L0_ZBXQ9);
	      FirstWin_Text4:Visible(true);
	      FirstWin_Text4:SetPosition(25,30);
	      FirstWin_Text2:SetText(NF_L0_ZBXQ10);
	      FirstWin_Text2:Visible(true);
              FirstWin_Text2:SetPosition(25,140);
	      FirstWin_Text3:SetText(NF_L0_ZBXQ906);
	      FirstWin_Text3:Visible(true);
	      FirstWin_Text3:SetPosition(320,70);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_ZBXQ806);
	      Button:SetTextFormat(0);
	      Button:SetPosition(43,70);
	      Button:Visible(true);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(60,90);
	      FirstWin_ItemBtn2:Visible(true);
	      FirstWin_ItemBtn2:SetPosition(330,90);
	      FirstWin_ItemBtn3:Visible(true);
	      FirstWin_ItemBtn3:SetPosition(60,160);
              FirstWin_ButtonA3:Visible(true);
              FirstWin_ButtonA3:SetText(NF_L0_TXT100);
              FirstWin_ButtonA3:SetPosition(420,250);
              FirstWin_ButtonA1:Visible(false);
              FirstWin_ButtonA2:Visible(false);
		elseif SubID == 3300 then
			FirstWin_ButtonA3:Visible(true);
			FirstWin_ButtonA3:SetText(NF_L0_TXT000);
			FirstWin_ButtonA3:SetPosition(420,250);
			FirstWin_ButtonA1:Visible(false);
			FirstWin_ButtonA2:Visible(false);
			FirstWin_Text1:SetText(HolyLevup2)
			FirstWin_Text1:Visible(true)

			FirstWin_Text2:SetText(HolyLevup3)
			FirstWin_Text2:Visible(true)
			FirstWin_Text2:SetPosition(25,140)

--~ 			FirstWin_Text3:SetText(HolyLevup4)
--~ 			FirstWin_Text3:Visible(true)
--~ 			FirstWin_Text3:SetPosition(25,210)

			FirstWin_ItemBtn1:Visible(true)
			FirstWin_ItemBtn1:SetPosition(25,90)

			FirstWin_ItemBtn2:Visible(true)
			FirstWin_ItemBtn2:SetPosition(25,160)

			FirstWin_ItemBtn3:Visible(true)
			FirstWin_ItemBtn3:SetPosition(95,160)

			FirstWin_ItemBtn4:Visible(true)
			FirstWin_ItemBtn4:SetPosition(165,160)
	   end;
	end;
	if math.mod(SubID ,100) == 0 then
	   if SubID / 100 == 1 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ100);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	   elseif SubID / 100 == 2 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ200);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	   elseif SubID / 100 == 3 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ300);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	   elseif SubID / 100 == 4 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ400);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	   elseif SubID / 100 == 5 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ500);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	   elseif SubID / 100 == 7 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ700);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	   elseif SubID / 100 == 8 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ800);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	   elseif SubID / 100 == 9 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ900);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	   elseif SubID / 100 == 10 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ1000);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	   elseif SubID / 100 == 11 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ1100);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	   elseif SubID / 100 == 12 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ1200);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	   elseif SubID / 100 == 13 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ1300);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	   elseif SubID / 100 == 14 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ1400);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	   elseif SubID / 100 == 15 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ1500);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	   elseif SubID / 100 == 16 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ1600);
	      FirstWin_Text1:Visible(true);
              FirstWin_Text1:SetPosition(25,220);
	   elseif SubID / 100 == 17 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ1700);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,220);
	   elseif SubID / 100 == 18 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ1800);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,220);
	   elseif SubID / 100 == 19 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ1900);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,220);
	   elseif SubID / 100 == 20 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ2000);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,220);
	   elseif SubID / 100 == 21 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ2100);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,220);
	   elseif SubID / 100 == 22 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ2200);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,100);
	   elseif SubID / 100 == 23 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ2300);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,220);
	   elseif SubID / 100 == 24 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ2400);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,220);
	   elseif SubID / 100 == 25 then
			FirstWin_Text3:SetText(HolyLevup4)
			FirstWin_Text3:Visible(true)
			FirstWin_Text3:SetPosition(25,210)
	   elseif SubID / 100 == 26 then
			FirstWin_Text3:SetText(HolyLevup5)
			FirstWin_Text3:Visible(true)
			FirstWin_Text3:SetPosition(25,210)
	   elseif SubID / 100 == 27 then
			FirstWin_Text3:SetText(HolyLevup5)
			FirstWin_Text3:Visible(true)
			FirstWin_Text3:SetPosition(25,210)
	   end;

	   NPCFUN:EndMessage(true);
	elseif math.mod(SubID ,100) == 1 then
	   if ( SubID - 1 ) / 100 == 1 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_ZBXQ101);
	      Button:Visible(true);
	      Button:SetPosition(25,210);
	   elseif ( SubID - 1 ) / 100 == 2 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_ZBXQ201);
	      Button:Visible(true);
	      Button:SetPosition(25,235);
	   elseif ( SubID - 1 ) / 100 == 3 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_ZBXQ301);
	      Button:Visible(true);
	      Button:SetPosition(25,185);
	   elseif ( SubID - 1 ) / 100 == 4 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_ZBXQ401);
	      Button:Visible(true);
	      Button:SetPosition(25,135);
	   elseif ( SubID - 1 ) / 100 == 5 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_ZBXQ501);
	      Button:Visible(true);
	      Button:SetPosition(25,160);
	   elseif ( SubID - 1 ) / 100 == 6 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(HolyLevup1);
	      Button:Visible(true);
	      Button:SetPosition(25,260);
	   end;
	elseif math.mod(SubID ,100) == 2 then
	   if ( SubID - 2 ) / 100 == 9040 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ904002);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,220);
	   elseif ( SubID - 2 ) / 100 == 9041 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ904102);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,220);
	   elseif ( SubID - 2 ) / 100 == 9042 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ904202);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,220);
	   end;

	   NPCFUN:EndMessage(true);
	elseif math.mod(SubID ,100) == 3 then
           stil_1 = math.mod((SubID-3)/100 ,100)
           stil_2 = math.mod((SubID-(stil_1*100)-3)/10000 ,100)
           stil_3 = (SubID -stil_2*10000-stil_1*100 - 3 )/1000000
           shxg = {[1]={32,80} ,[2]={32,80},[5]={16,40},[6]={12,30},[7]={24,60},[8]={40,100},[3]={20,50},[4]={24,60},[9]={22,55},[10]={22,55},[11]={16,40},[12]={14,35},[19]={16,40},[20]={16,40},[13]={28,70},[14]={40,100}}
           shtext = {[1]=NF_L0_ZBXQ103 , [2]=NF_L0_ZBXQ203 , [5]=NF_L0_ZBXQ503 , [6]=NF_L0_ZBXQ603 , [7]=NF_L0_ZBXQ703 , [8]=NF_L0_ZBXQ803 , [3]=NF_L0_ZBXQ303 , [4]=NF_L0_ZBXQ403 , [9]=NF_L0_ZBXQ903 , [10]=NF_L0_ZBXQ1003 , [11]=NF_L0_ZBXQ1103 , [12]=NF_L0_ZBXQ1203 , [19]=NF_L0_ZBXQ1903, [20]=NF_L0_ZBXQ2003 , [13]=NF_L0_ZBXQ1303 , [14]=NF_L0_ZBXQ1403 }
           if stil_2 == 1 or stil_2 ==2 or stil_2 ==7  or stil_2 == 9 or stil_2 == 10 or stil_2 ==19 or stil_2 ==13 or stil_2 ==3 or stil_2 ==4 then
	      FirstWin_Text1:SetText((shtext[stil_2])..(stil_3 / 100)..NF_L0_ZBXQ10003.."|cffF14187"..NF_L0_TXT001..(stil_1+1)..NF_L0_TXT002..(((shxg[stil_2][1])*(stil_1+1))/100)..NF_L0_ZBXQ10003..NF_L0_TXT003..(((shxg[stil_2][2])*(stil_1+1))/100)..NF_L0_ZBXQ10003..NF_L0_TXT004.."|cFFFFFFFF");
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,200);
	   elseif  stil_2 == 5 or stil_2 == 6 or stil_2 == 8 or stil_2 == 11 or stil_2 == 12 or stil_2 == 20 or stil_2 == 14 then
	      FirstWin_Text1:SetText((shtext[stil_2])..(stil_3).."|cffF14187"..NF_L0_TXT001..(stil_1+1)..NF_L0_TXT002..((shxg[stil_2][1])*(stil_1+1))..NF_L0_TXT003..((shxg[stil_2][2])*(stil_1+1))..NF_L0_TXT004.."|cFFFFFFFF"  );
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,200);
	   end;
	   NPCFUN:EndMessage(true);
	elseif math.mod(SubID ,100) == 4 then
	   if ( SubID - 4 ) / 100 == 9030 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ903004);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,220);
	   elseif ( SubID - 4 ) / 100 == 9031 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ903104);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,220);
	   end;

	   NPCFUN:EndMessage(true);
	elseif math.mod(SubID ,100) == 5 then
	   if ( SubID - 5 ) / 100 == 9030 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ903005);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,220);
	   elseif ( SubID - 5 ) / 100 == 9031 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ903105);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,220);
	   end;

	   NPCFUN:EndMessage(true);
	end;
end

function NpcFunEment_SetMsg(Type,Index,PreSubID,SubID)
	if Index == 1 then
	   if SubID == 201 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ4);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(45,50);
	      FirstWin_Text2:SetText(NF_L0_ZBXQ41);
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(45,130);
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(60,90);
	      InputText1:Visible(true);
	      InputText1:SetPosition(52,190);
	      Input11:Visible(true);
	      Input11:SetPosition(56,190);
	      Input12:Visible(true);
	      Input12:SetPosition(48,190);
	      Input13:Visible(true);
	      Input13:SetPosition(150,190);
	      NPCFUN:HaveMessageBox(true);
	   elseif SubID == 301 then
	      FirstWin_Text1:SetText(NF_L0_ZBXQ5);
	      FirstWin_Text1:Visible(true);

	      FirstWin_Text2:SetText(NF_L0_ZBXQ12);
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(25,110);
	      FirstWin_ItemBtn1:Visible(true);
	      FirstWin_ItemBtn1:SetPosition(60,150);
	      NPCFUN:HaveMessageBox(true);
	   end;
	elseif Index == 2 and PreSubID == 501 then
		lvv = PlayerAPI:GetNpcFunStoneLv(0);
	    if lvv ==1 then
			lvv=0;
			FirstWin_Text1:SetText(NF_L0_ZBXQ5000);
			FirstWin_Text1:Visible(true);
			FirstWin_Text1:SetPosition(25,30);
			NPCFUN:HaveMessageBox(true);
		end;
	end;
end
