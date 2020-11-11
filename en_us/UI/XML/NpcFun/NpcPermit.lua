local win = UIAPI:GetElement("FirstWin");
--÷‹ƒÍ«Ï
function NpcPermit_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end;

function NpcPermit_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
		if SubID == 120 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN120);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID == 121 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN121);
			Button:Visible(true);
			Button:SetPosition(25,155);

		elseif SubID == 122 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN122);
			Button:Visible(true);
			Button:SetPosition(25,175);
		elseif SubID == 123 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN123);
			Button:Visible(true);
			Button:SetPosition(25,195);
		elseif SubID == 124 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN124);
			Button:Visible(true);
			Button:SetPosition(25,215);
		elseif SubID == 125 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN125);
			Button:Visible(true);
			Button:SetPosition(25,215);
		elseif SubID == 126 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN126);
			Button:Visible(true);
			Button:SetPosition(25,235);
		elseif math.mod(SubID ,1000) == 5 then
			FirstWin_Text1:SetText(NF_L0_TZN120 .. ((SubID-5)/1000) );
			FirstWin_Text1:Visible(true);
		elseif SubID == 921 then
			FirstWin_Text1:SetText(NF_L0_TZN922);
			FirstWin_Text1:Visible(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 919 then
			FirstWin_Text1:SetText(NF_L0_TZN919);
			FirstWin_Text1:Visible(true);
			NPCFUN:NeedMessage(False);
		end;

	elseif Index == 2 then
		if SubID == 941 then
			FirstWin_Text1:SetText(NF_L0_TZN941);
			FirstWin_Text1:Visible(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 922 then
			FirstWin_Text1:SetText(NF_L0_TZN922);
			FirstWin_Text1:Visible(true);
			NPCFUN:NeedMessage(False);
                        NPCFUN:EndMessage(true);
		elseif SubID == 923 then
			FirstWin_Text1:SetText(NF_L0_TZN923);
			FirstWin_Text1:Visible(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 924 then
			FirstWin_Text1:SetText(NF_L0_TZN924);
			FirstWin_Text1:Visible(true);
                        FirstWin_ButtonA3:Visible(true);
			FirstWin_ButtonA3:SetText(NF_L0_BZN999);
			FirstWin_ButtonA3:SetPosition(400,250);
	                FirstWin_ButtonA1:Visible(false);
	                FirstWin_ButtonA2:Visible(false);
		elseif SubID == 925 then
			FirstWin_Text1:SetText(NF_L0_TZN925);
			FirstWin_Text1:Visible(true);
                        FirstWin_ButtonA3:Visible(true);
			FirstWin_ButtonA3:SetText(NF_L0_BZN999);
			FirstWin_ButtonA3:SetPosition(400,250);
	                FirstWin_ButtonA1:Visible(false);
	                FirstWin_ButtonA2:Visible(false);
		elseif SubID == 210 then
			FirstWin_Text1:SetText(NF_L0_TZN210);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN210);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID == 211 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN211);
			Button:Visible(true);
			Button:SetPosition(25,155);
		elseif SubID == 212 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN212);
			Button:Visible(true);
			Button:SetPosition(25,175);
		elseif SubID == 213 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN213);
			Button:Visible(true);
			Button:SetPosition(25,195);
		elseif SubID == 220 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN220);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID == 221 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN221);
			Button:Visible(true);
			Button:SetPosition(25,155);
		elseif SubID == 222 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN222);
			Button:Visible(true);
			Button:SetPosition(25,175);
		elseif SubID == 223 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN223);
			Button:Visible(true);
			Button:SetPosition(25,195);
		elseif SubID == 224 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN224);
			Button:Visible(true);
			Button:SetPosition(25,215);
		elseif SubID == 225 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN225);
			Button:Visible(true);
			Button:SetPosition(25,235);
		elseif SubID == 230 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN230);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID == 231 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN231);
			Button:Visible(true);
			Button:SetPosition(25,155);
		elseif SubID == 232 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN232);
			Button:Visible(true);
			Button:SetPosition(25,175);
		elseif SubID == 233 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN233);
			Button:Visible(true);
			Button:SetPosition(25,195);
		elseif SubID == 234 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN234);
			Button:Visible(true);
			Button:SetPosition(25,215);
		elseif SubID == 235 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BZN235);
			Button:Visible(true);
			Button:SetPosition(25,235);
		elseif math.mod(SubID ,1000) == 6 then
			FirstWin_Text1:SetText(NF_L0_TZN120 .. ((SubID-6)/1000) );
			FirstWin_Text1:Visible(true);
		elseif math.mod(SubID ,1000) == 8 then
			FirstWin_Text2:SetText(NF_L0_TZN211 .. ((SubID-8)/1000) );
			FirstWin_Text2:Visible(true);
                        FirstWin_Text2:SetPosition(25,65);
                else
                        
		end;
	elseif Index == 3 then
		if SubID == 930 then
			FirstWin_Text1:SetText(NF_L0_TZN922);
			FirstWin_Text1:Visible(true);
                        NPCFUN:NeedMessage(False);
                        NPCFUN:EndMessage(true);
		elseif SubID == 926 then
			FirstWin_Text1:SetText(NF_L0_TZN925);
			FirstWin_Text1:Visible(true);
                        FirstWin_ButtonA3:Visible(true);
			FirstWin_ButtonA3:SetText(NF_L0_BZN999);
			FirstWin_ButtonA3:SetPosition(400,250);
	                FirstWin_ButtonA1:Visible(false);
	                FirstWin_ButtonA2:Visible(false);
		elseif SubID == 927 then
			FirstWin_Text1:SetText(NF_L0_TZN924);
			FirstWin_Text1:Visible(true);
                        FirstWin_ButtonA3:Visible(true);
			FirstWin_ButtonA3:SetText(NF_L0_BZN999);
			FirstWin_ButtonA3:SetPosition(400,250);
	                FirstWin_ButtonA1:Visible(false);
	                FirstWin_ButtonA2:Visible(false);
		elseif SubID == 933 then
			FirstWin_Text1:SetText(NF_L0_TZN923);
			FirstWin_Text1:Visible(true);
		elseif SubID == 934 then
			FirstWin_Text1:SetText(NF_L0_TZN924);
			FirstWin_Text1:Visible(true);
                        FirstWin_ButtonA3:Visible(true);
			FirstWin_ButtonA3:SetText(NF_L0_BZN999);
			FirstWin_ButtonA3:SetPosition(400,250);
	                FirstWin_ButtonA1:Visible(false);
	                FirstWin_ButtonA2:Visible(false);
		elseif SubID == 935 then
			FirstWin_Text1:SetText(NF_L0_TZN925);
			FirstWin_Text1:Visible(true);
                        FirstWin_ButtonA3:Visible(true);
			FirstWin_ButtonA3:SetText(NF_L0_BZN999);
			FirstWin_ButtonA3:SetPosition(400,250);
	                FirstWin_ButtonA1:Visible(false);
	                FirstWin_ButtonA2:Visible(false);
		elseif SubID == 940 then
			FirstWin_Text1:SetText(NF_L0_TZN941);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif math.mod(SubID ,1000) == 7 then
			FirstWin_Text2:SetText(NF_L0_TZN211 .. ((SubID-7)/1000) );
			FirstWin_Text2:Visible(true);
                        FirstWin_Text2:SetPosition(25,65);
                else
                        
		end;
	end;
end
