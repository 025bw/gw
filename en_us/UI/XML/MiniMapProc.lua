--MinMap相关的函数 tavia
--2009.07.16
local uiapi=UIAPI
local win = nil
local timeText = nil;

function MinMapSetServerTime(str)
	if win == nil then
		win = uiapi:GetElement("MapWinBack");
	end
	if timeText == nil then
		timeText = win:GetChild("TimeText");
	end
	timeText:SetText(str);

end

