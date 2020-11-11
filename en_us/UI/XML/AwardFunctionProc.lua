--2009.12.6 tavia
--时间奖励--
local uiapi = UIAPI
local win = nil
local index= 0
local count = 0
local isVisible = true

--关闭新手物品
function AwardsDraw_Close()
	local winClue = uiapi:GetElement("AwardsClue")
	local winDraw = uiapi:GetElement("AwardsDraw")
	local winDraw1 = uiapi:GetElement("AwardsDraw1")

	winDraw:Visible(false)
	winDraw1:Visible(false)
	local b = GameAPI:GetNewCureVisible()
	winClue:Visible(b)
end
--显示新手物品
function AwardsDraw_Visible()
	local winClue = uiapi:GetElement("AwardsClue")
	local winDraw = uiapi:GetElement("AwardsDraw")
	local winDraw1 = uiapi:GetElement("AwardsDraw1")

	local skill_win = uiapi:GetElement("SkillUI")
	local skill_btn = skill_win:GetChild("Skill23")

	winDraw:Visible(true)
	winDraw1:Visible(false)
	winClue:Visible(false)
	skill_btn:Visible(false)
end

--关闭新手物品窗口
function AwardsClue_Close()
	local winClue = uiapi:GetElement("AwardsClue")
	local skill_win = uiapi:GetElement("SkillUI")
	local skill_btn = skill_win:GetChild("Skill23")

	winClue:Visible(false)
	skill_btn:Visible(true)
end

function AClue_Visable()
	local winClue = uiapi:GetElement("AwardsClue")
	local skill_win = uiapi:GetElement("SkillUI")
	local skill_btn = skill_win:GetChild("Skill23")
	winClue:Visible(true)
	skill_btn:Visible(false)
end

--关闭周物品
function AwardsDraw1_Close()
	local winClue = uiapi:GetElement("AwardsClue")
	local winDraw = uiapi:GetElement("AwardsDraw")
	local winDraw1 = uiapi:GetElement("AwardsDraw1")

	winDraw:Visible(false)
	winDraw1:Visible(false)
	local b = GameAPI:GetNewCureVisible()
	winClue:Visible(b)
end

--答题周物品
function AwardsDraw1_Visible()
	local winClue = uiapi:GetElement("AwardsClue")
	local winDraw = uiapi:GetElement("AwardsDraw")
	local winDraw1 = uiapi:GetElement("AwardsDraw1")

	winDraw:Visible(false)
	winDraw1:Visible(true)
	winClue:Visible(false)

	local win = uiapi:GetElement("SkillUI")
	local btn = win:GetChild("AwardsBtn")

	btn:SetTexturePos(49,440+45*2);
	isVisible = true
end

--周奖励按钮闪烁
function AwardsDraw1_Update()
	local win = uiapi:GetElement("SkillUI")
	local btn = win:GetChild("AwardsBtn")
	count = count+1
	if btn:IsVisible() and count > 15 and isVisible then
		index = index+1
		if index >= 4 then
			index = 0;
		end
		count = 0
		btn:SetTexturePos(49,440+45*index);
	end

end
--周奖励按钮悬停
function AwardsDraw1_OnHovered()
	local win = uiapi:GetElement("SkillUI")
	local btn = win:GetChild("AwardsBtn")

	btn:SetTexturePos(49,440+45*1);
	isVisible = false
end
--周奖励按钮悬停离开
function AwardsDraw1_OnLeft()
	local win = uiapi:GetElement("SkillUI")
	local btn = win:GetChild("AwardsBtn")

	btn:SetTexturePos(49,440+45*0);
	isVisible = true
end
--周奖励的显示
function AwardsDraw1_Select(type)
	local win = uiapi:GetElement("SkillUI")
	local btn = win:GetChild("AwardsBtn")
	local btn1 = win:GetChild("AwardsBtn1")

	if type == 1 then
		btn:Visible(false)
		btn1:Visible(false)
	elseif type == 2 then
		btn:Visible(true)
		btn1:Visible(false)
	elseif type == 3 then
		btn:Visible(false)
		btn1:Visible(true)
	end
end











