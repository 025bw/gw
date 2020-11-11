--2009.04.23 tavia
--星座2期，技能培养的函数处理---
local uiapi=UIAPI
local mainWin = nil;
--local goldCheck = nil;
--local bindGoldCheck = nil;
--local Stone	= nil;
local text = nil;
local Index	= nil;

local   CONS_GIRD_ACTIVE	= 100;


--初始化
function SkillTrain_Init()
	mainWin = uiapi:GetElement("ActiveGirdWin");
	text = mainWin:GetChild("Text");
	--goldCheck = mainWin:GetChild("GoldCheck");
	--bindGoldCheck = mainWin:GetChild("BingdGoldCheck");
end
--点击格子激活按钮
function SkillTrain_ActiveGird(index)
	local lev = GameAPI:GetSKGirdAttr(index);
	if lev <= 0 then
		local gird = Get_SkillTrain_Config(index+1);
		local gold = gird.UnlockG;
		if gold <= 0 then
			GameAPI:ConsEventRequest(0,CONS_GIRD_ACTIVE,index,-1);
		else
			local str = ST_X0_1..gold.." "..I_X0_6;
			text:SetText(str);
			SkillTrain_Visible(index);
		end
	end
end
--选择金币还是绑定金币激活 面板
function SkillTrain_Visible(index)
	mainWin:Visible(true);
	mainWin:Top();
	Index = index;
	--uiapi:SetChecked(true,goldCheck);
	--uiapi:SetChecked(false,bindGoldCheck);
	--Stone=1;

end

function SkillTrain_GoldCheck()
 	--uiapi:SetChecked(false,bindGoldCheck);
	--Stone=1;
end

function SkillTrain_BindGoldCheck()

	--uiapi:SetChecked(false,goldCheck);
        --Stone=2;
end
--发送激活消息
function SkillTrain_OK()
	--判断是否满足条件
	--GameAPI:ConsEventRequest(0,CONS_GIRD_ACTIVE,Index,Stone);
	GameAPI:ConsEventRequest(0,CONS_GIRD_ACTIVE,Index,-1);
	mainWin:Visible(false);
end

function SkillTrain_Cancel()
	mainWin:Visible(false);
end

--发送升级消息
function SkillTrain_UpGradeGird(index)
	--判断是否满足条件

end

--提示格子激活成功，消耗物质多少
function SkillTrain_ActiveSucceed(index)
	local gird = Get_SkillTrain_Config(index+1);
	local gold = gird.UnlockG;
	local s = ST_X0_3.."\n";

	s = s..ST_X0_19..gold.." "..I_X0_6;
	GameAPI:AddPersonalMessage_UTF8(s,8,1);
end

--提示格子升级成功，消耗物质多少
function SkillTrain_UpGradeSucceed(index)
	local lev = GameAPI:GetSKGirdAttr(index);
	local gird = Get_SkillTrain_Config(index+1);

	local s = ST_X0_4.."\n"
	s = s..ST_X0_5..ST_X0_6..gird.UpdateE[lev-1].." ";
	s = s..ST_X0_7..gird.UpdateS[lev-1];
	GameAPI:AddPersonalMessage_UTF8(s,8,1);
end

--悬停显示
local Max_Lev = 30
function SkillTrain_OnHov(index)
	local lev = GameAPI:GetSKGirdAttr(index);
	local gird = Get_SkillTrain_Config(index+1);
	if gird == nil then
		local str = ST_X0_8
		uiapi:Helper(false,str,this:Instance());
		return;
	end
	if lev == 0 then
		local s = ST_X0_9..gird.UnlockG
		uiapi:Helper(false,s,this:Instance());
	else
		if index >=0 and index <= 3 then
		   s1 = ST_X0_10..gird.SkillEff[lev];
		   if lev < Max_Lev then
				s2 = ST_X0_10..gird.SkillEff[lev+1];
		   end
		elseif index >=4 and index <= 7 then
		   s1 = ST_X0_10..gird.SkillEff[lev]*100;
		   s1 = s1.."%";
			if lev < Max_Lev then
			   s2 = ST_X0_10..gird.SkillEff[lev+1]*100;
			   s2  =s2.."%";
		   end
		elseif index >=8 and index <= 11 then
		   s1 = ST_X0_11..gird.SkillEff[lev];
			if lev < Max_Lev then
			   s2 = ST_X0_11..gird.SkillEff[lev+1];
		   end
		else
		   s1 = ST_X0_11..gird.SkillEff[lev]*100;
		   s1 = s1.."%";
			if lev < Max_Lev then
			   s2 = ST_X0_11..gird.SkillEff[lev+1]*100;
			   s2 = s2.."%";
		   end

		end

		local s = ST_X0_12..lev.."/30".."\n";
		s = s..s1.."\n";
		s = s..ST_X0_13..gird.MP[lev].."\n"
		if lev < Max_Lev then
			s = s..ST_X0_14.."\n"..s2.."\n"..ST_X0_13..gird.MP[lev+1].."\n"
			s = s..ST_X0_15.."\n"..ST_X0_16..gird.UpdateE[lev].."\n"..ST_X0_17..gird.UpdateS[lev].."\n"..ST_X0_18..gird.Starlv[lev];
		end
		uiapi:Helper(false,s,this:Instance());
	end

end

function SkillTrain_OnLeft()
	uiapi:Helper();
end




