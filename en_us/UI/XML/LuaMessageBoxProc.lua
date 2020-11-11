--tavia，用于lua的2次确认操作。

LUA_MESSAGEBOX_ROOKIE  = 1 --新手引导
LUA_MESSAGEBOX_NULL  = 2   --待续

local win = nil
local text = nil
local m_type = 0
local uiapi = UIAPI

--初始化
function LuaMessageBox_Init()
	win = uiapi:GetElement("LuaMessageBoxWin");
	text = win:GetChild("Text")

	win:UpdateRenderBuffer();

end
--设置确认框的内容
function LuaMessageBox_Visible(str,type)
	if not win:IsVisible() then
		text:SetText(str)
		m_type = type
		win:Visible(true)
		win:Top()
	end

end
--判断确认框是否打开
function LuaMessageBox_GetVisible()
	return win:IsVisible()
end
--确定按钮的操作
function LuaMessageBox_OK()
	if m_type == LUA_MESSAGEBOX_ROOKIE then
		RookieGuide_OK()

	elseif  m_type == LUA_MESSAGEBOX_NULL then
		--待续
	end

	win:Visible(false)
end
--取消按钮的操作
function LuaMessageBox_Cancel()
	win:Visible(false)

end



