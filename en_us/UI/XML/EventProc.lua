--2009.1.6 tavia
--给玩家显示用的：活动信息显示处理---

local uiapi=UIAPI
local win = nil;--主窗体
local container = nil;--容器
local day_list = nil;--今日列表
local pro_list = nil;--公告列表
local week_list = nil;--本周列表
local guide_list = nil;--成长指南列表
local multi_edit = nil;--公告
local flags = -1;--当前选中的列表；1:DayList,2:WeekList
local m_index = -1;--当前选中的列表下标
local hyper_text = nil;--
local daylist_cofig = {};--本日活动内容
local prolist_config = {};--重要公告内容
local weeklist_cofig = {};--本周活动内容
local guidelist_cofig = {};--成长指南内容
local curlist_config = {}; --当前容器内的内容
local curTime_text = nil

--动态刷新列表
local dcur_index = -1;
local pcur_index = -1;
local wcur_index = -1;
local gcur_index = -1;

--活动按钮的闪烁标志
local event_btn = nil;
local btn_flash_visible = false;
local btn_a =0;
local btn_r = 0;
local btn_g = 0;
local btn_b =0;
local count = 0;
local not_click = true;
--初始化
function Event_OnLoad()
	win = uiapi:GetElement(481000);
        win:SetPosition(101,150);
	day_list = uiapi:GetElement(481100);
	pro_list =  uiapi:GetElement(481120);
	week_list = uiapi:GetElement(481140);
	guide_list = uiapi:GetElement(481160);
	multi_edit = uiapi:GetElement(481401);
	container = uiapi:GetElement(481400);

	event_btn = uiapi:GetElement(481610);
	btn_r,btn_g,btn_b,btn_a = event_btn:GetFontColor();

	curTime_text = win:GetChild("CurrentDate")
	uiapi:ClearItem(day_list);
	uiapi:ClearItem(pro_list);
	uiapi:ClearItem(week_list);
	uiapi:ClearItem(guide_list);

	win:UpdateRenderBuffer();
	this:RegisterEvent(EUSER_EVENT_UPDATEEVENTINFO , "UpDate_EventInfo()");
end
--初始化
function Event_Init()
	multi_edit:SetText("");
	hyper_text = "";
	flags = -1;
	m_index = -1;
	dcur_index = -1;
	pcur_index = -1;
	wcur_index = -1;
	gcur_index = -1;

	daylist_cofig = {};
	prolist_config = {};
	weeklist_cofig = {};
	guidelist_cofig = {};

	uiapi:ClearItem(day_list);
	uiapi:ClearItem(pro_list);
	uiapi:ClearItem(week_list);
	uiapi:ClearItem(guide_list);

local posx,posy = win:GetPosition()
     win:SetPosition(posx,posy)

	print("Event_Init");
end
--GM指令
function Event_GMFlags( flags )
	--flags = GameAPI:GetEventGMFlags();

	if flags == 1  then
		GMEventInfo_WinVisible();
	elseif flags == 2 then
		btn_flash_visible = true;
		not_click = true;
	elseif flags == 3 then
		btn_flash_visible = false;
		not_click = true;
	end


end
--动态更新活动信息
function UpDate_EventInfo()
	Flags,Type,Time,Name,Link,Content,AutoName1,AutoAddr1,AutoName2,AutoAddr2,AutoName3,AutoAddr3,AutoName4,AutoAddr4 = GameAPI:GetEventInfo();
	if Name == "" then
		return
	end
	if Type == 1 then
		if Flags == 1 or Flags == 3 then
				multi_edit:SetText("");
				hyper_text = "";
				flags = -1;
				m_index = -1;
				dcur_index = -1;
				daylist_cofig = {};
				uiapi:ClearItem(day_list);
		end
		dcur_index	= dcur_index +1;
		--信息保存起来
		daylist_cofig[dcur_index] = {
		Time = Time;
		Name = Name;
		Link = Link;
		Content = Content;
		AutoName1 = AutoName1;
		AutoAddr1 = AutoAddr1;
		AutoName2 = AutoName2;
		AutoAddr2= AutoAddr2;
		AutoName3 = AutoName3;
		AutoAddr3 = AutoAddr3;
		AutoName4 = AutoName4;
		AutoAddr4 = AutoAddr4;
		}

		item = uiapi:AddItem("T_ListItem" , day_list);
		text = uiapi:AddText("T_ListItemText" , item);
		text1 = uiapi:AddText("T_ListItemText1" , item);
		text:SetText(Time);
		text1:SetText(Name);
	elseif Type == 2 then
		if Flags == 1 or Flags == 3 then
				multi_edit:SetText("");
				hyper_text = "";
				flags = -1;
				m_index = -1;
				pcur_index = -1;
				prolist_config = {};
				uiapi:ClearItem(pro_list);
		end
		pcur_index	= pcur_index +1;
		prolist_config[pcur_index] = {
		Time = Time;
		Name = Name;
		Link = Link;
		Content = Content;
		AutoName1 = AutoName1;
		AutoAddr1 = AutoAddr1;
		AutoName2 = AutoName2;
		AutoAddr2= AutoAddr2;
		AutoName3 = AutoName3;
		AutoAddr3 = AutoAddr3;
		AutoName4 = AutoName4;
		AutoAddr4 = AutoAddr4;
		}

		item = uiapi:AddItem("T_ListItem" , pro_list);

		text1 = uiapi:AddText("T_ListItemText2" , item);
		--text:SetText(Time);
		text1:SetText(Name);
	elseif Type == 3 then
		if Flags == 1 or Flags == 3 then
				multi_edit:SetText("");
				hyper_text = "";
				flags = -1;
				m_index = -1;
				wcur_index = -1;
				weeklist_cofig = {};
				uiapi:ClearItem(week_list);
		end
		wcur_index	= wcur_index +1;
		weeklist_cofig[wcur_index] = {
		Time = Time;
		Name = Name;
		Link = Link;
		Content = Content;
		AutoName1 = AutoName1;
		AutoAddr1 = AutoAddr1;
		AutoName2 = AutoName2;
		AutoAddr2= AutoAddr2;
		AutoName3 = AutoName3;
		AutoAddr3 = AutoAddr3;
		AutoName4 = AutoName4;
		AutoAddr4 = AutoAddr4;
		}

		item = uiapi:AddItem("T_ListItem" , week_list);
		text = uiapi:AddText("T_ListItemText" , item);
		text1 = uiapi:AddText("T_ListItemText1" , item);
		text:SetText(Time);
		text1:SetText(Name);
	elseif Type ==4 then
		if Flags == 1 or Flags == 3 then
				multi_edit:SetText("");
				hyper_text = "";
				flags = -1;
				m_index = -1;
				gcur_index = -1;
				guidelist_cofig = {};
				uiapi:ClearItem(guide_list);
		end
		gcur_index	= gcur_index +1;
		guidelist_cofig[gcur_index] = {
		Time = Time;
		Name = Name;
		Link = Link;
		Content = Content;
		AutoName1 = AutoName1;
		AutoAddr1 = AutoAddr1;
		AutoName2 = AutoName2;
		AutoAddr2= AutoAddr2;
		AutoName3 = AutoName3;
		AutoAddr3 = AutoAddr3;
		AutoName4 = AutoName4;
		AutoAddr4 = AutoAddr4;
		}

		item = uiapi:AddItem("T_ListItem" , guide_list);
		text = uiapi:AddText("T_ListItemText" , item);
		text1 = uiapi:AddText("T_ListItemText1" , item);
		text:SetText(Time);
		text1:SetText(Name);
	end
	count =  uiapi:GetListCount(pro_list);

	if count >= 1 then
		uiapi:ActiveList(0,pro_list);
		multi_edit:SetText("");
		text = prolist_config[0].Content;
		hyper_text = prolist_config[0].Link;
		multi_edit:SetText(text);

		curlist_config = prolist_config[0];
		--自动寻路的处理
		Event_SetAutoSeekWay()

		uiapi:ActiveList(-1,day_list);
		uiapi:ActiveList(-1,week_list);
		uiapi:ActiveList(-1,guide_list);
		container:Auto();

	end
end
--每日活动列表选择事件
function Event_DayList_OnSelected()
	multi_edit:SetText("");

	m_index = uiapi:GetActiveList(day_list);
	text = daylist_cofig[m_index].Content;
	hyper_text = daylist_cofig[m_index].Link;
	multi_edit:SetText(text);
	curlist_config = daylist_cofig[m_index];
	--自动寻路的处理
	Event_SetAutoSeekWay()

	uiapi:ActiveList(-1,pro_list);
	uiapi:ActiveList(-1,week_list);
	uiapi:ActiveList(-1,guide_list);
	container:Auto();
end
--重要公告列表选择事件
function Event_ProList_OnSelected()
	multi_edit:SetText("");

	m_index = uiapi:GetActiveList(pro_list);
	text = prolist_config[m_index].Content;
	hyper_text = prolist_config[m_index].Link;
	multi_edit:SetText(text);
	curlist_config = prolist_config[m_index];
	--自动寻路的处理
	Event_SetAutoSeekWay()

	uiapi:ActiveList(-1,day_list);
	uiapi:ActiveList(-1,week_list);
	uiapi:ActiveList(-1,guide_list);

	container:Auto();
end
--本周活动列表选择事件
function Event_WeekList_OnSelected()
	multi_edit:SetText("");

	m_index = uiapi:GetActiveList(week_list);
	text = weeklist_cofig[m_index].Content;
	hyper_text = weeklist_cofig[m_index].Link;
	multi_edit:SetText(text);
	curlist_config = weeklist_cofig[m_index];
	Event_SetAutoSeekWay()

	uiapi:ActiveList(-1,day_list);
	uiapi:ActiveList(-1,pro_list);
	uiapi:ActiveList(-1,guide_list);
	container:Auto();
end
--成长指南列表选择事件
function Event_GuideList_OnSelected()
	multi_edit:SetText("");

	m_index = uiapi:GetActiveList(guide_list);
	text = guidelist_cofig[m_index].Content;
	hyper_text = guidelist_cofig[m_index].Link;
	multi_edit:SetText(text);
	curlist_config = guidelist_cofig[m_index];
	Event_SetAutoSeekWay()

	uiapi:ActiveList(-1,day_list);
	uiapi:ActiveList(-1,pro_list);
	uiapi:ActiveList(-1,week_list);
	container:Auto();
end
--自动寻路功能
function Event_OnTextSelect()
	local str = uiapi:GetTextSelect(multi_edit)

	for i =1,4,1 do
		local name = "AutoName"..i;
		if curlist_config[name] ~= "" then
			if string.find(str,curlist_config[name] ) then
				--name = "AutoAddr"..i;
				local addr = ""
				if i == 1 then
					addr= curlist_config["AutoAddr1"] ;
				elseif i == 2 then
					addr = curlist_config["AutoAddr2"] ;
				elseif i == 3 then
					addr = curlist_config["AutoAddr3"] ;
				elseif i == 4 then
					addr = curlist_config["AutoAddr4"] ;
				end
				local a,b,mapid,posx,posy,amapid,aposx,aposy= string.find(addr,"(-?%d+),(-?%d+),(-?%d+),(-?%d+),(-?%d+),(-?%d+)")
				print (mapid,posx,posy,amapid,aposx,aposy)
				local camp = PlayerAPI:GetGameData():GetFaction()
				if camp == 0 then
					GameAPI:AutoSeekWay(mapid,posx,posy);
				elseif camp == 1 then
					GameAPI:AutoSeekWay(amapid,aposx,aposy);
				end

				return;
			end
		end
	end
end
--设置自动寻路功能
function Event_SetAutoSeekWay()
	uiapi:ClearTextSelectKey(multi_edit);

	for i =1,4,1 do
		local name = "AutoName"..i;
		if curlist_config[name] ~= "" then
			uiapi:SetTextSelectColor(i-1,"HelpSystem_Color1",multi_edit);
			uiapi:SetTextSelectKey(i-1,curlist_config[name],multi_edit);
			print(i-1,curlist_config[name])
		end
	end
end

--超链接
function PlayerLinkBtn_OnClick()
	uiapi:HyperLink(hyper_text);

end

--设置活动窗体是否可见
function EventInfo_OnClick()
	GMEventInfo_OnClick();
end

--设置活动窗体是否可见
function EventBtn_OnClick()
    win = uiapi:GetElement("ActivityWin");
	win:Visible(not win:IsVisible());
	if win:IsVisible() then
	    win:SetPosition(101,150);
		win:Top();
		if btn_flash_visible then
			not_click = false;
		end
	end
end

--GM指令
function EventBtn_Update()

	if btn_flash_visible and not_click then
		count = count+1;
		if count % 30 == 0 then
			this:SetFontColor( 255 , 0 , 0,btn_a);
		elseif  count % 15 == 0 then
			this:SetFontColor(0, 255 , 0,btn_a );
		end

	else
		this:SetFontColor(btn_r , btn_g , btn_b,btn_a );
		count = 0;

	end


end
--日期的显示
function Event_Time(text,day)
	local str = ""
	if day == 0 then
		str = str..EP_L0_0
	elseif day == 1 then
		str = str..EP_L0_1
	elseif day == 2 then
		str = str..EP_L0_2
	elseif day == 3 then
		str = str..EP_L0_3
	elseif day == 4 then
		str = str..EP_L0_4
	elseif day == 5 then
		str = str..EP_L0_5
	elseif day == 6 then
		str = str..EP_L0_6
	end
	curTime_text:SetText(str)

end
--Event_OnLoad();









