local win = UIAPI:GetElement("FirstWin");

function NpcFunGuardwar_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
		if math.mod(SubID ,100) == 11 then
                        FirstWin_Text2:SetText(NF_L0_WS1 .. (SubID-11)/100 .. NF_L0_WS0);
                        FirstWin_Text2:Visible(true);
                        FirstWin_Text2:SetPosition(25,50)
		elseif math.mod(SubID ,100) == 21 then
                        FirstWin_Text1:SetText(NF_L0_WS2 .. (SubID-21)/100 .. NF_L0_WS0);
                        FirstWin_Text1:Visible(true);
                elseif math.mod(SubID ,100) == 31 then
                        FirstWin_Text3:SetText(NF_L0_WS3 .. ((SubID-31)/100-1) .. NF_L0_WS0);
                        FirstWin_Text3:Visible(true);
                        FirstWin_Text3:SetPosition(25,70)
		end;
	NPCFUN:EndMessage(true);
	end;
end
