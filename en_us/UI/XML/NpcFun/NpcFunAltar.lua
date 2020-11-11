local win = UIAPI:GetElement("FirstWin");
--祭坛
function NpcFunAltar_SetUI(Type,Index)
	if Index == 1 then
		FirstWin_Text1:SetPosition(45,100);
		FirstWin_Text2:SetPosition(45,120);
		FirstWin_Text3:SetPosition(45,140);
		FirstWin_Button1:SetPosition(45,160);
		FirstWin_Button2:SetPosition(45,185);
		FirstWin_Button3:SetPosition(45,210);
		FirstWin_Button4:SetPosition(45,235);
		FirstWin_Button5:SetPosition(45,260);
		FirstWin_Button6:SetPosition(45,285);
		FirstWin_Button7:SetPosition(45,310);
		FirstWin_Button8:SetPosition(45,335);
		FirstWin_Button9:SetPosition(45,360);
		FirstWin_Button10:SetPosition(45,385);
		FirstWin_Button11:SetPosition(45,410);
		FirstWin_Button12:SetPosition(45,435);
			   
		win:Visible(true);
	end;
	if Index == 2 then
		FirstWin_Text1:SetPosition(45,100);
		FirstWin_Text2:SetPosition(45,140);
		FirstWin_Text3:SetPosition(45,160);
		FirstWin_Button1:SetPosition(40,160);
		FirstWin_Button2:SetPosition(40,185);
		FirstWin_Button3:SetPosition(40,210);
		FirstWin_Button4:SetPosition(40,235);
		FirstWin_Button5:SetPosition(40,260);
		FirstWin_Button6:SetPosition(40,285);
		FirstWin_Button7:SetPosition(40,310);
		FirstWin_Button8:SetPosition(40,335);
		FirstWin_Button9:SetPosition(40,360);
		FirstWin_Button10:SetPosition(40,385);
		FirstWin_Button11:SetPosition(45,410);
		FirstWin_Button12:SetPosition(45,435);
		
		win:Visible(true);
	end;
	if Index == 3 then
		FirstWin_Text1:SetPosition(45,100);
		FirstWin_Text2:SetPosition(45,170);
		FirstWin_Text3:SetPosition(45,190);
		FirstWin_Button1:SetPosition(25,210);
		FirstWin_Button2:SetPosition(25,235);
		FirstWin_Button3:SetPosition(25,260);
		FirstWin_Button4:SetPosition(25,285);
		FirstWin_Button5:SetPosition(25,310);
		FirstWin_Button6:SetPosition(25,335);
		FirstWin_Button7:SetPosition(25,360);
		FirstWin_Button8:SetPosition(25,385);
		FirstWin_Button9:SetPosition(25,410);
		FirstWin_Button10:SetPosition(25,435);
		FirstWin_Button11:SetPosition(45,410);
		FirstWin_Button12:SetPosition(45,435);

		win:Visible(true);
	end;
	if Index == 4 then
		FirstWin_Text1:SetPosition(45,100);
		FirstWin_Text2:SetPosition(45,120);
		FirstWin_Text3:SetPosition(45,140);
		FirstWin_Button1:SetPosition(45,160);
		FirstWin_Button2:SetPosition(45,185);
		FirstWin_Button3:SetPosition(45,210);
		FirstWin_Button4:SetPosition(45,235);
		FirstWin_Button5:SetPosition(45,260);
		FirstWin_Button6:SetPosition(45,285);
		FirstWin_Button7:SetPosition(45,310);
		FirstWin_Button8:SetPosition(45,335);
		FirstWin_Button9:SetPosition(45,360);
		FirstWin_Button10:SetPosition(45,385);
		FirstWin_Button11:SetPosition(45,410);
		FirstWin_Button12:SetPosition(45,435);

		win:Visible(true);
	end;
	if Index == 5 then
		FirstWin_Text1:SetPosition(45,100);
		FirstWin_Text2:SetPosition(45,120);
		FirstWin_Text3:SetPosition(45,140);
		FirstWin_Button1:SetPosition(45,160);
		FirstWin_Button2:SetPosition(45,185);
		FirstWin_Button3:SetPosition(45,210);
		FirstWin_Button4:SetPosition(45,235);
		FirstWin_Button5:SetPosition(45,260);
		FirstWin_Button6:SetPosition(45,285);
		FirstWin_Button7:SetPosition(45,310);
		FirstWin_Button8:SetPosition(45,335);
		FirstWin_Button9:SetPosition(45,360);
		FirstWin_Button10:SetPosition(45,385);
		FirstWin_Button11:SetPosition(45,410);
		FirstWin_Button12:SetPosition(45,435);		
		
		win:Visible(true);
	end;

end

function NpcFunAltar_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   if SubID <= 1000 then
	      FirstWin_Text1:SetText(NF_L0_GH1);
	      FirstWin_Text1:Visible(true);
	      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_GH102.."|cffFFFFFF");
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(25,80);
	   end;
	   if SubID == 1 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH2);
	      Button:Visible(true);
	      Button:SetPosition(25,135);
	   elseif SubID == 2 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH3);
	      Button:Visible(true);
	      Button:SetPosition(25,155);
	   elseif SubID == 4 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH5);
	      Button:Visible(true);
	      Button:SetPosition(25,175);
	   end;
	end;
	if Index == 2 then
	   if SubID <= 1000 then
	      FirstWin_Text1:SetText(NF_L0_GH7);
	      FirstWin_Text1:Visible(true);
	   end;
	   if SubID == 1 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH8);
	      Button:Visible(true);
		  Button:SetPosition(25,95);
	   elseif SubID == 2 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH9);
	      Button:Visible(true);
		  
	   elseif SubID == 3 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH10);
	      Button:Visible(true);
		  
	   elseif SubID == 4 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH11);
	      Button:Visible(true);
		  Button:SetPosition(25,115);
	   elseif SubID == 5 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH12);
	      Button:Visible(true);
		  Button:SetPosition(25,135);
	   elseif SubID == 6 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH13);
	      Button:Visible(true);
		  Button:SetPosition(25,155);
	   elseif SubID == 10 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH14);
	      Button:Visible(true);
		  Button:SetPosition(25,95);
	   elseif SubID == 11 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH15);
	      Button:Visible(true);
		  Button:SetPosition(25,115);
	   elseif SubID == 12 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH16);
	      Button:Visible(true);
		  Button:SetPosition(25,135);
	   elseif SubID == 13 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH17);
	      Button:Visible(true);
		  Button:SetPosition(25,155);
	   elseif SubID == 14 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH18);
	      Button:Visible(true);
		  Button:SetPosition(25,175);
	   elseif SubID == 15 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH19);
	      Button:Visible(true);
		  Button:SetPosition(25,195);
	   elseif SubID == 16 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH20);
	      Button:Visible(true);
		  Button:SetPosition(320,95);
	   elseif SubID == 17 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH21);
	      Button:Visible(true);
		  Button:SetPosition(320,115);
	   elseif SubID == 18 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH22);
	      Button:Visible(true);
		  Button:SetPosition(320,135);
	   elseif SubID == 19 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH23);
	      Button:Visible(true);
		  Button:SetPosition(320,155);
	   elseif SubID == 20 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH24);
	      Button:Visible(true);
	   elseif SubID == 21 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH25);
	      Button:Visible(true);
	   elseif SubID == 22 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH26);
	      Button:Visible(true);
	   elseif SubID == 23 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH27);
	      Button:Visible(true);
	   elseif SubID == 24 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH28);
	      Button:Visible(true);
	   elseif SubID == 25 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH29);
	      Button:Visible(true);
	   elseif SubID == 26 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH30);
	      Button:Visible(true);
	   elseif SubID == 27 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH31);
	      Button:Visible(true);
	   elseif SubID == 28 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH32);
	      Button:Visible(true);
	   elseif SubID == 29 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH33);
	      Button:Visible(true);
	   elseif SubID == 30 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH34);
	      Button:Visible(true);
	   end;
	end;
	if Index == 3 then
	   if SubID == 100 then
	      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_GH35.."|cffFFFFFF");
	      FirstWin_Text2:Visible(true);
		  FirstWin_Text2:SetPosition(25,30);
	   elseif SubID == 101 then
	      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_GH36.."|cffFFFFFF");
	      FirstWin_Text2:Visible(true);
		  FirstWin_Text2:SetPosition(25,30);
	   elseif SubID >= 400 and SubID <= 420 then
	      a = SubID - 400
	      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_GH75..a.."|cffFFFFFF");
	      FirstWin_Text2:Visible(true);
		  FirstWin_Text2:SetPosition(25,110);
	   elseif SubID == 102 then
	      FirstWin_Text3:SetText("|cffFF0000"..NF_L0_GH76.."|cffFFFFFF");
	      FirstWin_Text3:Visible(true);
		  FirstWin_Text3:SetPosition(25,50);
	   elseif SubID == 103 then
	      FirstWin_Text3:SetText("|cffFF0000"..NF_L0_GH77.."|cffFFFFFF");
	      FirstWin_Text3:Visible(true);
		  FirstWin_Text3:SetPosition(25,50);
	   elseif SubID == 104 then
	      FirstWin_Text3:SetText("|cffFF0000"..NF_L0_GH78.."|cffFFFFFF");
	      FirstWin_Text3:Visible(true);
		  FirstWin_Text3:SetPosition(25,50);
	   elseif SubID == 105 then
	      FirstWin_Text3:SetText("|cffFF0000"..NF_L0_GH79.."|cffFFFFFF");
	      FirstWin_Text3:Visible(true);
		  FirstWin_Text3:SetPosition(25,50);
	   elseif SubID == 106 then
	      FirstWin_Text3:SetText("|cffFF0000"..NF_L0_GH80.."|cffFFFFFF");
	      FirstWin_Text3:Visible(true);
		  FirstWin_Text3:SetPosition(25,50);
	   elseif SubID == 107 then
	      FirstWin_Text3:SetText("|cffFF0000"..NF_L0_GH81.."|cffFFFFFF");
	      FirstWin_Text3:Visible(true);
		  FirstWin_Text3:SetPosition(25,50);
	   elseif SubID == 108 then
	      FirstWin_Text3:SetText("|cffFF0000"..NF_L0_GH82.."|cffFFFFFF");
	      FirstWin_Text3:Visible(true);
		  FirstWin_Text3:SetPosition(25,50);
	   elseif SubID == 109 then
	      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_GH83.."|cffFFFFFF");
	      FirstWin_Text2:Visible(true);
		  FirstWin_Text2:SetPosition(25,50);
	   elseif SubID == 110 then
	      FirstWin_Text2:SetText("|cff00FF00"..NF_L0_GH103.."|cffFFFFFF");
	      FirstWin_Text2:Visible(true);
		  FirstWin_Text2:SetPosition(25,50);
	   elseif SubID == 201 then
	      FirstWin_Text1:SetText(NF_L0_GH37);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 202 then
	      FirstWin_Text1:SetText(NF_L0_GH38);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 203 then
	      FirstWin_Text1:SetText(NF_L0_GH39);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 204 then
	      FirstWin_Text1:SetText(NF_L0_GH40);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 205 then
	      FirstWin_Text1:SetText(NF_L0_GH41);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 206 then
	      FirstWin_Text1:SetText(NF_L0_GH42);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 210 then
	      FirstWin_Text1:SetText(NF_L0_GH43);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 211 then
	      FirstWin_Text1:SetText(NF_L0_GH44);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 212 then
	      FirstWin_Text1:SetText(NF_L0_GH45);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 213 then
	      FirstWin_Text1:SetText(NF_L0_GH46);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 214 then
	      FirstWin_Text1:SetText(NF_L0_GH47);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 215 then
	      FirstWin_Text1:SetText(NF_L0_GH48);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 216 then
	      FirstWin_Text1:SetText(NF_L0_GH49);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 217 then
	      FirstWin_Text1:SetText(NF_L0_GH50);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 218 then
	      FirstWin_Text1:SetText(NF_L0_GH51);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 219 then
	      FirstWin_Text1:SetText(NF_L0_GH52);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 220 then
	      FirstWin_Text1:SetText(NF_L0_GH53);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 221 then
	      FirstWin_Text1:SetText(NF_L0_GH54);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 222 then
	      FirstWin_Text1:SetText(NF_L0_GH55);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 223 then
	      FirstWin_Text1:SetText(NF_L0_GH56);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 224 then
	      FirstWin_Text1:SetText(NF_L0_GH57);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 225 then
	      FirstWin_Text1:SetText(NF_L0_GH58);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 226 then
	      FirstWin_Text1:SetText(NF_L0_GH59);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 227 then
	      FirstWin_Text1:SetText(NF_L0_GH60);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 228 then
	      FirstWin_Text1:SetText(NF_L0_GH61);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 229 then
	      FirstWin_Text1:SetText(NF_L0_GH62);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 230 then
	      FirstWin_Text1:SetText(NF_L0_GH63);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,70);
	   elseif SubID == 1 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH64);
	      Button:Visible(true);
		  Button:SetPosition(25,175);
	   elseif SubID == 2 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH65);
	      Button:Visible(true);
		  Button:SetPosition(25,175);
	   elseif SubID == 3 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH66);
	      Button:Visible(true);
	   elseif SubID == 4 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH84);
	      Button:Visible(true);
		  Button:SetPosition(25,135);
	   elseif SubID == 5 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH85);
	      Button:Visible(true);
		  Button:SetPosition(25,155);
	   elseif SubID == 6 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH83);
	      Button:Visible(true);                   
	   elseif SubID == 10 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH67);
	      Button:Visible(true);
		  Button:SetPosition(25,135);
	   end;
	end;
	if Index == 4 then
	   if SubID == 310 then
	      FirstWin_Text1:SetText(NF_L0_GH68);
	      FirstWin_Text1:Visible(true);
		  FirstWin_Text1:SetPosition(25,30);
	      FirstWin_Text2:SetText("|cffFF0000"..NF_L0_GH86.."|cffFFFFFF");
	      FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(25,80);
	      FirstWin_Text3:SetText("|cff00FF00"..NF_L0_GH87.."|cffFFFFFF");
	      FirstWin_Text3:Visible(true);
	      FirstWin_Text3:SetPosition(25,120);
	   elseif SubID == 304 then
	      FirstWin_Text1:SetText(NF_L0_GH88);
	      FirstWin_Text1:Visible(true);
	   elseif SubID == 305 then
	      FirstWin_Text1:SetText(NF_L0_GH89);
	      FirstWin_Text1:Visible(true);
	   elseif SubID == 306 then
	      FirstWin_Text1:SetText(NF_L0_GH103);
	      FirstWin_Text1:Visible(true);
	   end;
	   if SubID == 1 then
	      InputText1:Visible(true);
	      Input11:SetPosition(136,180);
	      Input12:SetPosition(128,180);
	      Input13:SetPosition(230,180);
	      InputText1:SetPosition(132,188);       
	      Input11:Visible(true); --设置为可见
	      Input12:Visible(true); 
	      Input13:Visible(true); 
	   elseif SubID == 2 then
	      InputText1:Visible(true);
	      Input11:SetPosition(136,180);
	      Input12:SetPosition(128,180);
	      Input13:SetPosition(230,180);
	      InputText1:SetPosition(132,188);
	      Input11:Visible(true); --设置为可见
	      Input12:Visible(true); 
	      Input13:Visible(true); 

	   elseif SubID == 3 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH71);
	      Button:Visible(true);
	      Button:SetPosition(40,135);
	   elseif SubID == 4 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH72);
	      Button:Visible(true);
	      Button:SetPosition(40,160);
	   elseif SubID == 5 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH73);
	      Button:Visible(true);
	      Button:SetPosition(40,185);
	   elseif SubID == 6 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH74);
	      Button:Visible(true);
	      Button:SetPosition(40,210);
	   elseif SubID == 7 then
	      InputText1:Visible(true);
	      Input11:SetPosition(36,80);
	      Input12:SetPosition(28,80);
	      Input13:SetPosition(130,80);
	      InputText1:SetPosition(32,88);
	      Input11:Visible(true); --设置为可见
	      Input12:Visible(true); 
	      Input13:Visible(true);
	   elseif SubID == 8 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH91);
	      Button:Visible(true);
	   elseif SubID == 9 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH92);
	      Button:Visible(true);
	   elseif SubID == 10 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH93);
	      Button:Visible(true);
	   elseif SubID == 11 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH94);
	      Button:Visible(true);
	   elseif SubID == 12 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH95);
	      Button:Visible(true);
	   elseif SubID == 13 then
	      InputText1:Visible(true);
	      Input11:SetPosition(36,80);
	      Input12:SetPosition(28,80);
	      Input13:SetPosition(130,80);
	      InputText1:SetPosition(32,88);
	      Input11:Visible(true); --设置为可见
	      Input12:Visible(true); 
	      Input13:Visible(true);	
	   elseif SubID == 14 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH97);
	      Button:Visible(true);
	   elseif SubID == 15 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH98);
	      Button:Visible(true);
	   elseif SubID == 16 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH99);
	      Button:Visible(true);
	   elseif SubID == 17 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH100);
	      Button:Visible(true);
	   elseif SubID == 18 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH101);
	      Button:Visible(true);
	   elseif SubID == 19 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH104);
	      Button:Visible(true);
	   elseif SubID == 20 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH105);
	      Button:Visible(true);
	   elseif SubID == 21 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH106);
	      Button:Visible(true);
	   elseif SubID == 22 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH107);
	      Button:Visible(true);
	   elseif SubID == 23 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH108);
	      Button:Visible(true);
	   elseif SubID == 24 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_GH109);
	      Button:Visible(true);
	   end;
	end;
	if SubID == 1000 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1000.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false);  
       
	elseif SubID == 1001 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1001.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false);        	

	elseif SubID == 1002 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1002.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false);	   

	elseif SubID == 1003 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1003.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false); 

	elseif SubID == 1004 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1004.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false);   

	elseif SubID == 1005 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1005.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false);   

	elseif SubID == 1006 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1006.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false);	   

	elseif SubID == 1007 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1007.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false);	   

	elseif SubID == 1008 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1008.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false);	   

	elseif SubID == 1009 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1009.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false);	   

	elseif SubID == 1010 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1010.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false);

	elseif SubID == 1011 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1011.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false);	   

	elseif SubID == 1012 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1012.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false);	   

	elseif SubID == 1013 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1013.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false);   

	elseif SubID == 1014 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1014.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false);
	   
	elseif SubID == 1015 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1015.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false);
	   
	elseif SubID == 1016 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1016.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false);
	   
	elseif SubID == 1017 then
	   FirstWin_Text1:SetText("|cffFF0000"..NF_L0_GH1017.."|cffFFFFFF");
	   FirstWin_Text1:Visible(true);
	   NPCFUN:EndMessage(true);
	   NPCFUN:NeedMessage(false);	
	   FirstWin_ButtonA1:SetPosition(480,250);
	   FirstWin_ButtonA1:Visible(true);
	   FirstWin_ButtonA2:Visible(false);
	      
	end;
end


function NpcFunAltar_SetMsg(Type,Index,PreSubID,SubID)
	if Index == 3 then
	  	  	
	   if SubID == 1 then
	      FirstWin_Text1:SetText(NF_L0_GH2000);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:HaveMessageBox(true);
	   elseif SubID== 2 then
	      FirstWin_Text1:SetText(NF_L0_GH2001);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:HaveMessageBox(true);
	   elseif SubID== 3 then
	      FirstWin_Text1:SetText(NF_L0_GH2002);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:HaveMessageBox(true);
	   end;
	elseif Index == 4 then

	   if SubID == 1 then
	      FirstWin_Text1:SetText(NF_L0_GH2003);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:HaveMessageBox(true);
	   elseif SubID== 2 then
	      FirstWin_Text1:SetText(NF_L0_GH2004);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:HaveMessageBox(true);
	   elseif SubID== 3 then
	      FirstWin_Text1:SetText(NF_L0_GH2005);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:HaveMessageBox(true);
	   elseif SubID== 4 then
	      FirstWin_Text1:SetText(NF_L0_GH2006);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:HaveMessageBox(true);
	   elseif SubID== 5 then
	      FirstWin_Text1:SetText(NF_L0_GH2007);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:HaveMessageBox(true);
	   elseif SubID== 6 then
	      FirstWin_Text1:SetText(NF_L0_GH2008);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:HaveMessageBox(true);
	   end;
	end;	
end
