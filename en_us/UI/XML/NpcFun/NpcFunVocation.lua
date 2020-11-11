local win = UIAPI:GetElement("FirstWin");
--活动
function NpcFunVocation_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunVocation_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第几个页面------
		if SubID >= 100 and SubID <= 107 then
			FirstWin_Text1:SetText(NF_L0_VT100);
			FirstWin_Text1:Visible(true);
		end;
		if SubID== 100      then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,75);
			Button:SetText(NF_L0_V100);
			Button:Visible(true);
		elseif SubID== 101      then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,95);
			Button:SetText(NF_L0_V101);
			Button:Visible(true);
		elseif SubID== 102      then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,115);
			Button:SetText(NF_L0_V102);
			Button:Visible(true);
		elseif SubID== 103      then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,135);
			Button:SetText(NF_L0_V103);
			Button:Visible(true);
		elseif SubID == 104 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,155);
			Button:SetText(NF_L0_V014);
			Button:Visible(true);
		elseif SubID == 105 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,175);
			Button:SetText(NF_L0_V015);
			Button:Visible(true);
		elseif SubID == 106 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,195);
			Button:SetText(NF_L0_V016);
			Button:Visible(true);
		elseif SubID == 107 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,215);
			Button:SetText(NF_L0_V017);
			Button:Visible(true);
		elseif SubID == 121 then
			FirstWin_Text1:SetText(NF_L0_S009);
			FirstWin_Text1:Visible(true);
		end;
	elseif Index == 2 then	--服务器提示消息---------------------
		if SubID == 110 then
           		FirstWin_ItemBtn1:Visible(true);
            		FirstWin_ItemBtn1:SetPosition(25,50);
			FirstWin_Text1:SetText(NF_L0_V104);
			FirstWin_Text1:Visible(true);
		elseif SubID == 111 then
	        	FirstWin_ItemBtn2:Visible(true);
          		FirstWin_ItemBtn2:SetPosition(25,120);
			FirstWin_Text2:SetText(NF_L0_V105);
			FirstWin_Text2:Visible(true);
            		FirstWin_Text2:SetPosition(25,100);
		elseif SubID == 112 then
            		FirstWin_ItemBtn1:Visible(true);
            		FirstWin_ItemBtn1:SetPosition(25,50);
			FirstWin_Text1:SetText(NF_L0_V106);
			FirstWin_Text1:Visible(true);
		elseif SubID == 113 then
           		FirstWin_ItemBtn2:Visible(true);
            		FirstWin_ItemBtn2:SetPosition(25,140);
			FirstWin_Text2:SetText(NF_L0_V107);
			FirstWin_Text2:Visible(true);
            		FirstWin_Text2:SetPosition(25,120);
		elseif SubID == 114 then
            		FirstWin_ItemBtn3:Visible(true);
            		FirstWin_ItemBtn3:SetPosition(25,230);
			FirstWin_Text3:SetText(NF_L0_V108);
			FirstWin_Text3:Visible(true);
            		FirstWin_Text3:SetPosition(25,210);
		elseif SubID == 115 then
            		FirstWin_ItemBtn1:Visible(true);
            		FirstWin_ItemBtn1:SetPosition(25,50);
			FirstWin_Text1:SetText(NF_L0_V111);
			FirstWin_Text1:Visible(true);
		elseif SubID == 116 then
            		FirstWin_ItemBtn2:Visible(true);
            		FirstWin_ItemBtn2:SetPosition(25,140);
			FirstWin_Text2:SetText(NF_L0_V109);
			FirstWin_Text2:Visible(true);
            		FirstWin_Text2:SetPosition(25,120);
		elseif SubID == 117 then
            		FirstWin_ItemBtn3:Visible(true);
            		FirstWin_ItemBtn3:SetPosition(25,230);
			FirstWin_Text3:SetText(NF_L0_V108);
			FirstWin_Text3:Visible(true);
            		FirstWin_Text3:SetPosition(25,210);
		elseif SubID == 118 then
			FirstWin_Text1:SetText(NF_L0_V110);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 119 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,240);
			Button:SetText(NF_L0_CY001);
			Button:Visible(true);
			FirstWin_Text3:SetText(NF_L0_V124);
			FirstWin_Text3:Visible(true);
            		FirstWin_Text3:SetPosition(25,170);
		elseif SubID == 120 then
			FirstWin_Text1:SetText(NF_L0_V125);
			FirstWin_Text1:Visible(true);
	        	FirstWin_ItemBtn1:Visible(true);
          		FirstWin_ItemBtn1:SetPosition(25,50);
			FirstWin_Text2:SetText(NF_L0_V126);
			FirstWin_Text2:Visible(true);
            		FirstWin_Text2:SetPosition(25,120);

		elseif SubID == 121 then
			FirstWin_Text1:SetText(NF_L0_S009);
			FirstWin_Text1:Visible(true);

		elseif SubID == 123 then
            FirstWin_ItemBtn1:Visible(true);
            FirstWin_ItemBtn1:SetPosition(25,50);
			FirstWin_Text1:SetText(NF_L0_V131);
			FirstWin_Text1:Visible(true);

		elseif SubID == 130 then
           	FirstWin_ItemBtn1:Visible(true);
			FirstWin_ItemBtn1:SetPosition(25,50);
			FirstWin_Text1:SetText(NF_L0_V129);
			FirstWin_Text1:Visible(true);
		elseif SubID == 131 then
	        FirstWin_ItemBtn2:Visible(true);
          	FirstWin_ItemBtn2:SetPosition(25,120);
			FirstWin_Text2:SetText(NF_L0_V130);
			FirstWin_Text2:Visible(true);
			FirstWin_Text2:SetPosition(25,100);

		elseif SubID == 132 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,240);
			Button:SetText(NF_L0_CY001);
			Button:Visible(true);
			FirstWin_Text3:SetText(NF_L0_V128);
			FirstWin_Text3:Visible(true);
			FirstWin_Text3:SetPosition(25,170);

		elseif SubID == 201 then
           		FirstWin_ItemBtn1:Visible(true);
            		FirstWin_ItemBtn1:SetPosition(25,50);
			FirstWin_Text1:SetText(NF_L0_V201);
			FirstWin_Text1:Visible(true);
		elseif SubID == 202 then
	        	FirstWin_ItemBtn2:Visible(true);
          		FirstWin_ItemBtn2:SetPosition(25,120);
			FirstWin_Text2:SetText(NF_L0_V202);
			FirstWin_Text2:Visible(true);
            		FirstWin_Text2:SetPosition(25,100);
		elseif SubID == 203 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetPosition(25,240);
			Button:SetText(NF_L0_CY001);
			Button:Visible(true);
			FirstWin_Text3:SetText(NF_L0_V203);
			FirstWin_Text3:Visible(true);
            		FirstWin_Text3:SetPosition(25,170);
		end;
	elseif Index == 3 then	--服务器提示消息---------------------
		if SubID == 120 then
			FirstWin_Text1:SetText(NF_L0_V112);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1118 then
			FirstWin_Text1:SetText(NF_L0_CY005);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1119 then
			FirstWin_Text1:SetText(NF_L0_CY002);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 1132 then
			FirstWin_Text1:SetText(NF_L0_CY007);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 2203 then
			FirstWin_Text1:SetText(NF_L0_CY003);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 2204 then
			FirstWin_Text1:SetText(NF_L0_CY003);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 149 then
			FirstWin_Text1:SetText(NF_L0_V123);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 148 then
			FirstWin_Text1:SetText(NF_L0_V113);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 147 then
			FirstWin_Text1:SetText(NF_L0_V114);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 146 then
			FirstWin_Text1:SetText(NF_L0_V114);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 145 then
			FirstWin_Text1:SetText(NF_L0_V115);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 144 then
			FirstWin_Text1:SetText(NF_L0_V116);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 143 then
			FirstWin_Text1:SetText(NF_L0_V117);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 142 then
			FirstWin_Text1:SetText(NF_L0_V118);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 121 then
			FirstWin_Text1:SetText(NF_L0_V119);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 141 then
			FirstWin_Text1:SetText(NF_L0_V120);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 122 then
			FirstWin_Text1:SetText(NF_L0_V121);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 140 then
			FirstWin_Text1:SetText(NF_L0_V122);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 139 then
			FirstWin_Text1:SetText(NF_L0_V114);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 150 then
			FirstWin_Text1:SetText(NF_L0_V150);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 151 then
			FirstWin_Text1:SetText(Msg_Bug02);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 152 then
			FirstWin_Text1:SetText(NF_L0_V127);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 153 then
			FirstWin_Text1:SetText(NF_L0_V151);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 154 then
			FirstWin_Text1:SetText(NF_L0_V152);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 155 then
			FirstWin_Text1:SetText(NF_L0_V153);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 156 then
			FirstWin_Text1:SetText(NF_L0_V154);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 157 then
			FirstWin_Text1:SetText(NF_L0_V155);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 158 then
			FirstWin_Text1:SetText(NF_L0_V156);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 159 then
			FirstWin_Text1:SetText(NF_L0_V157);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 160 then
			FirstWin_Text1:SetText(NF_L0_V158);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 161 then
			FirstWin_Text1:SetText(NF_L0_V159);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 162 then
			FirstWin_Text1:SetText(NF_L0_V160);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 163 then
			FirstWin_Text1:SetText(NF_L0_V161);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 164 then
			FirstWin_Text1:SetText(NF_L0_V162);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 300 then
			FirstWin_Text1:SetText(NF_L0_V300);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 301 then
			FirstWin_Text1:SetText(NF_L0_V301);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	end;
end
