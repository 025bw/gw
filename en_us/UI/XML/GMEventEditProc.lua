--2009.1.3 tavia
--给GM用的：活动信息输入处理---

local uiapi=UIAPI
local win = nil;
local container = nil;--容器
local multi_edit = nil;--活动主要内容

local listBox = {};--1:本日活动列表,2:重要公告列表,3:本周活动列表,4:成长指南列表
local editBox = {}; --编辑框
local list_count = {};--本日活动的编辑框数量
local listItem_info = {};

local m_flags = -1;--1:DayList,2:ProList,3:WeekList,4:GuideList
local m_index = -1;

--动态加载列表
local cur_index = -1;

------------------Ex
local win_ex = nil;
local ex_text = nil
local ex_time = nil
local ex_link = nil
local ex_npcAddr = {}
local ex_npcName= {}
local ex_dayTime= {}

--加载控件
function GMEventEdit_OnLoad()
	win = uiapi:GetElement("GMEventEditWin");

	for i = 1,4,1 do
		listBox[i] = uiapi:GetElement(480000+i*100);
		list_count[i] = uiapi:GetListCount(listBox[i]);
		listItem_info[i] = {}

	end
	for i = 1,4,1 do
		editBox[i] = {}
		for j=0,list_count[i]-1,1 do
			editBox[i][j] = uiapi:GetElement(480000+i*100+j+1);
		end
	end
	print ("GMEventEdit_OnLoad()")

	container = uiapi:GetElement(480900);
	multi_edit = uiapi:GetElement(480901);

	win:UpdateRenderBuffer();
	this:RegisterEvent(EUSER_EVENT_LOADGMEVENTINFO , "GMEventInfo_Load()");
end
--加载控件
function GMEventEditEx_OnLoad()
	win_ex = uiapi:GetElement("GMEventEditExWin");
	ex_text = win_ex:GetChild("EventNameText");
	ex_time = win_ex:GetChild("TimeEdit_Box");
	ex_link = win_ex:GetChild("LinkEdit_Box");
	for i =1,4,1 do
		ex_npcAddr[i] = uiapi:GetElement(480810+i);
		ex_npcName[i] = uiapi:GetElement(480820+i);
		ex_dayTime[i] = uiapi:GetElement(480830+i);
	end

	win_ex:UpdateRenderBuffer();
end

--初始化
function GMEventEdit_Init()
	m_flags = -1;
	m_index = -1;
	multi_edit:SetText("");
	for i = 1,4,1 do
		uiapi:ActiveList(-1,listBox[i]);
	end
end
--清空
function GMEventEdit_Clear(id)
	m_flags = -1;
	m_index = -1;
	multi_edit:SetText("");

	for j=0,list_count[id]-1,1 do
		editBox[id][j]:SetText("");
	end

	uiapi:ActiveList(-1,listBox[id]);
	listItem_info[id] = {}

end

--列表选择事件
function GMListBox_OnSelected(id)
	--保存当前的文本
	if m_flags >= 0 then
		if listItem_info[m_flags][m_index] == nil then
			listItem_info[m_flags][m_index] ={}
		end
		listItem_info[m_flags][m_index].Content = multi_edit:GetText();
	end

	multi_edit:SetText("");
	m_flags = id;
	m_index = uiapi:GetActiveList(listBox[id]);

	--读取保存的文本
	if listItem_info[m_flags][m_index] then
		text = listItem_info[m_flags][m_index].Content;
		multi_edit:SetText(text);
	end

	for i = 1,4,1 do
		if i ~= m_flags then
			uiapi:ActiveList(-1,listBox[i]);
		end
	end

	container:Auto();
end
--读取今日活动的列表相关内容
function GMSend_Event(id)
	--Flags:1:表示开始，2表示结束，3,表示既是开始又是结束，其它的为0
	print("type= ",id)
	for i = 0, list_count[id] -1 ,1 do
		local strName = editBox[id][i]:GetText();
		local strNext = ""
		if i+1<  list_count[id] -1 then
			 strNext= editBox[id][i+1]:GetText();
		end

		if strName ~= "" then
			if listItem_info[id][i] == nil then
				listItem_info[id][i] ={}
			end
			listItem_info[id][i].Name = strName


			if i == 0 then
				if strNext == "" then
					listItem_info[id][i].Flags = 3;
				else
					listItem_info[id][i].Flags = 1;
				end
			else
				if strNext == "" then
					listItem_info[id][i].Flags = 2;
				else
					listItem_info[id][i].Flags = 0;
				end
			end

			listItem_info[id][i].Type = id;

		end

		GameAPI:SetEventInfo(listItem_info[id][i]);

	end

end

--GM信息发送
function GMSend_OnClick(id)
	if id == 1 then
		GMSend_Event(1)
	elseif id == 2 then
		GMSend_Event(2)
	elseif id == 3 then
		GMSend_Event(3)
	elseif id == 4 then
		GMSend_Event(4)

	end

	--GMEventEdit_Init();
	uiapi:Message("发送成功！");

end
--多行编辑框失去焦点时，保存数据
function GMMultiEdit_OnLeft()
	--保存当前的文本
	if   m_flags >= 0  then
		if listItem_info[m_flags][m_index] == nil then
			listItem_info[m_flags][m_index] ={}
		end
		listItem_info[m_flags][m_index].Content = multi_edit:GetText();
	end

end
--动态更新活动信息
function GMEventInfo_Load()
	local Flags,Type,Time,Name,Link,Content,AutoName1,AutoAddr1,AutoName2,AutoAddr2,AutoName3,AutoAddr3,AutoName4,AutoAddr4,DayTimeID,DayTime1,DayTime2,DayTime3 = GameAPI:GetEventInfo();

	if Flags == 1 or Flags == 3 then
		GMEventEdit_Clear(Type);
		cur_index = 0
	end

	editBox[Type][cur_index]:SetText(Name);

	if   Type >= 0  then
		if listItem_info[Type][cur_index] == nil then
			listItem_info[Type][cur_index] ={}
		end
		listItem_info[Type][cur_index].Flags = Flags
		listItem_info[Type][cur_index].Type = Type
		listItem_info[Type][cur_index].Time = Time
		listItem_info[Type][cur_index].Name = Name
		listItem_info[Type][cur_index].Link = Link
		listItem_info[Type][cur_index].Content = Content

		listItem_info[Type][cur_index].AutoName1 = AutoName1
		listItem_info[Type][cur_index].AutoAddr1 = AutoAddr1
		listItem_info[Type][cur_index].AutoName2 = AutoName2
		listItem_info[Type][cur_index].AutoAddr2 = AutoAddr2
		listItem_info[Type][cur_index].AutoName3 = AutoName3
		listItem_info[Type][cur_index].AutoAddr3 = AutoAddr3
		listItem_info[Type][cur_index].AutoName4 = AutoName4
		listItem_info[Type][cur_index].AutoAddr4 = AutoAddr4
		listItem_info[Type][cur_index].DayTimeID = DayTimeID
		listItem_info[Type][cur_index].DayTime1 = DayTime1
		listItem_info[Type][cur_index].DayTime2 = DayTime2
		listItem_info[Type][cur_index].DayTime3 = DayTime3

		cur_index = cur_index +1;
	end
end
--动态更新活动信息
function GMEventInfo_OnLoad(id)
	GameAPI:LoadGMEventInfo(id);

end
--设置活动GM编辑窗体是否可见
function GMEventInfo_OnClick()
	win:Visible(not win:IsVisible());
	if win:IsVisible() then
		win:Top();
	end

end

--活动GM编辑窗体显示
function GMEventInfo_WinVisible()
	win:Visible(true);
	win:Top();
end

--细节编辑窗口
function GMDetail_OnClick(id)
	if m_index == -1 then
		return;
	end
	--先清空
	GMEventEditEx_Clear( )
	ex_text:SetText("");

	if m_flags >= 0 then
		if listItem_info[m_flags][m_index] == nil then
			listItem_info[m_flags][m_index] ={}
		end
		listItem_info[m_flags][m_index].Name = editBox[m_flags][m_index]:GetText();
	end
	ex_text:SetText(listItem_info[m_flags][m_index].Name);
	ex_time:SetText(listItem_info[m_flags][m_index].Time);
	ex_link:SetText(listItem_info[m_flags][m_index].Link);

	ex_npcAddr[1]:SetText(listItem_info[m_flags][m_index].AutoAddr1);
	ex_npcAddr[2]:SetText(listItem_info[m_flags][m_index].AutoAddr2);
	ex_npcAddr[3]:SetText(listItem_info[m_flags][m_index].AutoAddr3);
	ex_npcAddr[4]:SetText(listItem_info[m_flags][m_index].AutoAddr4);

	ex_npcName[1]:SetText(listItem_info[m_flags][m_index].AutoName1);
	ex_npcName[2]:SetText(listItem_info[m_flags][m_index].AutoName2);
	ex_npcName[3]:SetText(listItem_info[m_flags][m_index].AutoName3);
	ex_npcName[4]:SetText(listItem_info[m_flags][m_index].AutoName4);

	ex_dayTime[1]:SetText(listItem_info[m_flags][m_index].DayTimeID);
	ex_dayTime[2]:SetText(listItem_info[m_flags][m_index].DayTime1);
	ex_dayTime[3]:SetText(listItem_info[m_flags][m_index].DayTime2);
	ex_dayTime[4]:SetText(listItem_info[m_flags][m_index].DayTime3);
	win_ex:Visible(true);
	win_ex:Top();

end

function GMEventEditEx_OK()
	listItem_info[m_flags][m_index].Time = ex_time:GetText()
	listItem_info[m_flags][m_index].Link = ex_link:GetText()

	listItem_info[m_flags][m_index].AutoAddr1 = ex_npcAddr[1]:GetText()
	listItem_info[m_flags][m_index].AutoAddr2 = ex_npcAddr[2]:GetText()
	listItem_info[m_flags][m_index].AutoAddr3 = ex_npcAddr[3]:GetText()
	listItem_info[m_flags][m_index].AutoAddr4 = ex_npcAddr[4]:GetText()

	listItem_info[m_flags][m_index].AutoName1 = ex_npcName[1]:GetText()
	listItem_info[m_flags][m_index].AutoName2 = ex_npcName[2]:GetText()
	listItem_info[m_flags][m_index].AutoName3 = ex_npcName[3]:GetText()
	listItem_info[m_flags][m_index].AutoName4 = ex_npcName[4]:GetText()
	listItem_info[m_flags][m_index].DayTimeID = ex_dayTime[1]:GetText()
	listItem_info[m_flags][m_index].DayTime1  = ex_dayTime[2]:GetText()
	listItem_info[m_flags][m_index].DayTime2  = ex_dayTime[3]:GetText()
	listItem_info[m_flags][m_index].DayTime3  = ex_dayTime[4]:GetText()

	win_ex:Visible(false);
end

function GMEventEditEx_Cancel()
	win_ex:Visible(false);

end

function GMEventEditEx_Clear()
	ex_time:SetText("");
	ex_link:SetText("");

	ex_npcAddr[1]:SetText("");
	ex_npcAddr[2]:SetText("");
	ex_npcAddr[3]:SetText("");
	ex_npcAddr[4]:SetText("");

	ex_npcName[1]:SetText("");
	ex_npcName[2]:SetText("");
	ex_npcName[3]:SetText("");
	ex_npcName[4]:SetText("");
	ex_dayTime[1]:SetText("");
	ex_dayTime[2]:SetText("");
	ex_dayTime[3]:SetText("");
	ex_dayTime[4]:SetText("");
end

--GMEventEdit_OnLoad();
--GMEventEditEx_OnLoad();








