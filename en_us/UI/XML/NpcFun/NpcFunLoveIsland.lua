local tex={}
local win = UIAPI:GetElement("FirstWin");
--采集地
function NpcFunLoveIsland_SetUI(Type,Index)
	FirstWin_ButtonA1:Visible(true);
	FirstWin_ButtonA2:Visible(true);
	win:Visible(true);

end
--配置UI窗体信息生成自己想要的界面
function NpcFunLoveIsland_SetText(Type,Index,BtnID,SubID)
	if Index == 1 then
		if SubID == 1001 then
			FirstWin_Text1:SetText(NF_L0_LI100);
            		FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_LI1001);
			Button:Visible(true);
		elseif SubID == 1002 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_LI1002);
			Button:Visible(true);
		elseif SubID == 1003 then
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(NF_L0_LI1003);
			Button:Visible(true);
                end;
	elseif Index == 2 then
                tex = {[101]= NF_L0_LI101,[102]= NF_L0_LI102,[103]= NF_L0_LI103, [104]= NF_L0_LI104,[105]= NF_L0_LI105,[201]= NF_L0_LI201,[202]= NF_L0_LI202,[203]= NF_L0_LI203,[204]= NF_L0_LI204,[205]= NF_L0_LI205,[301]= NF_L0_LI301,[302]= NF_L0_LI302,[303]= NF_L0_LI303,[304]= NF_L0_LI304,[305]= NF_L0_LI305}
		if (SubID >=101 and SubID <=105 ) or (SubID >=201 and SubID <=205 ) or (SubID >=301 and SubID <=305 ) then
			FirstWin_Text1:SetText(NF_L0_LI100);
            		FirstWin_Text1:Visible(true);
			local Button = win:GetChild("FirstWin_Button" .. BtnID);
			Button:SetText(tex[SubID]);
			Button:Visible(true);
		end;
	end;
end