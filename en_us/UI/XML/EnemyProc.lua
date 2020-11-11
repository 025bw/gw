----------------------------------
-- 文件名称：仇人系统
-- 当前版本：1.00
-- 作    者：郭浩然
-- 完成日期：
-- 描    述：记录、读取仇人信息
----------------------------------
--[[
		文件记录方法:
		[陈威]=123456789:20
		[晓路]=234567890:30

其中123456789表示最后击杀时间，20表示次数


]]--

local uiapi = UIAPI
local win
local tabbar
local enemy
local item
local enemyList


local path
if GameAPI:luaIsFacebook() then
	path  = ".\\User\\"
else
	local language = string.match(GameAPI:luaGetLocals(),".*\\(.*)")
	path = ".\\Localization\\en_us\\Settings\\User\\"
end
--~ os.execute("if exist "..path "()else(md "..path..")")
--~ os.execute("if not exist "..path.." (md "..path..")")
EnemyList = {}--仇人列表


function Enemy_OnLoad() --初始化窗口
	win = uiapi:GetElement("RelationUI")
	tabbar = win:GetChild("RelationTabBar")
	enemy = tabbar:GetChild("Enemy")
	enemyList =enemy:GetChild("ListBox")
	GetEnemyList()
end

function GetEnemyList()  --获取仇人列表
	local name
	local time
	local count
	local selfName = GameAPI:luaGetPlayerName() --获取玩家自己名字
	local UID = GameAPI:luaGetPlayerDBId() --获取玩家自己名字
	local fileName = path..tostring(UID)..".txt"
	local file = io.open(fileName,"r")
	if not file then
		return
	end
	for l in file:lines() do
		name,time,count = string.match(l,"%s-%[(.*)%]%s-=%s-(%d+):(%d+)") --从文件里读出所有的仇人信息 包括姓名，最后击杀时间，总击杀次数
		EnemyList[name] = {}
		EnemyList[name].time = time
		EnemyList[name].count = count
	end
	local EnemySort = {}
	for _name in pairs(EnemyList) do
		table.insert(EnemySort,EnemyList[_name])
		EnemySort[#EnemySort].name = _name
	end
	table.sort(EnemySort,function(v1,v2)return v1.time > v2.time end)
	for i in pairs(EnemySort) do
		item = uiapi:AddItem("T_EnemyListItem" , enemyList)
		EnemySort[i].text = uiapi:AddText("T_EnemyListItemText" , item)
		EnemySort[i].text1 = uiapi:AddText("T_EnemyListItemText1" , item)
		EnemySort[i].text:SetText(tostring(EnemySort[i].name))
		EnemySort[i].text1:SetText(tostring(EnemySort[i].count))
	end
	file:close()
end

function SetEnemyList(fileName) --从列表读取仇人信息并保存
	local name
	local time
	local count
	fileName = path..tostring(fileName)..".txt"
	local file = io.open(fileName,"w")
	local head = "\239\187\191"
	file:write(head)
	file:close()
	file = io.open(fileName,"w")
	if not file then
		error("Open file error while opening file \""..fileName.."\"")
	end
	for name in pairs(EnemyList) do
		local s = string.format("[%s] = %d:%d\n",name,EnemyList[name].time,EnemyList[name].count)
		file:write(s)
	end
	file:close()
end

function AddEnemyList(name)  --被击杀以后触发
	if EnemyList[name] then  --如果仇人列表中已经有此人，则修改显示内容
		EnemyList[name].count = EnemyList[name].count + 1
		EnemyList[name].time = os.time()
	else  -- 无此人
		local ItemCount = 0 --计算仇人总人数
 		local EarlistTime,EarlistName
 		for _name in pairs(EnemyList) do
 			ItemCount = ItemCount + 1
 		end
 		if ItemCount >= 30 then -- 达到30人上限
			local EnemySort = {} -- 新建仇人列表，按照时间排序
			for _name in pairs(EnemyList) do
				table.insert(EnemySort,EnemyList[_name])
				EnemySort[#EnemySort].name = _name
			end
			table.sort(EnemySort,function(v1,v2) return v1.time < v2.time end )
			EnemyList[EnemySort[1].name] = nil -- 去除最早的一个仇人
		end
		EnemyList[name] = {} --仇人列表插入新仇人
		item = uiapi:AddItem("T_EnemyListItem" , enemyList)
		EnemyList[name].text = uiapi:AddText("T_EnemyListItemText" , item)
		EnemyList[name].text1 = uiapi:AddText("T_EnemyListItemText1" , item)
		EnemyList[name].time = os.time()
		EnemyList[name].count = 1
		EnemyList[name].text:SetText(tostring(name))
		EnemyList[name].text1:SetText(tostring(EnemyList[name].count))
	end
	local UID = GameAPI:luaGetPlayerDBId()
	SetEnemyList(UID)
	uiapi:ClearItem(enemyList) --清除旧界面，重新加载一次
	GetEnemyList()

end

function DelEnemy() -- 删除仇人，点下删除仇人按钮时触发
	local CurSel = uiapi:GetActiveList(enemyList)   --获取当前选中条目并删除
	if CurSel == -1 then return end
	local item = uiapi:GetListItem(CurSel,enemyList)
	local name = item:GetChild(1):GetText()
	EnemyList[name] = nil
	uiapi:RmoveItem(CurSel,enemyList)
	local UID = GameAPI:luaGetPlayerDBId()
	SetEnemyList(UID) --保存仇人列表
end

function PMEnemy() --点击私聊按钮触发
	local CurSel = uiapi:GetActiveList(enemyList)
	if CurSel == -1 then return end
	local item = uiapi:GetListItem(CurSel,enemyList)
	local name = item:GetChild(1):GetText()
	GameAPI:luaChatToEnemy(name)
end

Enemy_OnLoad()

