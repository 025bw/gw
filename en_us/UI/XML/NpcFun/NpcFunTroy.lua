local win = UIAPI:GetElement("FirstWin");
local msg = {}
local msg2 ={}
local i = nil
--特洛伊攻城战
function NpcFunTroy_SetUI(Type,Index)
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
    win:Visible(true);

end

function NpcFunTroy_SetText(Type,Index,BtnID,SubID)
    if Index == 1 then
        if SubID == 101 then
            FirstWin_Text1:SetText(NF_L0_TR101);
            FirstWin_Text1:Visible(true);
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_TR102);
            Button:SetPosition(25,135)
            Button:Visible(true);
        elseif SubID == 113 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(glory113b);
            Button:SetPosition(25,155)
            Button:Visible(true);
        elseif SubID == 102 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_TR213);
            Button:SetPosition(25,155)
            Button:Visible(true);
        elseif SubID == 103 then
            FirstWin_Text1:SetText(NF_L0_TR103);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 104 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_TR104);
            Button:SetPosition(25,135)
            Button:Visible(true);
        elseif SubID == 105 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_TR105);
            Button:SetPosition(25,155)
            Button:Visible(true);
        elseif SubID == 106 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_TR106);
            Button:SetPosition(25,175)
            Button:Visible(true);
        elseif SubID > 106 and SubID < 112 then
            FirstWin_Text1:SetText(LuaText["NF_L0_TR" .. SubID]);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 207 then
            FirstWin_Text1:SetText(NF_L0_TR207);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 312 then
            FirstWin_Text1:SetText(NF_L0_TR312);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 208 then
            FirstWin_Text2:SetText(NF_L0_TR208);
            FirstWin_Text2:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 209 then
            FirstWin_Text1:SetText(NF_L0_TR209);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 321 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_TR321);
            Button:SetPosition(25,195)
            Button:Visible(true);
        elseif SubID >=2106 and SubID<=2110 then
	    msg2={NF_L0_TR2006,NF_L0_TR2007,NF_L0_TR2008,NF_L0_TR2009,NF_L0_TR2010}
            FirstWin_Text1:SetText(msg2[SubID-2105]);
            FirstWin_Text1:Visible(true);
            FirstWin_Text1:SetPosition(15,30);
            FirstWin_Text2:SetText(NF_L0_TR2000);
            FirstWin_Text2:Visible(true);
            FirstWin_Text2:SetPosition(15,50);
            NPCFUN:EndMessage(true);
        elseif SubID >=3106 and SubID<=3110 then
	    msg2={NF_L0_TR2006,NF_L0_TR2007,NF_L0_TR2008,NF_L0_TR2009,NF_L0_TR2010}
            FirstWin_Text1:SetText(msg2[SubID-3105]);
            FirstWin_Text1:Visible(true);
            FirstWin_Text1:SetPosition(15,30);
            NPCFUN:EndMessage(true);
        elseif SubID == 2150 then
            FirstWin_Text1:SetText(NF_L0_TR2050);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true)
        elseif SubID == 1107 then
            FirstWin_Text1:SetText(NF_L0_TR1007);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true)
        elseif SubID == 1108 then
            FirstWin_Text1:SetText(NF_L0_TR1008);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true)
        end;
    elseif Index == 2 then
        if SubID == 201 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_TR201);
            Button:SetPosition(25,135)
            Button:Visible(true);
        elseif SubID == 215 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(glory215b);
            Button:SetPosition(25,135)
            Button:Visible(true);
            FirstWin_Text1:SetText(glory215t);
            FirstWin_Text1:Visible(true);
        elseif SubID == 202 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_TR202);
            Button:SetPosition(25,155)
            Button:Visible(true);
        elseif SubID == 203 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_TR203);
            Button:SetPosition(25,175)
            Button:Visible(true);
        elseif SubID == 204 then
            FirstWin_Text1:SetText(NF_L0_TR204);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 205 then
            FirstWin_Text1:SetText(NF_L0_TR205);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 206 then
            FirstWin_Text1:SetText(NF_L0_TR206);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 207 then
            FirstWin_Text1:SetText(NF_L0_TR207);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 208 then
            FirstWin_Text2:SetText(NF_L0_TR208);
            FirstWin_Text2:Visible(true);
        elseif SubID == 209 then
            FirstWin_Text1:SetText(NF_L0_TR209);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
			
        elseif SubID == 210 then
            FirstWin_Text1:SetText(NF_L0_TR210);
            FirstWin_Text1:Visible(true);
        elseif SubID == 211 then
            FirstWin_Text1:SetText(NF_L0_TR211);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 212 then
            FirstWin_Text1:SetText(NF_L0_TR212);
            FirstWin_Text1:Visible(true);
		
        elseif SubID == 213 then
            FirstWin_Text1:SetText(NF_L0_TR215);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 214 then
            FirstWin_Text1:SetText(NF_L0_TR216);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 311 then
            FirstWin_Text1:SetText(NF_L0_TR311);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 312 then
            FirstWin_Text1:SetText(NF_L0_TR312);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
    elseif Index == 3 then
        if SubID >= 1000 and (math.mod(SubID,1000) == 13 or math.mod(SubID,1000) == 16) then
            if math.mod(SubID,1000) == 13 then
                FirstWin_Text1:SetText(NF_L0_TR013.. (SubID - 13)/100 .. NF_L0_TR015..(SubID - 13)..NF_L0_TR014);
                FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
            elseif math.mod(SubID,1000) == 16 then
                FirstWin_Text1:SetText(NF_L0_TR016.. (SubID - 16)/1000 .. NF_L0_TR017);
                FirstWin_Text1:Visible(true);
                NPCFUN:EndMessage(true);
            end;
        elseif math.mod(SubID, 1000) == 99 then
            FirstWin_Text1:SetText(glory399t .. "|cffF14187" .. ((SubID - 99)/1000) .. "|cFFFFFFFF" .. glory400t);
            FirstWin_Text1:Visible(true);
            FirstWin_ItemBtn1:Visible(true);
            FirstWin_ItemBtn1:SetPosition(45,200);
            FirstWin_ItemBtn2:Visible(true);
            FirstWin_ItemBtn2:SetPosition(205,200);
            InputText1:Visible(true);
            Input11:Visible(true);
            Input12:Visible(true);
            Input13:Visible(true);
            Input11:SetPosition(280,200);
            Input12:SetPosition(272,200);
            Input13:SetPosition(374,200);
            InputText1:SetPosition(276,201);
        elseif SubID == 311 then
            FirstWin_Text1:SetText(NF_L0_TR311);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 301 then
            FirstWin_Text1:SetText(NF_L0_TR301);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 302 then
            FirstWin_Text1:SetText(NF_L0_TR302);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 303 then
            FirstWin_Text1:SetText(NF_L0_TR303);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 304 then
            FirstWin_Text1:SetText(NF_L0_TR304);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 305 then
            FirstWin_Text1:SetText(NF_L0_TR305);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 306 then
            FirstWin_Text2:SetText(NF_L0_TR306);
            FirstWin_Text2:Visible(true);
            FirstWin_Text2:SetPosition(25,100)
            NPCFUN:EndMessage(true);
        elseif SubID == 307 then
            FirstWin_Text1:SetText(NF_L0_TR307);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 308 then
            FirstWin_Text1:SetText(NF_L0_TR308);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 312 then
            FirstWin_Text1:SetText(NF_L0_TR312);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
    elseif Index == 4 then
        if math.mod(SubID, 1000) == 98 then
            FirstWin_Text1:SetText(glory401t .. "|cffF14187" .. ((SubID - 98)/1000) .. "|cFFFFFFFF" .. glory402t);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 495 then
            FirstWin_Text1:SetText(glory495t);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);            
        elseif SubID == 496 then
            FirstWin_Text1:SetText(glory496t);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 494 or SubID == 497 then
            FirstWin_Text1:SetText(glory497t);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 498 then
            FirstWin_Text1:SetText(glory498t);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 499 then
            FirstWin_Text1:SetText(glory499t);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
    end;
    if SubID >= 1000  or (math.mod(SubID,1000) >= 1 and math.mod(SubID,1000) <= 20 )then
        msg = {NF_L0_TR001,NF_L0_TR002,NF_L0_TR003,NF_L0_TR004,NF_L0_TR005,NF_L0_TR006,NF_L0_TR007,NF_L0_TR008,NF_L0_TR009,NF_L0_TR010,NF_L0_TR011,NF_L0_TR012}
        i = math.mod(SubID,1000)
        local Button = win:GetChild("FirstWin_Button" .. BtnID);
        Button:SetText(msg[i].. ((SubID - i)/1000) .. NF_L0_TR100);
	Button:SetTextFormat(0);
	if i <= 5 then
             Button:SetPosition(25,25+i*25)
	elseif i > 5  and i < 11 then
             Button:SetPosition(165,25+(i-5)*25)
        elseif i >=11 and i <=12 then 
             Button:SetPosition(25,40+(i-5)*25)
	end;
	Button:Visible(true);
	Button:Enable(false);
        UIAPI:SetChecked(false,Button);
        FirstWin_Text1:SetText(NF_L0_TR0001);
        FirstWin_Text1:Visible(true);
	NPCFUN:EndMessage(true);
        if SubID == 1000 then
            FirstWin_Text2:SetText(NF_L0_TR011.. 0 .. NF_L0_TR100);
            FirstWin_Text2:Visible(true);
            FirstWin_Text2:SetPosition(25,160)
        end;
    end;
end
        