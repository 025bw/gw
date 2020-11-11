local win = UIAPI:GetElement("FirstWin");
--圣衣铸造
function NpcFunSanLoad_SetUI(Type,Index)
	FirstWin_ButtonA1:SetPosition(145,500);
	FirstWin_ButtonA2:SetPosition(220,500);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);
end

function NpcFunSanLoad_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   if SubID  == 2101 then
		FirstWin_Text1:SetText(NF_L0_ZBJY2101);
		FirstWin_Text1:Visible(true);
		FirstWin_Text1:SetPosition(25,100);
	   else
		FirstWin_Text1:SetText(NF_L0_ZBJY1);
		FirstWin_Text1:Visible(true);		
	   end
	elseif Index == 2 then --服务器消息提示
	   if math.mod(SubID ,10) == 4 then
		
		local Button = win:GetChild("FirstWin_Button" .. BtnID);
		Button:SetText(NF_L0_ZBJY404..((SubID-4)/10));
		Button:SetTextFormat(0);
		Button:SetPosition(25,225);
		Button:Visible(true);
		Button:Enable(false);
		UIAPI:SetChecked(false,Button);
	   elseif math.mod(SubID ,10) == 5 then
		
		local Button = win:GetChild("FirstWin_Button" .. BtnID);
		Button:SetText(NF_L0_ZBJY405..((SubID-5)/10));
		Button:SetTextFormat(0);
		Button:SetPosition(25,240);
		Button:Visible(true);
		Button:Enable(false);
		UIAPI:SetChecked(false,Button);
	   elseif SubID  == 106 then
		FirstWin_Text1:SetText(NF_L0_ZBJY2);
		FirstWin_Text1:Visible(true);
		
		FirstWin_Text2:SetText(NF_L0_ZBJY3);
		FirstWin_Text2:Visible(true);
		FirstWin_Text2:SetPosition(25,120);
		FirstWin_Text3:SetText(NF_L0_ZBJY4);
		FirstWin_Text3:Visible(true);
		FirstWin_Text3:SetPosition(25,185);
		FirstWin_ItemBtn1:Visible(true);
		FirstWin_ItemBtn1:SetPosition(52,80);
		InputText1:Visible(true);
		InputText1:SetPosition(60,160);
		Input11:Visible(true);
		Input11:SetPosition(60,160);
		Input12:Visible(true);
		Input12:SetPosition(52,160);
		Input13:Visible(true);
		Input13:SetPosition(154,160);
		
		local Button = win:GetChild("FirstWin_Button" .. BtnID);
		Button:SetText(NF_L0_ZBJY406);
		Button:SetTextFormat(0);
		Button:SetPosition(25,50);
		Button:Visible(true);
		Button:Enable(false);
		UIAPI:SetChecked(false,Button);
	   elseif SubID == 206 then
		FirstWin_Text1:SetText(NF_L0_ZBJY5);
		FirstWin_Text1:Visible(true);		
		FirstWin_Text2:SetText(NF_L0_ZBJY6);
		FirstWin_Text2:Visible(true);
		FirstWin_Text2:SetPosition(25,220);
		FirstWin_Text3:SetText(NF_L0_ZBJY36);
		FirstWin_Text3:Visible(true);
		FirstWin_Text3:SetPosition(25,80);
		FirstWin_ItemBtn1:Visible(true);
		FirstWin_ItemBtn1:SetPosition(60,100);
		FirstWin_ItemBtn2:Visible(true);
		FirstWin_ItemBtn2:SetPosition(60,180);
		
		local Button = win:GetChild("FirstWin_Button" .. BtnID);
		Button:SetText(NF_L0_ZBJY37);
		Button:SetTextFormat(0);
		Button:SetPosition(25,155);
		Button:Visible(true);
		Button:Enable(false);
		UIAPI:SetChecked(false,Button);
	   elseif SubID== 306 then
		FirstWin_Text1:SetText(NF_L0_ZBJY7);
		FirstWin_Text1:Visible(true);		
		FirstWin_Text2:SetText(NF_L0_ZBJY8);
		FirstWin_Text2:Visible(true);
		FirstWin_Text2:SetPosition(15,185);
		FirstWin_Text3:SetText(NF_L0_ZBJY9);
		FirstWin_Text3:Visible(true);
		FirstWin_Text3:SetPosition(15,255);
		FirstWin_ItemBtn1:Visible(true);
		FirstWin_ItemBtn1:SetPosition(60,84);
		FirstWin_ItemBtn2:Visible(true);
		FirstWin_ItemBtn2:SetPosition(60,146);
	   elseif SubID  == 406 then
		
		local Button = win:GetChild("FirstWin_Button" .. BtnID);
		Button:SetText(NF_L0_ZBJY506);
		Button:SetTextFormat(0);
		Button:SetPosition(25,60);
		Button:Visible(true);
		Button:Enable(false);
		UIAPI:SetChecked(false,Button);
	   elseif SubID  == 506 then
		
		local Button = win:GetChild("FirstWin_Button" .. BtnID);
		Button:SetText(NF_L0_ZBJY606);
		Button:SetTextFormat(0);
		Button:SetPosition(25,126);
		Button:Visible(true);
		Button:Enable(false);
		UIAPI:SetChecked(false,Button);
	   elseif SubID  == 606 then
		
		local Button = win:GetChild("FirstWin_Button" .. BtnID);
		Button:SetText("");
		Button:SetTextFormat(0);
		Button:SetPosition(25,200);
		Button:Visible(true);
		Button:Enable(false);
		UIAPI:SetChecked(false,Button);
	   end;
     elseif Index >= 3 then
        if SubID == 10001 then
	    FirstWin_Text1:SetText(NF_L0_ZBJY10001);
	    FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
	if math.mod(SubID, 10) == 6 then
           FirstWin_Text2:SetText(NF_L0_ZBJY405..((SubID-6)/10));
	   FirstWin_Text2:Visible(true);
	   FirstWin_Text2:SetPosition(43,225);
        end;
	if math.mod(SubID, 10) == 7 then
           FirstWin_Text3:SetText(NF_L0_ZBJY404..((SubID-7)/10));
	   FirstWin_Text3:Visible(true);
	   FirstWin_Text3:SetPosition(43,245);
        end;
      end
        if SubID  == 999 then
	   FirstWin_Text1:SetText(NF_L0_ZBJY999);
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
        end;
	if math.mod(SubID ,100) == 0 then
	   if SubID / 100 == 1 then
	      FirstWin_Text1:SetText(NF_L0_ZBJY100);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,100);
	   elseif SubID / 100 == 2 then
	      FirstWin_Text1:SetText(NF_L0_ZBJY200);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,100);
	   elseif SubID / 100 == 3 then
	      FirstWin_Text1:SetText(NF_L0_ZBJY300);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,100);
	   elseif SubID / 100 == 4 then
	      FirstWin_ButtonA1:Visible(false);
	      FirstWin_ButtonA2:Visible(false);
	      FirstWin_ButtonA3:Visible(true);
              FirstWin_ButtonA3:SetText(NF_L0_ZBJY101);
	      FirstWin_ButtonA3:SetPosition(400,250);
		FirstWin_Text1:SetText(NF_L0_ZBJY211);
		FirstWin_Text1:Visible(true);
		FirstWin_ItemBtn1:Visible(true);
		FirstWin_ItemBtn1:SetPosition(52,85);
		InputText1:Visible(true);
		InputText1:SetPosition(60,155);
		Input11:Visible(true);
		Input11:SetPosition(60,155);
		Input12:Visible(true);
		Input12:SetPosition(52,155);
		Input13:Visible(true);
		Input13:SetPosition(154,155);
	   elseif SubID / 100 == 5 then
	      FirstWin_Text1:SetText(NF_L0_ZBJY500);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,100);
	   elseif SubID / 100 == 6 then
	      FirstWin_Text1:SetText(NF_L0_ZBJY600);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,100);
	   elseif SubID / 100 == 7 then
	      FirstWin_Text1:SetText(NF_L0_ZBJY700);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,100);
	   elseif SubID / 100 == 8 then
	      FirstWin_ButtonA1:Visible(false);
	      FirstWin_ButtonA2:Visible(false);
	      FirstWin_ButtonA3:Visible(true);
              FirstWin_ButtonA3:SetText(NF_L0_ZBJY201);
	      FirstWin_ButtonA3:SetPosition(400,250);
		FirstWin_Text1:SetText(NF_L0_ZBJY800 .. NF_L0_ZBJY5 .. NF_L0_ZBJY6);
		FirstWin_Text1:Visible(true);		
		FirstWin_Text2:SetText(NF_L0_ZBJY36);
		FirstWin_Text2:Visible(true);
		FirstWin_Text2:SetPosition(25,100);
		FirstWin_Text3:SetText(NF_L0_ZBJY37);
		FirstWin_Text3:Visible(true);
		FirstWin_Text3:SetPosition(25,170);
		FirstWin_ItemBtn1:Visible(true);
		FirstWin_ItemBtn1:SetPosition(60,120);
		FirstWin_ItemBtn2:Visible(true);
		FirstWin_ItemBtn2:SetPosition(60,190);
	   elseif SubID / 100 == 9 then
	      FirstWin_Text1:SetText(NF_L0_ZBJY900);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,100);
	   elseif SubID / 100 == 10 then
	      FirstWin_Text1:SetText(NF_L0_ZBJY1000);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,100);
	   elseif SubID / 100 == 11 then
	      FirstWin_Text1:SetText(NF_L0_ZBJY1100);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,100);
	   elseif SubID / 100 == 12 then
	      FirstWin_Text1:SetText(NF_L0_ZBJY1200);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,100);
	   elseif SubID / 100 == 13 then
	      FirstWin_ButtonA1:Visible(false);
	      FirstWin_ButtonA2:Visible(false);
	      FirstWin_ButtonA3:Visible(true);
              FirstWin_ButtonA3:SetText(NF_L0_ZBJY301);
	      FirstWin_ButtonA3:SetPosition(400,250);
		FirstWin_Text1:SetText(NF_L0_ZBJY1300 .. NF_L0_ZBJY7 .. "\n" ..  NF_L0_ZBJY506);
		FirstWin_Text1:Visible(true);		
		FirstWin_Text2:SetText(NF_L0_ZBJY606);
		FirstWin_Text2:Visible(true);
		FirstWin_Text2:SetPosition(25,150);
		FirstWin_Text3:SetText(NF_L0_ZBJY8 .. NF_L0_ZBJY9);
		FirstWin_Text3:Visible(true);
		FirstWin_Text3:SetPosition(45,210);
		FirstWin_ItemBtn1:Visible(true);
		FirstWin_ItemBtn1:SetPosition(60,110);
		FirstWin_ItemBtn2:Visible(true);
		FirstWin_ItemBtn2:SetPosition(60,170);
	   elseif SubID / 100 == 14 then
	      FirstWin_Text1:SetText(NF_L0_ZBJY1400);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,100);
	   elseif SubID / 100 == 15 then
	      FirstWin_Text1:SetText(NF_L0_ZBJY1500);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,100);
	   elseif SubID / 100 == 16 then
	      FirstWin_Text1:SetText(NF_L0_ZBJY1600);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,100);
	   elseif SubID / 100 == 17 then
	      FirstWin_Text1:SetText(NF_L0_ZBJY1700);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,100);
	   elseif SubID / 100 == 18 then
	      FirstWin_Text1:SetText(NF_L0_ZBJY1800);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,100);
	   elseif SubID / 100 == 19 then
	      FirstWin_Text1:SetText(NF_L0_ZBJY1900);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,100);  
	   elseif SubID / 100 == 20 then
	      FirstWin_Text1:SetText(NF_L0_ZBJY2000);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text1:SetPosition(25,100);    
	   end;
	   FirstWin_Button1:SetTextFormat(5);
	   FirstWin_Button2:SetTextFormat(5);

	   NPCFUN:EndMessage(true);
	elseif math.mod(SubID ,100) == 1 then
	   if ( SubID - 1 ) / 100 == 1 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_ZBJY101);
	      Button:Visible(true);
	      Button:SetPosition(25,135);
	   elseif ( SubID - 1 ) / 100 == 2 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_ZBJY201);
	      Button:Visible(true);
	      Button:SetPosition(25,160);
	   elseif ( SubID - 1 ) / 100 == 3 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_ZBJY301);
	      Button:Visible(true);
	      Button:SetPosition(25,185);
	   end;
	elseif math.mod(SubID ,100) == 2 then
	   if ( SubID - 2 ) / 100 == 1 then
	      FirstWin_Text2:SetText(NF_L0_ZBJY102);
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(25,150);
	   elseif ( SubID - 2 ) / 100 == 2 then
	      FirstWin_Text2:SetText(NF_L0_ZBJY202);
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(25,150);
	   elseif ( SubID - 2 ) / 100 == 3 then
	      FirstWin_Text2:SetText(NF_L0_ZBJY302);
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(25,150);                      
	   end;
	end;
end
