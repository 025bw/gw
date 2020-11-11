local win = UIAPI:GetElement("FirstWin");
--生活技能
function NpcFunUionTime_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunUionTime_SetText(Type,Index,BtnID,SubID)
		if Index== 1 then    ----第几个页面------
			if math.mod(SubID ,100)==1  then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION1);
				Button:SetPosition(25,195)
				Button:Visible(true);
			elseif math.mod(SubID ,100)==2  then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION2);
				Button:Visible(true);
				Button:SetPosition(25,215)
			elseif SubID == 3  then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION3);
				Button:Visible(true);
				Button:SetPosition(25,135)
			elseif SubID == 4  then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION4);
				Button:SetPosition(25,155)
				Button:Visible(true);
			elseif SubID == 5  then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION5);
				Button:Visible(true);
				Button:SetPosition(25,175)
			elseif SubID ==6 then
	      			FirstWin_Text1:SetText(NF_L0_UNION6);
	      			FirstWin_Text1:Visible(true);
			elseif SubID ==10 then
	      			FirstWin_Text1:SetText(NF_L0_UNION10);
	      			FirstWin_Text1:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
			end;
		elseif Index == 2 then	--服务器提示消息---------------------
			if SubID == 11  then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION11);
				Button:SetPosition(25,95);
				Button:Visible(true);
			elseif SubID == 12 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION12);
				Button:SetPosition(25,115);
				Button:Visible(true);
			elseif SubID == 13 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION13);
				Button:SetPosition(25,135);
				Button:Visible(true);
			elseif SubID == 14 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION14);
				Button:SetPosition(25,155);
				Button:Visible(true);
		        elseif SubID == 15 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION15);
				Button:SetPosition(25,175);
				Button:Visible(true);
		        elseif SubID == 16 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION16);
				Button:SetPosition(25,195);
				Button:Visible(true);
		        elseif SubID == 17 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION17);
				Button:SetPosition(320,95);
				Button:Visible(true);
		        elseif SubID == 18 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION18);
				Button:SetPosition(320,115);
				Button:Visible(true);
		        elseif SubID == 19 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION19);
				Button:SetPosition(320,135);
				Button:Visible(true);
		        elseif SubID == 20 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION20);
				Button:SetPosition(320,155);
				Button:Visible(true);
			elseif SubID == 21 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION21);
				Button:SetPosition(25,95);
				Button:Visible(true);
			elseif SubID == 22 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION22);
				Button:SetPosition(25,115);
				Button:Visible(true);
			elseif SubID == 23 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION23);
				Button:SetPosition(25,135);
				Button:Visible(true);
			elseif SubID == 24 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION24);
				Button:SetPosition(25,155);
				Button:Visible(true);
			elseif SubID == 25 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION25);
				Button:SetPosition(25,175);
				Button:Visible(true);
			elseif SubID == 26 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION26);
				Button:SetPosition(25,195);
				Button:Visible(true);
			elseif SubID == 27 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION27);
				Button:SetPosition(320,95);
				Button:Visible(true);
			elseif SubID == 28 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION28);
				Button:SetPosition(320,115);
				Button:Visible(true);
			elseif SubID == 29 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION29);
				Button:SetPosition(320,135);
				Button:Visible(true);
			elseif SubID == 30 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION30);
				Button:SetPosition(320,155);
				Button:Visible(true);
			elseif math.mod(SubID ,500)==1 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION31..(SubID-1)/500);
				Button:Visible(true);
				Button:SetPosition(45,85);
			elseif math.mod(SubID ,500)==2 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION32..(SubID-2)/500);
				Button:Visible(true);
				Button:SetPosition(45,85);
			elseif math.mod(SubID ,500)==41 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION031..((SubID-41)/500));
				Button:Visible(true);
				Button:SetPosition(45,65);
			elseif SubID ==999 then
	      			FirstWin_Text1:SetText(NF_L0_UNION0030);
	      			FirstWin_Text1:Visible(true);
				Button:SetPosition(45,85);
			elseif SubID ==998 then
	      			FirstWin_Text1:SetText(NF_L0_UNION0030);
	      			FirstWin_Text1:Visible(true);
				Button:SetPosition(45,85);
			elseif math.mod(SubID ,500)==42 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION032..((SubID-42)/500));
				Button:Visible(true);
				Button:SetPosition(45,85);
			elseif math.mod(SubID ,500)==3 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION33..(SubID-3)/500);
				Button:SetPosition(45,85);
				Button:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
				Button:Enable(false);
				UIAPI:SetChecked(false,Button);
			elseif math.mod(SubID ,500)==4 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION34..(SubID-4)/500);
				Button:SetPosition(45,105);
				Button:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
				Button:Enable(false);
				UIAPI:SetChecked(false,Button);
			elseif math.mod(SubID ,500)==6 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION320..(SubID-6)/500);
				Button:SetPosition(45,105);
				Button:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
				Button:Enable(false);
				UIAPI:SetChecked(false,Button);
			elseif math.mod(SubID ,500)==7 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION330..(SubID-7)/500);
				Button:SetPosition(45,125);
				Button:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
				Button:Enable(false);
				UIAPI:SetChecked(false,Button);
			elseif math.mod(SubID ,500)==8 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION320..(SubID-8)/500);
				Button:SetPosition(45,105);
				Button:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
				Button:Enable(false);
				UIAPI:SetChecked(false,Button);
			elseif math.mod(SubID ,500)==9 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION330..(SubID-9)/500);
				Button:SetPosition(45,125);
				Button:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
				Button:Enable(false);
				UIAPI:SetChecked(false,Button);
			elseif math.mod(SubID ,500)==46 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION0320..(SubID-46)/500);
				Button:SetPosition(45,105);
				Button:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
				Button:Enable(false);
				UIAPI:SetChecked(false,Button);
			elseif math.mod(SubID ,500)==47 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION0330..(SubID-47)/500);
				Button:SetPosition(45,125);
				Button:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
				Button:Enable(false);
				UIAPI:SetChecked(false,Button);
			elseif math.mod(SubID ,500)==48 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION0320..(SubID-48)/500);
				Button:SetPosition(45,105);
				Button:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
				Button:Enable(false);
				UIAPI:SetChecked(false,Button);
			elseif math.mod(SubID ,500)==49 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION0330..(SubID-49)/500);
				Button:SetPosition(45,125);
				Button:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
				Button:Enable(false);
				UIAPI:SetChecked(false,Button);
			elseif SubID == 550 then
	      			FirstWin_Text1:SetText(NF_L0_UNION0550);
	      			FirstWin_Text1:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
			elseif SubID == 560 then
	      			FirstWin_Text1:SetText(NF_L0_UNION0560);
	      			FirstWin_Text1:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
			elseif SubID == 570 then
	      			FirstWin_Text1:SetText(NF_L0_UNION0570);
	      			FirstWin_Text1:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
			elseif math.mod(SubID ,500)==31 then
	      			FirstWin_Text1:SetText(NF_L0_UNION400..(SubID-31)/500-1);
	      			FirstWin_Text1:Visible(true);
			elseif math.mod(SubID ,500)==32 then
	      			FirstWin_Text1:SetText(NF_L0_UNION410..(SubID-32)/500-1);
	      			FirstWin_Text1:Visible(true);
			elseif SubID ==240 then
	      			FirstWin_Text1:SetText(NF_L0_UNION240);
	      			FirstWin_Text1:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
			elseif SubID ==241 then
	      			FirstWin_Text1:SetText(NF_L0_UNION241);
	      			FirstWin_Text1:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
			elseif SubID ==300 then
	      			FirstWin_Text1:SetText(NF_L0_UNION300);
	      			FirstWin_Text1:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
			elseif SubID ==310 then
	      			FirstWin_Text1:SetText(NF_L0_UNION310);
	      			FirstWin_Text1:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
			elseif SubID ==245 then
	      			FirstWin_Text1:SetText(NF_L0_UNION245);
	      			FirstWin_Text1:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
			end;
		elseif Index == 3 then	--服务器提示消息---------------------
			if SubID == 200  then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION200);
				Button:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
			elseif SubID == 1000 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION1000);
				Button:Visible(true);
			elseif math.mod(SubID ,500)==5 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_UNION102..(SubID-5)/500);
				Button:Visible(true);
			elseif SubID ==310 then
	      			FirstWin_Text1:SetText(NF_L0_UNION310);
	      			FirstWin_Text1:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
			elseif SubID ==350 then
	      			FirstWin_Text1:SetText(NF_L0_UNION350);
	      			FirstWin_Text1:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
			elseif SubID ==351 then
	      			FirstWin_Text1:SetText(NF_L0_UNION351);
	      			FirstWin_Text1:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
			elseif SubID ==352 then
	      			FirstWin_Text1:SetText(NF_L0_UNION352);
	      			FirstWin_Text1:Visible(true);
	      			NPCFUN:EndMessage(true);
	      			NPCFUN:NeedMessage(False);
			end;
		end;
end
function NpcFunUionTime_SetMsg(Type,Index,PreSubID,SubID)
	if math.mod(SubID ,100)==1  then
	      FirstWin_Text1:SetText(NF_L0_UNION0001..((SubID-1)/100)..NF_L0_UNION0002);
	      FirstWin_Text1:Visible(true);
              InputText1:Visible(true);
	      InputText1:SetPosition(60,100);
	      Input11:Visible(true);
	      Input11:SetPosition(60,100);
	      Input12:Visible(true);
	      Input12:SetPosition(52,100);
	      Input13:Visible(true);
	      Input13:SetPosition(154,100);
	      NPCFUN:HaveMessageBox(true);
	elseif math.mod(SubID ,100)==2  then
	      FirstWin_Text1:SetText(NF_L0_UNION0003..((SubID-2)/100)..NF_L0_UNION0004);
	      FirstWin_Text1:Visible(true);
              InputText1:Visible(true);
	      InputText1:SetPosition(60,100);
	      Input11:Visible(true);
	      Input11:SetPosition(60,100);
	      Input12:Visible(true);
	      Input12:SetPosition(52,100);
	      Input13:Visible(true);
	      Input13:SetPosition(154,100);
	      NPCFUN:HaveMessageBox(true);
	end;
end
