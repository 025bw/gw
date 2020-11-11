local win = UIAPI:GetElement("FirstWin");
local tex={};
local BtnNum =nil;
--节日礼物
function NpcFunGift_SetUI(Type,Index)
    FirstWin_ButtonA1:SetPosition(145,500);
    FirstWin_ButtonA2:SetPosition(220,500);
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
    win:Visible(true);

end

function NpcFunGift_SetText(Type,Index,BtnID,SubID)
    if Index == 1 then
        if SubID == 1 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_GIFTX);
            Button:Visible(true);
        elseif SubID == 2 then
            FirstWin_Text1:SetText(NF_L0_GIFT1);
            FirstWin_Text1:Visible(true);
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_GIFT2);
            Button:Visible(true);
        elseif SubID == 3 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_GIFT3);
            Button:Visible(true);
        elseif SubID == 4 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_GIFT4);
            Button:Visible(true);
        elseif SubID == 5 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_GIFT5);
            Button:Visible(true);
        end;
    elseif Index == 2 then
        if SubID == 100 then
            FirstWin_Text1:SetText(NF_L0_GIFT100);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
        elseif SubID == 500 then
            FirstWin_Text1:SetText(NF_L0_MRI3200);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
        elseif SubID == 505 then
            FirstWin_Text1:SetText(NF_L0_GIFT505);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
        elseif SubID % 1000 ==1 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_GIFT107 .. ((SubID-1)/1000));
            Button:Visible(true);
            Button:Enable(false);
            UIAPI:SetChecked(false,Button);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
        elseif SubID % 1000 ==2 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_GIFT108 .. ((SubID-2)/1000));
            Button:Visible(true);
            Button:Enable(false);
            UIAPI:SetChecked(false,Button);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
    elseif math.mod(SubID ,1000) ==3 then
        if (SubID-3)/1000 >=51 then
            tex = {NF_L0_YD100,NF_L0_YD101,NF_L0_YD102,NF_L0_YD103,NF_L0_YD104,NF_L0_YD105,NF_L0_YD106,NF_L0_YD107,NF_L0_YD108,NF_L0_YD109};
            if (SubID-3)/1000 >=51 and  (SubID-3)/1000 <=105 then
                BtnNum = tex[math.floor((SubID-3)/10000)-4];
                if math.mod(((SubID-3)/1000),10) == 0 then
                    BtnNum = tex[math.floor((SubID-3)/10000)-5]
                end;
                elseif  (SubID-3)/1000 >=106 and  (SubID-3)/1000 <=110 then
                    BtnNum = tex[7]
                elseif  (SubID-3)/1000 >=111 and  (SubID-3)/1000 <=120 then
                    BtnNum = tex[8]
                elseif  (SubID-3)/1000 >=121 and  (SubID-3)/1000 <=130 then
                    BtnNum = tex[9]
                elseif  (SubID-3)/1000 >=131 and  (SubID-3)/1000 <=140 then
                    BtnNum = tex[10]
                end;
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(BtnNum);
            Button:Visible(true);
            Button:Enable(false);
            UIAPI:SetChecked(false,Button);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
            end;
        elseif math.mod(SubID ,1000) ==4 then
            if (SubID-4)/1000 >=51 then
                tex = {NF_L0_SP100,NF_L0_SP101,NF_L0_SP102,NF_L0_SP103,NF_L0_SP104,NF_L0_SP105,NF_L0_SP106,NF_L0_SP107,NF_L0_SP108,NF_L0_SP109};
                if (SubID-4)/1000 >=51 and  (SubID-4)/1000 <=105 then
                    BtnNum = tex[math.floor((SubID-4)/10000)-4];
                    if math.mod(((SubID-4)/1000),10) == 0 then
                        BtnNum = tex[math.floor((SubID-4)/10000)-5]
                    end;
                    elseif  (SubID-4)/1000 >=106 and  (SubID-4)/1000 <=110 then
                        BtnNum = tex[7]
                    elseif  (SubID-4)/1000 >=111 and  (SubID-4)/1000 <=120 then
                        BtnNum = tex[8]
                    elseif  (SubID-4)/1000 >=121 and  (SubID-4)/1000 <=130 then
                        BtnNum = tex[9]
                    elseif  (SubID-4)/1000 >=131 and  (SubID-4)/1000 <=140 then
                        BtnNum = tex[10]
                    end;
                local Button = win:GetChild("FirstWin_Button" .. BtnID);
                Button:SetText(BtnNum);
                Button:Visible(true);
                Button:Enable(false);
                UIAPI:SetChecked(false,Button);
                NPCFUN:EndMessage(true);
                NPCFUN:NeedMessage(False);
                end;
        elseif SubID == 101 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_GIFT101);
            Button:Visible(true);
            Button:Enable(false);
            UIAPI:SetChecked(false,Button);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
        elseif SubID == 1101 then
            FirstWin_Text2:SetText(NF_L0_GIFT312);
            FirstWin_Text2:SetPosition(105,160);
            FirstWin_Text2:Visible(true);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
        elseif SubID >= 200 and SubID <= 215 then
            tex = {NF_L0_GIFT200,NF_L0_GIFT201,NF_L0_GIFT202,NF_L0_GIFT203,NF_L0_GIFT204,NF_L0_GIFT205,NF_L0_GIFT206,NF_L0_GIFT207,NF_L0_GIFT208,NF_L0_GIFT209,NF_L0_GIFT210,NF_L0_GIFT211,NF_L0_GIFT212,NF_L0_GIFT213,NF_L0_GIFT214,NF_L0_GIFT200};
            BtnNum = tex[SubID-199];
            FirstWin_Text1:SetText(BtnNum);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
        elseif SubID >= 300 and SubID <= 315 then
            tex = {NF_L0_GIFT300,NF_L0_GIFT301,NF_L0_GIFT302,NF_L0_GIFT303,NF_L0_GIFT304,NF_L0_GIFT305,NF_L0_GIFT306,NF_L0_GIFT307,NF_L0_GIFT308,NF_L0_GIFT309,NF_L0_GIFT310,NF_L0_GIFT311,NF_L0_GIFT312,NF_L0_GIFT313,NF_L0_GIFT314,NF_L0_GIFT300};
            BtnNum = tex[SubID-299];
            FirstWin_Text1:SetText(BtnNum);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
        elseif SubID == 111 then
            FirstWin_Text1:SetText(NF_L0_GIFT111);
            FirstWin_Text1:SetPosition(40,140);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
        elseif SubID == 102 then
            FirstWin_Text1:SetText(NF_L0_GIFT102);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
        elseif SubID == 103 then
            FirstWin_Text1:SetText(NF_L0_GIFT103);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
        elseif SubID == 105 then
            FirstWin_Text1:SetText(NF_L0_GIFT105);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
        elseif SubID == 106 then
            FirstWin_Text1:SetText(NF_L0_GIFT106);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
        elseif SubID == 109 then
            FirstWin_Text1:SetText(NF_L0_GIFT109);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
        elseif SubID == 501 then
            local Button = win:GetChild("FirstWin_Button" .. BtnID);
            Button:SetText(NF_L0_GIFT501);
            Button:Visible(true);
            Button:SetPosition(25,125);
        elseif SubID == 502 then
            FirstWin_Text1:SetText(NF_L0_GIFT502);
            FirstWin_Text1:Visible(true);
        end;
    elseif Index == 3 then
        if SubID == 511 then
            FirstWin_Text1:SetText(NF_L0_GIFT511);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
        elseif SubID == 512 then
            FirstWin_Text1:SetText(NF_L0_GIFT512);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
        elseif SubID == 513 then
            FirstWin_Text1:SetText(NF_L0_GIFT513);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
            NPCFUN:NeedMessage(False);
        end;
    end;
end;
