local win = UIAPI:GetElement("FirstWin");
--批量道具使用
function NpcFunBatch_SetUI(Type,Index)
    FirstWin_ButtonA1:Visible(true);
    FirstWin_ButtonA2:Visible(true);
    win:Visible(true);

end
function  NpcFunBatch_SetText(Type,Index,BtnID,SubID)
    if Index == 1 then---第一个页面
        if SubID == 100 then
            FirstWin_Text1:SetText(NF_L0_BATCH100T);
            FirstWin_Text1:Visible(true);
            FirstWin_ItemBtn1:Visible(true);
            FirstWin_ItemBtn1:SetPosition(50,120);
            InputText1:Visible(true);
            Input11:Visible(true);
            Input12:Visible(true);
            Input13:Visible(true);
            Input11:SetPosition(158,130);
            Input12:SetPosition(150,130);
            Input13:SetPosition(252,130);
            InputText1:SetPosition(154,131);
    end;
    elseif Index == 2 then    ----第二个页面
        if SubID == 299 then
            FirstWin_Text1:SetText(NF_L0_BATCH299T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 298 then
            FirstWin_Text1:SetText(NF_L0_BATCH298T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 297 then
            FirstWin_Text1:SetText(NF_L0_BATCH297T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        elseif SubID == 211 then
            FirstWin_Text1:SetText(NF_L0_BATCH211T);
            FirstWin_Text1:Visible(true);
            NPCFUN:EndMessage(true);
        end;
    end;
end
