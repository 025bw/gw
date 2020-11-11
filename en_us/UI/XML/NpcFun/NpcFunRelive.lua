local win = UIAPI:GetElement("FirstWin");
--复活节
function NpcFunRelive_SetUI(Type,Index)
	
	strDesig = ""
	win:Visible(true);

end

function NpcFunRelive_SetText(Type,Index,BtnID,SubID)
	if Index== 1 then    ----第1个页面------
		if SubID == 101 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_RL_101);
			Button:SetPosition(25,160);
			Button:Visible(true);
		elseif SubID == 102 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_RL_102);
			Button:SetPosition(25,180);
			Button:Visible(true);
		elseif SubID == 103 then
			print(BtnID,SubID);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_RL_103);
			Button:SetPosition(25,200);
			Button:Visible(true);
			
		elseif SubID ==900 then
			FirstWin_Text1:SetText(NF_L0_RL_900);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);							
		elseif SubID ==901 then
			FirstWin_Text1:SetText(NF_L0_RL_901);
			FirstWin_Text1:Visible(true);
		end;

	elseif Index == 2 then	--第2个页面---------------------
		if SubID == 201 then
			FirstWin_ItemBtn1:Visible(true);
			FirstWin_ItemBtn1:SetPosition(120,125); 		    						
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_RL_201);
			Button:SetPosition(25,175);
			Button:Visible(true);						
			
		elseif SubID == 202 then					
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_RL_202);
			Button:SetPosition(25,110);
			Button:Visible(true);		
			
		elseif SubID ==902 then
			FirstWin_Text1:SetText(NF_L0_RL_902);
			FirstWin_Text1:Visible(true);		
			NPCFUN:EndMessage(true);			
		elseif SubID ==903 then
			FirstWin_Text1:SetText(NF_L0_RL_903);
			FirstWin_Text1:Visible(true);
			
		elseif SubID ==904 then
			FirstWin_Text1:SetText(NF_L0_RL_904);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==905 then
			FirstWin_Text1:SetText(NF_L0_RL_905);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			
		elseif SubID ==907 then  ---
			FirstWin_Text1:SetText(NF_L0_RL_907);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			
		elseif SubID ==912 then
			FirstWin_Text1:SetText(NF_L0_RL_912);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
			
		elseif 	math.mod(SubID ,1000)==1 then
			FirstWin_Text1:SetText(NF_L0_RL_915..((SubID-1)/1000)..NF_L0_RL_917);
			FirstWin_Text1:SetPosition(25,50);
			FirstWin_Text1:Visible(true);			
		elseif 	math.mod(SubID ,1000)==2 then
			FirstWin_Text2:SetText(NF_L0_RL_916..((SubID-2)/1000)..NF_L0_RL_917);
			FirstWin_Text2:SetPosition(25,70);
			FirstWin_Text2:Visible(true);
		end;

    elseif Index == 3 then	--第3个页面---------------------		
		if SubID ==902 then
			FirstWin_Text1:SetText(NF_L0_RL_902);
			FirstWin_Text1:Visible(true);		
			NPCFUN:EndMessage(true);			
		elseif SubID ==903 then
			FirstWin_Text1:SetText(NF_L0_RL_903);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==904 then
			FirstWin_Text1:SetText(NF_L0_RL_904);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==905 then
			FirstWin_Text1:SetText(NF_L0_RL_905);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==906 then
			FirstWin_Text1:SetText(NF_L0_RL_906);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==907 then
			FirstWin_Text1:SetText(NF_L0_RL_907);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==908 then
			FirstWin_Text1:SetText(NF_L0_RL_908);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==909 then
			FirstWin_Text1:SetText(NF_L0_RL_909);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==910 then
			FirstWin_Text1:SetText(NF_L0_RL_910);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==911 then
			FirstWin_Text1:SetText(NF_L0_RL_911);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==913 then
			FirstWin_Text1:SetText(NF_L0_RL_913);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);
		elseif SubID ==914 then
			FirstWin_Text1:SetText(NF_L0_RL_914);
			FirstWin_Text1:Visible(true);
			NPCFUN:EndMessage(true);		
		end;	
		
	end;
end
