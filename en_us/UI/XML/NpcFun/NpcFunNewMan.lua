local win = UIAPI:GetElement("FirstWin");
--新手指引
function NpcFunNewMan_SetUI(Type,Index)
	FirstWin_ButtonA1:SetPosition(145,500);
	FirstWin_ButtonA2:SetPosition(220,500);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunNewMan_SetText(Type,Index,BtnID,SubID)
		if Index == 1 then
                   if SubID == 5000 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ5000);
                      Button:Visible(true);
                      Button:SetPosition(45,220);
                   elseif SubID == 5001 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ5001);
                      Button:Visible(true);
                      Button:SetPosition(45,245);
                   elseif SubID == 5002 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ5002);
                      Button:Visible(true);
                      Button:SetPosition(45,245);
                   elseif SubID == 5003 then
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_FJ5003);
                      Button:Visible(true);
                      Button:SetPosition(45,245);
                   elseif SubID == 11 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_111);
                      Button:Visible(true);
                      Button:SetPosition(45,270);
                   elseif SubID == 3 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_5041);
                      Button:Visible(true);
                      Button:SetPosition(45,270);
                   elseif SubID == 5024 then
                      FirstWin_Text1:SetText(NF_L0_BD5024);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5029 then
                      FirstWin_Text1:SetText(NF_L0_BD5029);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5030 then
                      FirstWin_Text1:SetText(NF_L0_BD5030);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5031 then
                      FirstWin_Text1:SetText(NF_L0_BD5031);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5051 then
                      FirstWin_Text1:SetText(NF_L0_BD5051);
                      FirstWin_Text1:Visible(true);
                   end;
                elseif Index == 2 then
                   if SubID == 5005 then
                      FirstWin_Text1:SetText(NF_L0_BD5005);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5006 then
                      FirstWin_Text1:SetText(NF_L0_BD5006);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5007 then
                      FirstWin_Text1:SetText(NF_L0_BD5007);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5008 then
                      FirstWin_Text1:SetText(NF_L0_BD5008);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5013 then
                      FirstWin_Text1:SetText(NF_L0_BD5013);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 1004 then
                      FirstWin_Text1:SetText(NF_L0_T1004);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_ButtonA1:SetPosition(220,500);
                      FirstWin_ButtonA2:SetPosition(220,500);
                      FirstWin_ButtonA1:Visible(true);
                      FirstWin_ButtonA2:Visible(false);
                      NPCFUN:EndMessage(true);
                   elseif SubID == 5015 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_BD5015);
                      Button:Visible(true);
                      Button:SetPosition(45,220);
                   elseif SubID == 5016 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_BD5016);
                      Button:Visible(true);
                      Button:SetPosition(45,245);
                   elseif SubID == 5017 then
                      print(BtnID,SubID);
                      local Button = win:GetChild("FirstWin_Button" .. BtnID);
                      Button:SetText(NF_L0_BD5017);
                      Button:Visible(true);
                      Button:SetPosition(45,270);
                   elseif SubID == 5020 then
                      FirstWin_Text1:SetText(NF_L0_BD5020);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5021 then
                      FirstWin_Text1:SetText(NF_L0_BD5021);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5022 then
                      FirstWin_Text1:SetText(NF_L0_BD5022);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5023 then
                      FirstWin_Text1:SetText(NF_L0_BD5023);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5025 then
                      FirstWin_Text1:SetText(NF_L0_BD5025);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5026 then
                      FirstWin_Text1:SetText(NF_L0_BD5026);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5027 then
                      FirstWin_Text1:SetText(NF_L0_BD5027);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   elseif SubID == 5028 then
                      FirstWin_Text1:SetText(NF_L0_BD5028);
                      FirstWin_Text1:Visible(true);
                      NPCFUN:EndMessage(true);
                      NPCFUN:NeedMessage(False);
                   end;
                end;
end


function NpcFunNewMan_SetMsg(Type,Index,PreSubID,SubID)
                if Index == 1 then
                   if SubID == 5000 then
                      FirstWin_Text1:SetText(NF_L0_T42);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID == 3 then
                      FirstWin_Text1:SetText(NF_L0_T5050);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID == 11 then
                      FirstWin_Text1:SetText(NF_L0_T5050);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID== 5001 then
                      FirstWin_Text1:SetText(NF_L0_FJ5040);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_ItemBtn1:Visible(true);
                      FirstWin_ItemBtn1:SetPosition(60,300);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID== 5002 then
                      FirstWin_Text1:SetText(NF_L0_FJ5041);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_ItemBtn1:Visible(true);
                      FirstWin_ItemBtn1:SetPosition(60,300);
                      NPCFUN:HaveMessageBox(true);
                   elseif SubID== 5003 then
                      FirstWin_Text1:SetText(NF_L0_FJ5042);
                      FirstWin_Text1:Visible(true);
                      FirstWin_Text1:SetPosition(45,100);
                      FirstWin_ItemBtn1:Visible(true);
                      FirstWin_ItemBtn1:SetPosition(60,300);
                      NPCFUN:HaveMessageBox(true);
                   end;
                end;
end