local win = UIAPI:GetElement("FirstWin");
--物资回收官
function NpcFunMaterialBack_SetUI(Type,Index)
	FirstWin_Text1:SetPosition(45,100);
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	strDesig = ""
	win:Visible(true);

end

function NpcFunMaterialBack_SetText(Type,Index,BtnID,SubID)
		if Index == 1 then	------第1个页面-----
			if SubID == 1000 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SY1000);
                                Button:SetPosition(65,200)
				Button:Visible(true);
			elseif SubID == 1001 then
				FirstWin_Text1:SetText(NF_L0_SY1001);
				FirstWin_Text1:Visible(true);
			end;
		elseif Index == 2 then		----------第2个页面--------------
			if SubID == 1010 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SY1010);
                                Button:SetPosition(65,170)
				Button:Visible(true);
			elseif SubID == 1011 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SY1011);
                                Button:SetPosition(65,200)
				Button:Visible(true);
			elseif SubID == 1012 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SY1012);
                                Button:SetPosition(65,230)
				Button:Visible(true);
			elseif SubID == 1013 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SY1013);
                                Button:SetPosition(65,260)
				Button:Visible(true);
			elseif SubID == 1014 then
				local Button = win:GetChild("FirstWin_Button" .. BtnID);
				Button:SetText(NF_L0_SY1014);
                                Button:SetPosition(65,290)
				Button:Visible(true);
			elseif SubID == 3000 then
				FirstWin_Text1:SetText(NF_L0_SY2000);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
			elseif SubID == 3100 then
				FirstWin_Text1:SetText(NF_L0_SY3100);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                        end;
		elseif Index == 3 then		-------消息提示文字----------
			if SubID == 2000 then
				FirstWin_Text1:SetText(NF_L0_2000);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2001 then
				FirstWin_Text1:SetText(NF_L0_2001);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2002 then
				FirstWin_Text1:SetText(NF_L0_2002);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2003 then
				FirstWin_Text1:SetText(NF_L0_2003);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2004 then
				FirstWin_Text1:SetText(NF_L0_2004);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2005 then
				FirstWin_Text1:SetText(NF_L0_2005);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2006 then
				FirstWin_Text1:SetText(NF_L0_2006);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2007 then
				FirstWin_Text1:SetText(NF_L0_2007);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2008 then
				FirstWin_Text1:SetText(NF_L0_2008);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2009 then
				FirstWin_Text1:SetText(NF_L0_2009);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2010 then
				FirstWin_Text1:SetText(NF_L0_2010);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2100 then
				FirstWin_Text1:SetText(NF_L0_2100);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2101 then
				FirstWin_Text1:SetText(NF_L0_2101);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2102 then
				FirstWin_Text1:SetText(NF_L0_2102);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2103 then
				FirstWin_Text1:SetText(NF_L0_2103);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2104 then
				FirstWin_Text1:SetText(NF_L0_2104);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2105 then
				FirstWin_Text1:SetText(NF_L0_2105);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2106 then
				FirstWin_Text1:SetText(NF_L0_2106);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2107 then
				FirstWin_Text1:SetText(NF_L0_2107);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2108 then
				FirstWin_Text1:SetText(NF_L0_2108);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2109 then
				FirstWin_Text1:SetText(NF_L0_2109);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2110 then
				FirstWin_Text1:SetText(NF_L0_2110);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2200 then
				FirstWin_Text1:SetText(NF_L0_2200);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2201 then
				FirstWin_Text1:SetText(NF_L0_2201);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2202 then
				FirstWin_Text1:SetText(NF_L0_2202);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2203 then
				FirstWin_Text1:SetText(NF_L0_2203);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2204 then
				FirstWin_Text1:SetText(NF_L0_2204);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2205 then
				FirstWin_Text1:SetText(NF_L0_2205);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2206 then
				FirstWin_Text1:SetText(NF_L0_2206);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2207 then
				FirstWin_Text1:SetText(NF_L0_2207);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2208 then
				FirstWin_Text1:SetText(NF_L0_2208);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2209 then
				FirstWin_Text1:SetText(NF_L0_2209);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2210 then
				FirstWin_Text1:SetText(NF_L0_2210);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2300 then
				FirstWin_Text1:SetText(NF_L0_2300);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2301 then
				FirstWin_Text1:SetText(NF_L0_2301);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2302 then
				FirstWin_Text1:SetText(NF_L0_2302);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2303 then
				FirstWin_Text1:SetText(NF_L0_2303);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2304 then
				FirstWin_Text1:SetText(NF_L0_2304);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2305 then
				FirstWin_Text1:SetText(NF_L0_2305);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2306 then
				FirstWin_Text1:SetText(NF_L0_2306);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2307 then
				FirstWin_Text1:SetText(NF_L0_2307);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2308 then
				FirstWin_Text1:SetText(NF_L0_2308);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2309 then
				FirstWin_Text1:SetText(NF_L0_2309);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2310 then
				FirstWin_Text1:SetText(NF_L0_2310);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2400 then
				FirstWin_Text1:SetText(NF_L0_2400);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2401 then
				FirstWin_Text1:SetText(NF_L0_2401);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2402 then
				FirstWin_Text1:SetText(NF_L0_2402);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2403 then
				FirstWin_Text1:SetText(NF_L0_2403);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2404 then
				FirstWin_Text1:SetText(NF_L0_2404);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2405 then
				FirstWin_Text1:SetText(NF_L0_2405);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2406 then
				FirstWin_Text1:SetText(NF_L0_2406);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2407 then
				FirstWin_Text1:SetText(NF_L0_2407);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2408 then
				FirstWin_Text1:SetText(NF_L0_2408);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2409 then
				FirstWin_Text1:SetText(NF_L0_2409);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 2410 then
				FirstWin_Text1:SetText(NF_L0_2410);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 3001 then
				FirstWin_Text1:SetText(NF_L0_SY2000);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 3002 then
				FirstWin_Text1:SetText(NF_L0_SY3002);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 3003 then
				FirstWin_Text1:SetText(NF_L0_SY3003);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 3004 then
				FirstWin_Text1:SetText(NF_L0_SY3004);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 3005 then
				FirstWin_Text1:SetText(NF_L0_SY3005);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			elseif SubID == 3006 then
				FirstWin_Text1:SetText(NF_L0_SY3006);
				FirstWin_Text1:Visible(true);
				NPCFUN:EndMessage(true);
                                NPCFUN:NeedMessage(False);
			end;
		end;
end
