local win = UIAPI:GetElement("FirstWin");
local a ={}
local BtnNum =nil
--利兰丁农场
function NpcFunWarTxt_SetUI(Type,Index)
	FirstWin_Text1:SetPosition(45,100);
	FirstWin_Text1:Visible(false);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	strDesig = ""
	win:Visible(true);

end

function NpcFunFarm_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
		if SubID== 1 then
			FirstWin_Text1:SetText(NF_L0_FRAM101);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM102);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID== 5 then
			FirstWin_Text1:SetText(NF_L0_FRAM105);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM205);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID== 6 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM206);
			Button:Visible(true);
			Button:SetPosition(25,155);
		elseif SubID== 101 then
			FirstWin_Text1:SetText(NF_L0_FRAM461);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM301);
			Button:Visible(true);
			Button:SetPosition(25,175);
		elseif SubID== 100 then
			FirstWin_Text1:SetText(NF_L0_FRAM460);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM301);
			Button:Visible(true);
			Button:SetPosition(25,175);
		elseif SubID== 102 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM302);
			Button:Visible(true);
			Button:SetPosition(25,195);
		elseif SubID== 103 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM303);
			Button:Visible(true);
			Button:SetPosition(25,215);
		elseif SubID== 104 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM304);
			Button:Visible(true);
			Button:SetPosition(25,235);
		elseif SubID== 71 then
			FirstWin_Text1:SetText(NF_L0_FRAM171);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM371);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID== 72 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM372);
			Button:Visible(true);
			Button:SetPosition(25,155);
		elseif SubID== 73 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM373);
			Button:Visible(true);
			Button:SetPosition(25,170);
		elseif SubID== 74 then
			FirstWin_Text2:SetText(NF_L0_FRAM374);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,115);
		elseif SubID== 202 then
			FirstWin_Text1:SetText(NF_L0_FRAM222);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);



		end;
	elseif Index == 2 then
		if SubID >= 10001 and SubID <= 10007 then
			a = {NF_L0_FRAM10001, NF_L0_FRAM10002, NF_L0_FRAM10003, NF_L0_FRAM10004, NF_L0_FRAM10005, NF_L0_FRAM10006, NF_L0_FRAM10007};	--技巧、灵性、强壮、准确、身法、根骨、幸
			BtnNum = a[SubID - 10000];
			FirstWin_Text1:SetText(NF_L0_FRAM10000..BtnNum..NF_L0_FRAM10008);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID >= 20001 and SubID <= 20007 then
			a = {NF_L0_FRAM10001, NF_L0_FRAM10002, NF_L0_FRAM10003, NF_L0_FRAM10004, NF_L0_FRAM10005, NF_L0_FRAM10006, NF_L0_FRAM10007};	--技巧、灵性、强壮、准确、身法、根骨、幸
			BtnNum = a[SubID - 20000];
			FirstWin_Text1:SetText(NF_L0_FRAM407);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(NF_L0_FRAM20000..BtnNum..NF_L0_FRAM20001);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,50);
			FirstWin_Text3:SetText(NF_L0_FRAM408);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,120);
		elseif SubID == 17 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM410);
			Button:Visible(true);
			Button:Enable(false);
			Button:SetTextFormat(0);
			UIAPI:SetChecked(false,Button);
			Button:SetPosition(25,90);
		elseif SubID == 21 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM421);
			Button:Visible(true);
			Button:SetPosition(25,215);
		elseif SubID == 18 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM411);
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			Button:SetTextFormat(0);
			Button:SetPosition(25,90);
		elseif SubID == 19 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM412);
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			Button:SetTextFormat(0);
			Button:SetPosition(25,90);
		elseif math.mod(SubID ,100) == 9 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM422.."|cffF14187"..string.format("%.2f",(SubID-9)/10000).."|cFFFFFFFF");
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			Button:SetTextFormat(0);
			Button:SetPosition(25,70);
		elseif SubID == 111 then
			FirstWin_Text1:SetText(NF_L0_FRAM701);
			FirstWin_Text1:Visible(true);
			FirstWin_Text2:SetText(NF_L0_FRAM771);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,110);
			FirstWin_ItemBtn1:Visible(true);
			FirstWin_ItemBtn1:SetPosition(25,135);
			InputText1:Visible(true);
			InputText1:SetPosition(30,180);
			Input11:Visible(true);
			Input11:SetPosition(33,180);
			Input12:Visible(true);
			Input12:SetPosition(25,180);
			Input13:Visible(true);
			Input13:SetPosition(127,180);
		elseif SubID == 112 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM712);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif math.mod(SubID ,1000) == 11 then
			FirstWin_Text1:SetText(NF_L0_FRAM781);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM713..((SubID-11)/1000));
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			Button:SetTextFormat(0);
			Button:SetPosition(25,90);
		elseif math.mod(SubID ,1000) == 16 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM713..((SubID-16)/1000));
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			Button:SetTextFormat(0);
			Button:SetPosition(25,90);
		elseif math.mod(SubID ,1000) == 12 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM714..((SubID-12)/1000));
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			Button:SetTextFormat(0);
			Button:SetPosition(25,110);
		elseif math.mod(SubID ,1000) == 13 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM715..((SubID-13)/1000));
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			Button:SetTextFormat(0);
			Button:SetPosition(25,130);
		elseif math.mod(SubID ,1000) == 23 then
			FirstWin_Text1:SetText(NF_L0_FRAM725);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM723..((SubID-23)/1000));
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			Button:SetTextFormat(0);
			Button:SetPosition(25,150);
		elseif math.mod(SubID ,1000) == 24 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_FRAM724..((SubID-24)/1000));
			Button:Visible(true);
			Button:Enable(false);
			UIAPI:SetChecked(false,Button);
			Button:SetTextFormat(0);
			Button:SetPosition(25,170);
		elseif SubID== 31 then
			FirstWin_Text1:SetText(NF_L0_FRAM730);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_WT401);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID== 32 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_WT402);
			Button:Visible(true);
			Button:SetPosition(25,155);
		elseif SubID== 33 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_WT403);
			Button:Visible(true);
			Button:SetPosition(25,175);
		elseif SubID== 34 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_WT404);
			Button:Visible(true);
			Button:SetPosition(25,195);
		elseif math.mod(SubID ,1000) == 14 then
			FirstWin_Text1:SetText(NF_L0_FRAM741..(140000+(SubID-14)*3)..NF_L0_FRAM742..(10000+((SubID-14)/1000)*((SubID-14)/1000)*50)..NF_L0_FRAM743..string.format("%.0f",(16+(SubID-14)/5000))..NF_L0_FRAM744);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif math.mod(SubID ,1000) == 15 then
			FirstWin_Text1:SetText(NF_L0_FRAM751..((140000+(SubID-15)*3)/2)..NF_L0_FRAM742..((30000+((SubID-15)/1000)*((SubID-15)/1000)*50)/2)..NF_L0_FRAM743..string.format("%.0f",((16+(SubID-15)/5000)/2))..NF_L0_FRAM744);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 201 then
			FirstWin_Text1:SetText(NF_L0_FRAM801);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 203 then
			FirstWin_Text1:SetText(NF_L0_FRAM803);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 204 then
			FirstWin_Text1:SetText(NF_L0_FRAM804);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 205 then
			FirstWin_Text1:SetText(NF_L0_FRAM805);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 210 then
			FirstWin_Text1:SetText(NF_L0_FRAM815);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 206 then
			FirstWin_Text1:SetText(NF_L0_FRAM806);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 207 then
			FirstWin_Text1:SetText(NF_L0_FRAM807);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 208 then
			FirstWin_Text1:SetText(NF_L0_FRAM809);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 219 then
			FirstWin_Text1:SetText(NF_L0_FRAM808);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 91 then
			FirstWin_Text1:SetText(NF_L0_FRAM201);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 92 then
			FirstWin_Text1:SetText(NF_L0_FRAM202);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 93 then
			FirstWin_Text1:SetText(NF_L0_FRAM203);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID== 94 then
			FirstWin_Text1:SetText(NF_L0_FRAM204);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		end;
	elseif Index == 3 then
		if SubID == 300 then
			FirstWin_Text1:SetText(NF_L0_FRAM430);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID ==400 then
			FirstWin_Text1:SetText(NF_L0_FRAM440);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID ==500 then
			FirstWin_Text1:SetText(NF_L0_FRAM201);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID ==600 then
			FirstWin_Text1:SetText(NF_L0_FRAM261);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID ==700 then
			FirstWin_Text1:SetText(NF_L0_FRAM271);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID ==51 then
			FirstWin_Text1:SetText(NF_L0_FRAM451);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID ==52 then
			FirstWin_Text1:SetText(NF_L0_FRAM452);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID ==53 then
			FirstWin_Text1:SetText(NF_L0_FRAM453);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID ==54 then
			FirstWin_Text1:SetText(NF_L0_FRAM454);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID ==60 then
			FirstWin_Text1:SetText(NF_L0_FRAM460);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID ==61 then
			FirstWin_Text1:SetText(NF_L0_FRAM461);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID ==62 then
			FirstWin_Text1:SetText(NF_L0_FRAM462);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID ==63 then
			FirstWin_Text1:SetText(NF_L0_FRAM463);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID ==64 then
			FirstWin_Text1:SetText(NF_L0_FRAM464);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		end;
	end;
end
