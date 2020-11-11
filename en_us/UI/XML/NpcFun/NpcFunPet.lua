local win = UIAPI:GetElement("FirstWin");
local textl={}
--宠物
function NpcFunPet_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunPet_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
	   FirstWin_Text1:SetText(NF_LO_PET0);
	   FirstWin_Text1:Visible(true);
	   if SubID == 1 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_LO_PET1);
	      Button:Visible(true);
	      Button:SetPosition(25,100);
	   elseif SubID == 2 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_LO_PET2);
	      Button:Visible(true);
	      Button:SetPosition(25,120);
	   elseif SubID == 3 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_LO_PET3);
	      Button:Visible(true);
	      Button:SetPosition(25,140);
	   elseif SubID == 4 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_LO_PET4);
	      Button:Visible(true);
	      Button:SetPosition(25,160);
	   elseif SubID == 5 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_LO_PET5);
	      Button:Visible(true);
	      Button:SetPosition(25,180);
	   elseif SubID == 6 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_LO_PET6);                      
	      Button:Visible(true);
	      Button:SetPosition(320,100);
          elseif SubID == 7 then
              print(BtnID,SubID);
              local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_LO_PET7);
              Button:Visible(true);
              Button:SetPosition(320,120);
          elseif SubID == 8 then
              local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_P113);
              Button:Visible(true);
              Button:SetPosition(320,140);
          elseif SubID == 9 then
              local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_LO_PET9);
              Button:Visible(true);
              Button:SetPosition(320,160);
          elseif SubID == 10 then
              local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_LO_PET10);
              Button:Visible(true);
              Button:SetPosition(320,180);
          elseif SubID == 11 then
              local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_LO_PET011);
              Button:Visible(true);
              Button:SetPosition(25,200);
	   end;
	elseif Index == 2 then
	   if SubID == 11 then
	      FirstWin_Text1:SetText(NF_LO_PET11);
	      FirstWin_Text1:Visible(true);
              FirstWin_Text2:SetText(NF_LO_PET1101);
              FirstWin_Text2:Visible(true);
	      FirstWin_Text2:SetPosition(25,110);
	   elseif SubID == 101 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_LO_PET101);
	      Button:Visible(true);
	      Button:SetPosition(25,135);
	   elseif SubID == 113 then
	      FirstWin_Text1:SetText(NF_L0_P114);
	      FirstWin_Text1:Visible(true); 
              FirstWin_ItemBtn1:Visible(true);
              FirstWin_ItemBtn1:SetPosition(25,200);
	   elseif SubID == 114 then
              local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_P118);
              Button:Visible(true);
              Button:SetPosition(320,105);
	   elseif SubID == 115 then
              local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_P119);
              Button:Visible(true);
              Button:SetPosition(320,125);
	   elseif SubID == 116 then
              local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_P120);
              Button:Visible(true);
              Button:SetPosition(320,145);
	   elseif SubID == 117 then
              local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_P121);
              Button:Visible(true);
              Button:SetPosition(320,165);
	   elseif SubID == 118 then
              local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_P122);
              Button:Visible(true);
              Button:SetPosition(320,185);
	   elseif SubID == 119 then
              local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_L0_P123);
              Button:Visible(true);
              Button:SetPosition(320,205);
	   elseif SubID == 102 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_LO_PET102);
	      Button:Visible(true);
	      Button:SetPosition(25,245);
	   elseif SubID == 12 then
	      FirstWin_Text1:SetText(NF_LO_PET12);
	      FirstWin_Text1:Visible(true);
	   elseif SubID == 13 then
	      FirstWin_Text1:SetText(NF_LO_PET13);
	      FirstWin_Text1:Visible(true);
              FirstWin_Text2:SetText(NF_LO_PET1301);
              FirstWin_Text2:Visible(true);
              FirstWin_Text2:SetPosition(25,160);
	   elseif SubID == 103 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_LO_PET103);
	      Button:Visible(true);
	      Button:SetPosition(25,200);
	   elseif SubID == 14 then
	      FirstWin_Text1:SetText(NF_LO_PET14);
	      FirstWin_Text1:Visible(true);
	   elseif SubID == 104 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_LO_PET104);
	      Button:Visible(true);
	      Button:SetPosition(25,135);
	   elseif SubID == 15 then
              FirstWin_Text1:SetText(NF_LO_PET15);
              FirstWin_Text1:Visible(true);
              FirstWin_Text2:SetText(NF_LO_PET1501);
              FirstWin_Text2:Visible(true);
              FirstWin_Text2:SetPosition(25,120);
	   elseif SubID == 105 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_LO_PET105);
	      Button:Visible(true);
	      Button:SetPosition(25,170);
           elseif SubID == 16 then
              FirstWin_Text1:SetText(NF_LO_PET16);
              FirstWin_Text1:Visible(true);
	   elseif SubID == 106 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_LO_PET106);
	      Button:Visible(true);
	      Button:SetPosition(25,105);
	   elseif SubID == 107 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_LO_PET107);
	      Button:Visible(true);
	      Button:SetPosition(25,125);
	   elseif SubID == 108 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_LO_PET108);
	      Button:Visible(true);
	      Button:SetPosition(25,145);
	   elseif SubID == 109 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_LO_PET109);
	      Button:Visible(true);
	      Button:SetPosition(25,165);
	   elseif SubID == 110 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_LO_PET110);
	      Button:Visible(true);
	      Button:SetPosition(25,185);
	   elseif SubID == 111 then
	      print(BtnID,SubID);
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_LO_PET111);
	      Button:Visible(true);
	      Button:SetPosition(25,205);
	   elseif SubID == 1011 then
	      FirstWin_Text1:SetText(NF_LO_PET1011);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 1061 then
	      FirstWin_Text1:SetText(NF_LO_PET1061);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 1062 then
	      FirstWin_Text1:SetText(NF_LO_PET1062);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 1075 then
	      FirstWin_Text1:SetText(NF_LO_PET1075);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
           elseif SubID == 17 then
              FirstWin_Text1:SetText(NF_LO_PET17);
              FirstWin_Text1:Visible(true);
              FirstWin_Text2:SetText(NF_LO_PET1701);
              FirstWin_Text2:Visible(true);
              FirstWin_Text2:SetPosition(25,105);
           elseif SubID == 112 then
              print(BtnID,SubID);
              local Button = win:GetChild("FirstWin_Button" .. BtnID);
              Button:SetText(NF_LO_PET112);
              Button:Visible(true);
              Button:SetPosition(25,135);
	   elseif SubID == 10000 then
	      FirstWin_Text1:SetText(NF_LO_PET10000);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 10001 then
	      FirstWin_Text1:SetText(NF_LO_PET10001);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 10002 then
	      FirstWin_Text1:SetText(NF_LO_PET10002);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 10003 then
	      FirstWin_Text1:SetText(NF_LO_PET10003);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 139 then
	      FirstWin_Text1:SetText(NF_L0_P111);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 160 then
	      FirstWin_Text1:SetText(NF_L0_P0111);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 161 then
	      FirstWin_Text1:SetText(NF_L0_P0112);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID,100) == 21 then
              textl={[0]=NF_L0_P0010,[1]=NF_L0_P0011}
	      FirstWin_Text1:SetText(NF_L0_P0001..math.floor(SubID/1000) .. NF_L0_P0002..textl[math.floor(math.mod (SubID/100,10))]..NF_L0_P0003 );
	      FirstWin_Text1:Visible(true);
	   end;
       elseif Index == 3 then
	   if SubID == 1011 then
	      FirstWin_Text1:SetText(NF_LO_PET1011);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 137 then
	      FirstWin_Text1:SetText(NF_L0_P117);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 138 then
	      FirstWin_Text1:SetText(NF_L0_P116);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 139 then
	      FirstWin_Text1:SetText(NF_L0_P111);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 160 then
	      FirstWin_Text1:SetText(NF_L0_P0111);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 140 then
	      FirstWin_Text1:SetText(NF_L0_P140);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID == 150 then
	      FirstWin_Text1:SetText(NF_L0_P150);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	   elseif SubID == 130 then
	      FirstWin_Text1:SetText(NF_L0_P115);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID >= 300 and SubID <= 304 then
	      FirstWin_Text1:SetText(LuaText["NF_L0_PET" .. SubID]);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 1022 then
	      FirstWin_Text1:SetText(NF_LO_PET1022);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 1041 then
	      FirstWin_Text1:SetText(NF_LO_PET1041);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 1051 then
	      FirstWin_Text1:SetText(NF_LO_PET1051);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 1052 then
	      FirstWin_Text1:SetText(NF_LO_PET1052);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 1053 then
	      FirstWin_Text1:SetText(NF_LO_PET1053);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 1061 then
	      FirstWin_Text1:SetText(NF_LO_PET1061);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 1062 then
	      FirstWin_Text1:SetText(NF_LO_PET1062);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif SubID == 1063 then
	      FirstWin_Text1:SetText(NF_LO_PET1063);
	      FirstWin_Text1:Visible(true);
	      NPCFUN:EndMessage(true);
	      NPCFUN:NeedMessage(False);
	   elseif math.mod(SubID ,1000) == 1 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_PET1064..((SubID-1)/1000));
	      Button:SetPosition(25,30);
	      Button:Visible(true)
	      NPCFUN:EndMessage(true);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif math.mod(SubID ,1000) == 2 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_PET1065..string.format("%.2f",((SubID-2)/100000)-((SubID-2)/100000)%0.01));
	      Button:SetPosition(25,70);
	      Button:Visible(true)
	      NPCFUN:EndMessage(true);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif math.mod(SubID ,1000) == 3 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_PET1066..string.format("%.2f",((SubID-3)/100000)-((SubID-3)/100000)%0.01));
	      Button:SetPosition(25,90);
	      Button:Visible(true)
	      NPCFUN:EndMessage(true);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif math.mod(SubID ,1000) == 4 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_PET1067..string.format("%.2f",((SubID-4)/100000)-((SubID-4)/100000)%0.01));
	      Button:SetPosition(25,110);
	      Button:Visible(true)
	      NPCFUN:EndMessage(true);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif math.mod(SubID ,1000) == 5 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_PET1068..string.format("%.2f",((SubID-5)/100000)-((SubID-5)/100000)%0.01));
	      Button:SetPosition(25,130);
	      Button:Visible(true)
	      NPCFUN:EndMessage(true);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif math.mod(SubID ,1000) == 6 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_PET1069..string.format("%.2f",((SubID-6)/100000)-((SubID-6)/100000)%0.01));
	      Button:SetPosition(25,150);
	      Button:Visible(true)
	      NPCFUN:EndMessage(true);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif math.mod(SubID ,1000) == 7 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_PET1070..string.format("%.2f",((SubID-7)/100000)-((SubID-7)/100000)%0.01));
	      Button:SetPosition(25,170);
	      Button:Visible(true)
	      NPCFUN:EndMessage(true);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
	   elseif SubID == 1071 then
	      local Button = win:GetChild("FirstWin_Button" .. BtnID);
	      Button:SetText(NF_L0_PET1071);
	      Button:SetPosition(25,190);
	      Button:Visible(true)
	      NPCFUN:EndMessage(true);
	      Button:Enable(false);
	      UIAPI:SetChecked(false,Button);
          elseif SubID == 1072 then
              FirstWin_Text1:SetText(NF_L0_PET1072);
              FirstWin_Text1:Visible(true);
              NPCFUN:EndMessage(true);
              NPCFUN:NeedMessage(False);
          elseif SubID == 1073 then
              FirstWin_Text1:SetText(NF_L0_PET1073);
              FirstWin_Text1:Visible(true);
              NPCFUN:EndMessage(true);
              NPCFUN:NeedMessage(False);
          elseif SubID == 1075 then
              FirstWin_Text1:SetText(NF_L0_PET1075);
              FirstWin_Text1:Visible(true);
              NPCFUN:EndMessage(true);
              NPCFUN:NeedMessage(False);
          elseif SubID == 210 then
              FirstWin_Text1:SetText(NF_L0_PET210);
              FirstWin_Text1:Visible(true);
              NPCFUN:EndMessage(true);
              NPCFUN:NeedMessage(False);
          elseif SubID == 220 then
              FirstWin_Text1:SetText(NF_L0_PET220);
              FirstWin_Text1:Visible(true);
              NPCFUN:EndMessage(true);
              NPCFUN:NeedMessage(False);
          elseif SubID == 230 then
              FirstWin_Text1:SetText(NF_L0_PET230);
              FirstWin_Text1:Visible(true);
              NPCFUN:EndMessage(true);
              NPCFUN:NeedMessage(False);
	   end;
	end;
end

function NpcFunPet_SetMsg(Type,Index,PreSubID,SubID)
	if SubID== 11 then
	      FirstWin_Text1:SetText(NF_L0_P0005);
	      FirstWin_Text1:Visible(true); 
	      NPCFUN:HaveMessageBox(true);
	end;
	if Index == 1 then
	   if SubID== 6000 then
	   end; 
	end;    
	if Index == 2 then
	   if SubID== 101 then
	      PetAPI:pet_indenture(); ---灵魂契约UI                   
	   elseif SubID== 102 then
		  PetAPI:pet_samsara();-----宠物转生UI    
	   elseif SubID== 103 then
		  PetAPI:pet_inosculate();---宠物融合UI
	   elseif SubID== 106 then
		  PetAPI:pet_takePet_skillCount();
	   elseif SubID== 107 then
		  PetAPI:pet_takePet_skillCount();
	   end;
	end;
end

