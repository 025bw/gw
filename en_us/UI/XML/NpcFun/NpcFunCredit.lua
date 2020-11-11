local win = UIAPI:GetElement("FirstWin");
--声望兑换
function NpcFunCredit_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end

function NpcFunCredit_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
		if SubID== 1 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_39);
			Button:Visible(true);
		elseif SubID == 2 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_40);
			Button:Visible(true);
		elseif SubID == 3 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_41);
			Button:Visible(true);
		elseif SubID == 4 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_42);
			Button:Visible(true);
		elseif SubID == 5 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_43);
			Button:Visible(true);
		elseif SubID == 102 then
			FirstWin_Text1:SetText(NF_L0_BD5021);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 103 then
			FirstWin_Text1:SetText(NF_L0_BD5032);
			FirstWin_Text1:Visible(true);
		elseif SubID == 1000 then
			FirstWin_Text1:SetText(NF_L0_1000);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 2000 then
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
		elseif SubID == 2011 then
			FirstWin_Text1:SetText(NF_L0_2011);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 2012 then
			FirstWin_Text1:SetText(NF_L0_2012);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 1100 then
			FirstWin_Text1:SetText(NF_L0_1100);
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
		elseif SubID == 2111 then
			FirstWin_Text1:SetText(NF_L0_2111);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 2112 then
			FirstWin_Text1:SetText(NF_L0_2112);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 1200 then
			FirstWin_Text1:SetText(NF_L0_1200);
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
		elseif SubID == 2211 then
			FirstWin_Text1:SetText(NF_L0_2211);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 2212 then
			FirstWin_Text1:SetText(NF_L0_2212);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 1300 then
			FirstWin_Text1:SetText(NF_L0_1300);
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
		elseif SubID == 2311 then
			FirstWin_Text1:SetText(NF_L0_2311);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 2312 then
			FirstWin_Text1:SetText(NF_L0_2312);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 1400 then
			FirstWin_Text1:SetText(NF_L0_1400);
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
		elseif SubID == 2411 then
			FirstWin_Text1:SetText(NF_L0_2411);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 2412 then
			FirstWin_Text1:SetText(NF_L0_2412);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:NeedMessage(False);
		elseif SubID == 50 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BD50);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID == 51 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BD51);
			Button:Visible(true);
			Button:SetPosition(25,155);
		elseif SubID == 52 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BD52);
			Button:Visible(true);
			Button:SetPosition(25,175);
		elseif SubID == 49 then
			FirstWin_Text1:SetText(NF_L0_BD49);
			FirstWin_Text1:Visible(true);
		end;
	elseif Index == 2 then --服务器消息提示
		if SubID == 8888 then
			FirstWin_Text1:SetText(NF_L0_44);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 7777 then
			FirstWin_Text1:SetText(NF_L0_45);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 7666 then
			FirstWin_Text1:SetText(NF_L0_46);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 6666 then
			FirstWin_Text1:SetText(NF_L0_47);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 5555 then
			FirstWin_Text1:SetText(NF_L0_48);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 311 then
			print(BtnID,SubID);
			FirstWin_Text1:SetText(NF_L0_60);
			FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BD311);
			Button:Visible(true);
			Button:SetPosition(25,95);
		elseif SubID == 312 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BD312);
			Button:Visible(true);
			Button:SetPosition(25,115);
		elseif SubID == 313 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BD313);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID == 314 then
			print(BtnID,SubID);
			FirstWin_Text1:SetText(NF_L0_60);
			FirstWin_Text1:Visible(true);			
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BD314);
			Button:Visible(true);
			Button:SetPosition(25,95);
		elseif SubID == 315 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BD315);
			Button:Visible(true);
			Button:SetPosition(25,115);
		elseif SubID == 316 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BD316);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID == 317 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BD317);
			Button:Visible(true);
			Button:SetPosition(25,95);
		elseif SubID == 318 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BD318);
			Button:Visible(true);
			Button:SetPosition(25,115);
		elseif SubID == 319 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_BD319);
			Button:Visible(true);
			Button:SetPosition(25,135);
		elseif SubID == 320 then
			FirstWin_Text1:SetText(NF_L0_BD320);
			FirstWin_Text1:Visible(true);
		end;
	elseif Index == 3 then --服务器消息提示
		if SubID == 3800 then
			FirstWin_Text1:SetText(NF_L0_BD3800);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3801 then
			FirstWin_Text1:SetText(NF_L0_BD3801);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3802 then
			FirstWin_Text1:SetText(NF_L0_BD3802);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3811 then
			FirstWin_Text1:SetText(NF_L0_BD3811);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3812 then
			FirstWin_Text1:SetText(NF_L0_BD3812);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3813 then
			FirstWin_Text1:SetText(NF_L0_BD3813);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3814 then
			FirstWin_Text1:SetText(NF_L0_BD3814);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3815 then
			FirstWin_Text1:SetText(NF_L0_BD3815);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3816 then
			FirstWin_Text1:SetText(NF_L0_BD3816);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3817 then
			FirstWin_Text1:SetText(NF_L0_BD3817);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3818 then
			FirstWin_Text1:SetText(NF_L0_BD3818);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID == 3819 then
			FirstWin_Text1:SetText(NF_L0_BD3819);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		end;
	end;
end
function NpcFunCredit_SetMsg(Type,Index,PreSubID,SubID)
	if SubID== 311 then
		FirstWin_Text1:SetText(NF_L0_TS311);
		FirstWin_Text1:Visible(true);
		NPCFUN:HaveMessageBox(true);
	elseif SubID== 312 then
		FirstWin_Text1:SetText(NF_L0_TS312);
		FirstWin_Text1:Visible(true);
		NPCFUN:HaveMessageBox(true);
	elseif SubID == 313 then
		FirstWin_Text1:SetText(NF_L0_TS313);
		FirstWin_Text1:Visible(true);
		NPCFUN:HaveMessageBox(true);
	elseif SubID == 314 then
		FirstWin_Text1:SetText(NF_L0_TS314);
		FirstWin_Text1:Visible(true);
		NPCFUN:HaveMessageBox(true);
	elseif SubID == 315 then
		FirstWin_Text1:SetText(NF_L0_TS315);
		FirstWin_Text1:Visible(true);
		NPCFUN:HaveMessageBox(true);
	elseif SubID == 316 then
		FirstWin_Text1:SetText(NF_L0_TS316);
		FirstWin_Text1:Visible(true);
		NPCFUN:HaveMessageBox(true);
	end;
end
