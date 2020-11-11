--2009.11.6 tavia
--答题系统--
local uiapi = UIAPI
local win = nil
--win1
local answer_win = nil
local answer_subject = nil
local answer_text1 =nil
local answer_text2 = nil
local answer_text3 =nil
local answer_text4 = nil
local answer_title = nil
local answer_numb = nil
local answer_tipsnumb = nil
local answer_tipstext = nil
local answer_intext = nil
--win2
local result_win = nil
local result_btn = nil
local reward_btn = nil
local end_btn = nil
local result_title = nil
local result_content = nil
local result_tipsnumb = nil
local result_tipstext = nil
local result_intext = nil

--win3
local intro_win = nil
local intro_text1 = nil
local intro_text2 = nil
--win4
local top_win = nil
local top_name = {}
local top_score = {}

--答题按钮
local answer_mainBtn= nil
--变量
local  m_rand = 0
local  m_id = -1
local  m_numb = 0
local  m_type = 0
local  m_winType=0
local  m_minute = 0
local  m_count = 0
local randList = {}
local bBtnFlash = false;

--初始化
function Answer_OnLoad()
	win = uiapi:GetElement("AnswersSystemWin")
	answer_win = win:GetChild("AnswerWin")
	answer_subject = answer_win:GetChild("SubjectContent")
	answer_text1 = answer_win:GetChild("ChooiseContent1")
	answer_text2 = answer_win:GetChild("ChooiseContent2")
	answer_text3 = answer_win:GetChild("ChooiseContent3")
	answer_text4 = answer_win:GetChild("ChooiseContent4")
	answer_title =  answer_win:GetChild("Title")
	answer_tipsnumb =  answer_win:GetChild("TipsNumber")
	answer_tipstext =  answer_win:GetChild("TipsText")
	answer_numb =  answer_win:GetChild("Subject")
	answer_intext =  answer_win:GetChild("InText")

	result_win = win:GetChild("ResultWin")
	result_btn = result_win:GetChild("ResultButton")
	end_btn = result_win:GetChild("EndButton")
	reward_btn = result_win:GetChild("RewardButton")
	result_title =result_win:GetChild("Title1")
	result_content = result_win:GetChild("Result")
	result_tipsnumb =  result_win:GetChild("TipsNumber1")
	result_tipstext =  result_win:GetChild("TipsText1")
    result_intext =  result_win:GetChild("InText1")

	intro_win= win:GetChild("IntroWin")
	intro_text1 = intro_win:GetChild("IntroContent1")
	intro_text2 = intro_win:GetChild("IntroContent2")
	intro_text1:SetText(ANSWERSY_X0_4)
	intro_text2:SetText(ANSWERSY_X0_5)

	top_win	= win:GetChild("TopWin")
	for i = 1,10,1 do
		top_name[i] = top_win:GetChild("Player"..i)
		top_score[i] = top_win:GetChild("Score"..i)
	end
	top_score[11] = top_win:GetChild("CurrentScor2")

	--答题按钮
	skill_win = uiapi:GetElement("SkillUI")
	answer_mainBtn = skill_win:GetChild("Skill22")

	win:UpdateRenderBuffer();
end

--显示题目内容
function Answer_Content(type,id,numb,rand)
	m_rand = rand
	m_id = id
	m_numb = numb
	m_type = type

    local config = nil
	if type == 1 then
		config = GetNormalConfig(id)
	elseif type == 2 then
		config = GetContestConfig(id)
		m_minute = 30
	end

	if config == nil then
		return
	end
	answer_numb:SetText(AS_L0_028..numb..AS_L0_029);
	answer_subject:SetText(config.Description);

	local key = rand/1000
	key = string.format("%d",key)
	answer_text1:SetText(config[key]);
	randList[1] = key

	key = rand%1000/100
	key = string.format("%d",key)
	answer_text2:SetText(config[key]);
	randList[2] = key

	key = rand%100/10
	key = string.format("%d",key)
	answer_text3:SetText(config[key]);
	randList[3] = key

	key = rand%10
	key = string.format("%d",key)
	answer_text4:SetText(config[key]);
	randList[4] = key

	answer_win:Visible(true)
	result_win:Visible(false)

	if type == 1 then
		answer_title:Visible(false)
		answer_tipsnumb:Visible(false)
		answer_tipstext:Visible(false)
		answer_intext:Visible(false)
		intro_win:Visible(true)
		top_win:Visible(false)
		win:Visible(true)
	elseif type == 2 then
		answer_title:Visible(true)
		answer_tipsnumb:Visible(true)
		answer_tipstext:Visible(true)
		answer_intext:Visible(true)
		intro_win:Visible(false)
		top_win:Visible(true)
	end

end

--显示普通答题结果
function Answer_NResult(result,numb,exp,skillExp)
	--win:Visible(true)
	answer_win:Visible(false)
	result_win:Visible(true)
	result_title:Visible(false)
	--显示得到的奖励
	if result%2 == 1 then
		str = AS_L0_008..exp..AS_L0_009..skillExp..AS_L0_010.."\n"
	else
		str = AS_L0_011..exp..AS_L0_009..skillExp..AS_L0_010.."\n"
	end
	if result == 3 or result == 4 then
		str = str..AS_L0_012
	end
	result_content:SetText(str)

	if numb == 10 then
		result_btn:Visible(false)
		end_btn:Visible(true)
	else
		result_btn:Visible(true)
		end_btn:Visible(false)
	end
	reward_btn:Visible(false)
	result_tipsnumb:Visible(false)
	result_tipstext:Visible(false)
	result_intext:Visible(false)
	intro_win:Visible(true)
	top_win:Visible(false)
end

--显示竞赛答题结果
function Answer_CResult(result,numb,exp,skillExp,score)
	--win:Visible(true)
	answer_win:Visible(false)
	result_win:Visible(true)
	result_title:Visible(true)
	--显示得到的奖励
	local str = "exp="..exp..",".."skillExp="..skillExp.."score="..score

	if result%2 == 1 then
		str = AS_L0_013..score..AS_L0_014..exp..AS_L0_009..skillExp..AS_L0_010.."\n"
	else
		str = AS_L0_015..score..AS_L0_016..exp..AS_L0_009..skillExp..AS_L0_010.."\n"
	end

	result_content:SetText(str)

	result_btn:Visible(false)
	end_btn:Visible(false)
	reward_btn:Visible(false)
	if numb ~= 30 then
		result_tipsnumb:Visible(true)
		result_tipstext:Visible(true)
		result_intext:Visible(true)
	else
		result_tipsnumb:Visible(false)
		result_tipstext:Visible(false)
		result_intext:Visible(false)
	end
	intro_win:Visible(false)
	top_win:Visible(true)
end

function Answer_CResultText()
	answer_win:Visible(false)
	result_win:Visible(true)
	result_title:Visible(true)

	--20s内不出答案
	result_content:SetText(AS_L0_030)

	result_btn:Visible(false)
	end_btn:Visible(false)
	reward_btn:Visible(false)

	result_tipsnumb:Visible(true)
	result_tipstext:Visible(true)
    result_intext:Visible(true)

	intro_win:Visible(false)
	top_win:Visible(true)
end
--答题倒计时
function Answer_UpdateText(value) --每秒30次
	answer_tipsnumb:SetText(value)
	result_tipsnumb:SetText(value)
end

--显示还有几分钟才能开始答题
function Answer_Request(type,value)
	if type == 4 then
		if m_winType == 2 or m_winType == 3 then
			return
		end
	end
	m_winType = type

	--win:Visible(true)
	answer_win:Visible(false)
	result_win:Visible(true)
	result_title:Visible(false)

	if type == 4 then
		reward_btn:Visible(true)
	else
		reward_btn:Visible(false)
	end

	if type == 1 then
		if value <= 0 then
			str = AS_L0_027
		else
			str = AS_L0_017..value..AS_L0_018
		end
		intro_win:Visible(true)
		top_win:Visible(false)
	elseif type == 2 then
		if value == 0 then
			str = AS_L0_019
		else
			score = value/100
			score=string.format("%d",score)
			num = value%100
			str = AS_L0_020..num..AS_L0_021..score..AS_L0_022
		end
	elseif type == 3 then
		str = AS_L0_023
	elseif type == 4 then
		str = AS_L0_024..value..AS_L0_025
		str =str..AS_L0_026
	elseif type == 6 then
		win:Visible(false)
	end

	result_content:SetText(str)

	result_btn:Visible(false)
	end_btn:Visible(false)
	result_tipsnumb:Visible(false)
	result_tipstext:Visible(false)
	result_intext:Visible(false)
end

--显示排行榜
function Answer_List(numb,name,score)
	intro_win:Visible(false)
	top_win:Visible(true)

	if numb == 11 then
		top_score[11]:SetText(string.format("%.2f",score))
	else
		top_name[numb]:SetText(name)
		top_score[numb]:SetText(string.format("%.2f",score))
	end

end

--选中按钮答题
function Answer_Onclick(numb)
	local key = randList[numb]
	GameAPI:HaveAnswer(m_id,m_numb,key,m_type)

end

--继续答题
function AnswerGoOn_Onclick()
	GameAPI:RequestAnswer(1);
end

--结束答题
function AnswerEnd_Onclick()
	win:Visible(false)
end

--领取奖励
function AnswerReward_Onclick()
	GameAPI:RequestAnswer(2);
end

--显示答题
function Answer_Visible()
	win:Visible(not win:IsVisible())
end

--答题主按钮
function Answer_MianBtn()
	win:Visible(not win:IsVisible())
	if win:IsVisible() then
		GameAPI:RequestAnswer(1);
		bBtnFlash = false
	end
end


--按钮闪烁
function Answer_FlashTime()
	bBtnFlash = true
end

local num = 1;
local test = 255;
--按钮闪烁
function Answer_Update()
    test = test-17
    if bBtnFlash and (not win:IsVisible()) then
		if test<= 0 then
		    if num == 1 then
		        answer_mainBtn:SetTexturePos(438,551)
		        num = 0
		    else
		        answer_mainBtn:SetTexturePos(438,504)
			    num = 1
		    end
			test = 255
		end
    else
	    answer_mainBtn:SetTexturePos(438,504)
	end

end













