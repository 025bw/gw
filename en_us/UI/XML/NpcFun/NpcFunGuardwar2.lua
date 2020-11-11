local win = UIAPI:GetElement("FirstWin");
local textlis ={}
--传送
function NpcFunGuardwar2_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end
--配置UI窗体信息生成自己想要的界面
function NpcFunGuardwar2_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
		if math.mod(SubID,100) == 1 then
			FirstWin_Text1:SetText(NF_L0_THWAR10001 .. ((SubID - 1)/100));
			FirstWin_Text1:Visible(true);	
			FirstWin_Text1:SetPosition(25,70)
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID,100) == 2 then
			FirstWin_Text2:SetText(NF_L0_THWAR10002 .. ((SubID - 2)/100));
			FirstWin_Text2:Visible(true);	
			FirstWin_Text2:SetPosition(25,100)
			NPCFUN:EndMessage(true);
		elseif math.mod(SubID,100) == 3 then
			FirstWin_Text3:SetText(NF_L0_THWAR10003 .. ((SubID - 3)/100));
			FirstWin_Text3:Visible(true);	
			FirstWin_Text3:SetPosition(25,130)
			NPCFUN:EndMessage(true);
		end;
	end;
end