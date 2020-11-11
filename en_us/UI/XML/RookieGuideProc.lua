--2009.6.1 tavia
--新手引导---
-- ui
local uiapi=UIAPI
local win = nil;--主窗体

local type_win = nil;--类型窗体
local type_list = nil;--类型Listbox
local quest_win = nil;--任务窗体
local quest_list = nil;--任务Listbox
local quest_win_title = nil; --任务列表标题

local type_detail_win = nil;--类型描述窗体
local type_detail_title = nil;--类型描述标题
local type_detail_content = nil;--类型描述内容

local quest_detail_win = nil;--任务描述窗体
local quest_detail_title = nil;--任务描述标题
local quest_detail_desc = nil;--任务描述内容
local quest_detail_guide = nil;--任务描述指南
local quest_detail_target = nil;--任务描述目标
local quest_detail_reward = nil;--任务描述奖励

local win_minimap = nil;
local rookie_btn = nil;
local bBtnFlash = false;
local Alphi = 255;
local m_questID = 0;
--功能ID
local	QUEST_SYN		= 1;
local	QUEST_ADD		= 2;
local	QUEST_COM	    	= 3;
local	QUEST_DEL	    	= 4;

--数据
local player_quest_table = {}
local player_type_table = {}

--初始化
function RookieGuide_OnLoad()
    win = uiapi:GetElement("RookieGuideWin");
    type_win = win:GetChild("GodGuideWin");
	quest_win = win:GetChild("GuideQuestWin");
	type_list = type_win:GetChild("ListBox");
	quest_list = quest_win:GetChild("ListBox");
	quest_win_title = quest_win:GetChild("GuideQuest");

    type_detail_win = win:GetChild("TypeDetailWin");
    type_detail_title = type_detail_win:GetChild("Title");
    type_detail_content = type_detail_win:GetChild("GuideDescribe");

    quest_detail_win = win:GetChild("QuestDetailWin");
    quest_detail_title = quest_detail_win:GetChild("Title");
    quest_detail_desc = quest_detail_win:GetChild("QuestDescribeText");
    quest_detail_guide = quest_detail_win:GetChild("QuestGuideText");
    quest_detail_target = quest_detail_win:GetChild("QuestInfoText");
    quest_detail_reward = quest_detail_win:GetChild("QuestEncourText");

	win_minimap = uiapi:GetElement("MapWinBack");
	rookie_btn = win_minimap:GetChild("RookieBtn");

	win:UpdateRenderBuffer();
end

--此函数提供给C++接口调用
function RookieGuideMsg(sid,value)
	if sid == QUEST_SYN then
		RookieGuide_AddQuest(value,true)
	elseif sid == QUEST_ADD then
		RookieGuide_AddQuest(value,false)
	elseif sid == QUEST_COM then
		RookieGuide_DelQuest(value,true)
	elseif sid == QUEST_DEL then
		RookieGuide_DelQuest(value,false)
	end

end
--增加一个任务
function RookieGuide_AddQuest(value,IsSyn)

	local t = Get_RookieGuide_Cofig(value)
	type = t.TypeID
	if player_quest_table[type] ==nil  then
		player_quest_table[type] = {}
		table.insert(player_quest_table[type],value)
		table.insert(player_type_table,type)
		table.sort(player_type_table)
	else
		table.insert(player_quest_table[type],value)
		table.sort(player_quest_table[type])

	end

	item = uiapi:AddItem("T_ListItem" , quest_list);
	text = uiapi:AddText("T_ListItemText3" , item);
	text:SetText(t.Name);

	RookieGuide_UpdateType()
	type1= player_type_table[1]
	RookieGuide_UpdateQuest(type1)

	if IsSyn == false then
		local str = RGP_L0_1
		str = str..t.Name
		GameAPI:AddPersonalMessage_UTF8(str,2,1)
		GameAPI:AddSystemMessage_UTF8(str,1)
		
		bBtnFlash =true
	end

end
--删除一个任务
function RookieGuide_DelQuest(value,isComplete)
	local t = Get_RookieGuide_Cofig(value)
	type = t.TypeID

	for k,v in pairs(player_quest_table[type]) do
		if v == value then
			table.remove(player_quest_table[type],k)

			if #player_quest_table[type] == 0 then
				--如果删除空了。则把类型也删除
				for k1,v1 in pairs (player_type_table) do
					if v1 == type then
						table.remove(player_type_table,k1)
					end
				player_quest_table[type] = nil

				end
			end
		end

	end

	RookieGuide_UpdateType()
	type1= player_type_table[1]
	RookieGuide_UpdateQuest(type1)

	if isComplete then
		local strCom= RGP_L0_2
		strCom = strCom..t.Name
		GameAPI:AddPersonalMessage_UTF8(strCom,2,3)
		GameAPI:AddSystemMessage_UTF8(strCom,3)

		strCom = RGP_L0_3
		strCom = strCom..t.Reward
		GameAPI:AddPersonalMessage_UTF8(strCom,2,1)
		GameAPI:AddSystemMessage_UTF8(strCom,1)

	else
		local strCom= RGP_L0_4
		strCom = strCom..t.Name
		GameAPI:AddPersonalMessage_UTF8(strCom,2,2)
		GameAPI:AddSystemMessage_UTF8(strCom,2)
	end
end
--选中类型
function RookieGuide_TypeOnSelect()
	index = uiapi:GetActiveList(type_list)
	type= player_type_table[index+1]

	t = Get_RookieGuideType_Cofig(type)

	type_detail_title:SetText(t.TypeName)
	type_detail_content:SetText(t.Description)
	type_detail_win:Visible(true)
	quest_detail_win:Visible(false)
	--刷新quest_list
	RookieGuide_UpdateQuest(type)

end
--选择任务
function RookieGuide_QuestOnSelect()
	index = uiapi:GetActiveList(quest_list)
	index1 = uiapi:GetActiveList(type_list)
	type= player_type_table[index1+1]

	questID = player_quest_table[type][index+1]

	quest_detail_title:SetText(Get_RookieGuide_Cofig(questID).Name)

	quest_detail_desc:SetText(Get_RookieGuide_Cofig(questID).Description)
	quest_detail_guide:SetText(Get_RookieGuide_Cofig(questID).Guide)
	quest_detail_target:SetText(Get_RookieGuide_Cofig(questID).Aim)
	quest_detail_reward:SetText(Get_RookieGuide_Cofig(questID).Reward)

	type_detail_win:Visible(false)
	quest_detail_win:Visible(true)
end
--删除任务按钮点击事件
function RookieGuide_DeleteClick()
	local b = LuaMessageBox_GetVisible()
	if b then--如果对话框已打开，不做任何操作
		return
	end
	local index = uiapi:GetActiveList(quest_list)
	if index < 0 then
		GameAPI:AddPersonalMessage_UTF8(RGP_L0_6 ,2,2)
		GameAPI:AddSystemMessage_UTF8(RGP_L0_6 ,2)
		return
	end
	local index1 = uiapi:GetActiveList(type_list)
	local type= player_type_table[index1+1]

	local questID = player_quest_table[type][index+1]
	m_questID = questID

	local strName = Get_RookieGuide_Cofig(questID).Name

	local str =RGP_L0_5 .."->"..strName.." ?"
	LuaMessageBox_Visible(str,LUA_MESSAGEBOX_ROOKIE)
end
--完成任务按钮点击事件
function RookieGuide_CompleteClick()
	local index = uiapi:GetActiveList(quest_list)
	if index < 0 then
		GameAPI:AddPersonalMessage_UTF8(RGP_L0_6 ,2,2)
		GameAPI:AddSystemMessage_UTF8(RGP_L0_6 ,2)
		return
	end
	local index1 = uiapi:GetActiveList(type_list)
	local type= player_type_table[index1+1]

	local questID = player_quest_table[type][index+1]

	GameAPI:RequestCompleteRookie(questID)
end
--对话框确定
function RookieGuide_OK()
	GameAPI:DelRookie(m_questID);
end

--重新刷新
function RookieGuide_UpdateType()
	uiapi:ClearItem(type_list)

	for k,v in pairs(player_type_table) do
		if v ~= nil  then
			t = Get_RookieGuideType_Cofig(v)

			item = uiapi:AddItem("T_ListItem" , type_list);
			text = uiapi:AddText("T_ListItemText3" , item);
			text:SetText(t.TypeName);

		end
	end
	if  #player_type_table ~= 0 then
		uiapi:ActiveList(0 , type_list)
		type= player_type_table[1]
		t = Get_RookieGuideType_Cofig(type)

		type_detail_title:SetText(t.TypeName)
		type_detail_content:SetText(t.Description)
	end
	type_detail_win:Visible(true)
	quest_detail_win:Visible(false)

end
--重新刷新
function RookieGuide_UpdateQuest(type)
	uiapi:ClearItem(quest_list)

	t = Get_RookieGuideType_Cofig(type)
	quest_win_title:SetText(t.TypeName)

	for k,v in pairs(player_quest_table[type]) do
		if player_quest_table[type][k] ~= nil then
			t = Get_RookieGuide_Cofig(v)
			item = uiapi:AddItem("T_ListItem" , quest_list);
			text = uiapi:AddText("T_ListItemText3" , item);
			text:SetText(t.Name);
		end
	end
	uiapi:ActiveList(-1 , quest_list)

end

local num = 1;
local test = 255;
function RookieBtn_Update()
    test = test-17
    if bBtnFlash then
		if test<= 0 then
		    if num == 1 then
		        rookie_btn:SetTexturePos(381,473)
		        num = 0
		    else
		        rookie_btn:SetTexturePos(381,441)
			    num = 1
		    end
			test = 255
		end
    else
	    rookie_btn:SetTexturePos(381,441)	
	end
end

function RookieBtn_SetFlash(b)
	bBtnFlash  = b

end
--test
--RookieGuide_OnLoad()




