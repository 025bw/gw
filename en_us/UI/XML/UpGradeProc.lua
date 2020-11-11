--2008.09.08 tavia
--升级提示的函数处理---

local uiapi=UIAPI
local win = nil;
local win30 = nil;
local win70 = nil;
local container = nil;
local text = nil;
local text30 = nil
local text70 = nil
local t=nil;
local msg_btn = nil;
local website_btn = nil;
local help_btn = nil;
local gamedata = nil;
local Alphi = 255;
local camp = nil;
local prof = nil;
local i = 0;
local first_flag=0;
function UpGrade_OnLoad()
	win = uiapi:GetElement("UpGrade");
	container = win:GetChild("Container");
	container:GetChild(0):SetTexture("");
	text = container:GetChild("Text");
	website_btn = container:GetChild("EnterWebsiteBtn");
	help_btn = container:GetChild("HelpBtn");
	msg_btn = uiapi:GetElement("SystemBar"):GetChild("LevUpMsg");
	win:UpdateRenderBuffer();
	--30level
	win30 = uiapi:GetElement("Authentication");
	text30 = win30:GetChild("Text")
    --70level
	--win70 = uiapi:GetElement("MobileAuthentication");
	--text70 = win70:GetChild("Text")
	this:RegisterEvent(EUSER_EVENT_SELFUPGRADE , "UpGrade_AddUpGradeMsg()");
	this:RegisterEvent(EUSER_EVENT_FIRSTENTERGAME , "UpGrade_FirstEnterGame()");
end
function UpGrade_FirstEnterGame()
	t=Get_UpGrade_Cofig(0);
	gamedata=PlayerAPI:GetGameData();
	camp = gamedata:GetFaction();
	prof = gamedata:GetClass();
	UpGrade_OnSelfSetText();
	first_flag = 1;
end

function UpGrade_SetWorldMapVisible()

	--if first_flag == 1 then
		--GameAPI:OpenTheWorldMap();
		--first_flag = 0;
	--end

end


function UpGrade_AddUpGradeMsg()
	--first_flag = GameAPI:GetIsFirstEnterGame();
	gamedata=PlayerAPI:GetGameData();
	level = gamedata:GetRank();
	camp = gamedata:GetFaction();
	prof = gamedata:GetClass();

	--20级或30级显示活动面板
	if level == 20 or level == 30 then
		local eventWin = uiapi:GetElement("ActivityWin");
		eventWin:Visible(true)
	end
	t=Get_UpGrade_Cofig(level);
	if t == nil then
		msg_btn:Visible(false);--把初始值都复原
		Alphi = 255;
		return;
	end
	if level == 30 then
		local str=t.static_text.."\n";
		text30:SetText(str);
		win30:Visible(false)
	--elseif level == 70 then
		--local str=t.static_text.."\n";
       --text70:SetText(str);
       --win70:Visible(true)
   else
      msg_btn:Visible(true)
	  Alphi=255
	end
end
function UpGrade_OnSelfUpdate()
	if msg_btn:IsVisible() then
		msg_btn:SetImageAlpha(Alphi);
		--i=i+1;
		--x=1+0.04*i;
		--msg_btn:OnScale(x,x);
		Alphi = Alphi-17;
		if Alphi <= 0 then
			Alphi = 255;
			--i = 0;
		end
	end
end

function UpGrade_OnSelfSetText()
	if camp == 0 then
		if prof == 0 then
			if t.static_text ~= nil then
				str=t.static_text.."\n";
			else
				str="";
			end
			if t.quest_sparta ~= nil then
				str=str..t.quest_sparta.."\n";
			end
			if t.map_sparta ~= nil then
				str=str..t.map_sparta.."\n";
			end
			if t.skill_warrior ~= nil then
				str=str..t.skill_warrior.."\n";
			end
			text:SetText(str);
		elseif prof == 1 then
			if t.static_text ~= nil then
				str=t.static_text.."\n";
			else
				str="";
			end
			if t.quest_sparta ~= nil then
				str=str..t.quest_sparta.."\n";
			end
			if t.map_sparta ~= nil then
				str=str..t.map_sparta.."\n";
			end
			if t.skill_warrior ~= nil then
				str=str..t.skill_champion.."\n";
			end
			text:SetText(str);
		elseif prof == 2 then
			if t.static_text ~= nil then
				str=t.static_text.."\n";
			else
				str="";
			end
			if t.quest_sparta ~= nil then
				str=str..t.quest_sparta.."\n";
			end
			if t.map_sparta ~= nil then
				str=str..t.map_sparta.."\n";
			end
			if t.skill_warrior ~= nil then
				str=str..t.skill_mgae.."\n";
			end
			text:SetText(str);
		elseif prof == 3 then
			if t.static_text ~= nil then
				str=t.static_text.."\n";
			else
				str="";
			end
			if t.quest_sparta ~= nil then
				str=str..t.quest_sparta.."\n";
			end
			if t.map_sparta ~= nil then
				str=str..t.map_sparta.."\n";
			end
			if t.skill_warrior ~= nil then
				str=str..t.skill_priest.."\n";
			end
			text:SetText(str);
		end

	elseif camp == 1 then
		if prof == 0 then
			if t.static_text ~= nil then
				str=t.static_text.."\n";
			else
				str="";
			end
			if t.quest_sparta ~= nil then
				str=str..t.quest_athens.."\n";
			end
			if t.map_sparta ~= nil then
				str=str..t.map_athens.."\n";
			end
			if t.skill_warrior ~= nil then
				str=str..t.skill_warrior.."\n";
			end
			text:SetText(str);
		elseif prof == 1 then
			if t.static_text ~= nil then
				str=t.static_text.."\n";
			else
				str="";
			end
			if t.quest_sparta ~= nil then
				str=str..t.quest_athens.."\n";
			end
			if t.map_sparta ~= nil then
				str=str..t.map_athens.."\n";
			end
			if t.skill_warrior ~= nil then
				str=str..t.skill_champion.."\n";
			end
			text:SetText(str);
		elseif prof == 2 then
			if t.static_text ~= nil then
				str=t.static_text.."\n";
			else
				str="";
			end
			if t.quest_sparta ~= nil then
				str=str..t.quest_athens.."\n";
			end
			if t.map_sparta ~= nil then
				str=str..t.map_athens.."\n";
			end
			if t.skill_warrior ~= nil then
				str=str..t.skill_mgae.."\n";
			end
			text:SetText(str);
		elseif prof == 3 then
			if t.static_text ~= nil then
				str=t.static_text.."\n";
			else
				str="";
			end
			if t.quest_sparta ~= nil then
				str=str..t.quest_athens.."\n";
			end
			if t.map_sparta ~= nil then
				str=str..t.map_athens.."\n";
			end
			if t.skill_warrior ~= nil then
				str=str..t.skill_priest.."\n";
			end
			text:SetText(str);
		end
	end

	win:Visible(true);
	text:Auto();
	website_btn:Auto();
	help_btn:Auto();
	container:Auto();
end

function UpGrade_OnSelfUpGrade()

	UpGrade_OnSelfSetText();
	msg_btn:Visible(false);
	Alphi = 255;

end

function UpGrade_EnterWebsite()

uiapi:HyperLink(t.Website_Linker);

end

--UpGrade_OnLoad();

--身份验证链接
function Authentication_EnterWebsite()

	uiapi:HyperLink("http://www.igg.com/member/meminfo.php");

end
-- 手机验证链接
function MobileAuthentication_EnterWebsite()

	uiapi:HyperLink("http://zs.176.com/event/tel");

end
