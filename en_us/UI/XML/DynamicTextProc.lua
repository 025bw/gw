--2008.10.24 tavia
--跑马灯的函数处理---

local uiapi=UIAPI
local win = nil;
local container = nil;
local text = nil;
local org_x =nil;
local org_y =nil;
local str_width =nil;
local cont_width =nil;
local OnHovered = false;
local str_size =0;
local flags = true;

function DynamicText_OnLoad()
	win = uiapi:GetElement("DynamicTextWin");	
	container = win:GetChild("Container");
	text = container:GetChild("Text");
	a,r,g,b = text:GetFontColor();
	cont_width=container:GetWidth();	

	text:SetText("");
	str_width = text:GetTextWidth();
	text:SetPosition(cont_width , y);
	
	win:UpdateRenderBuffer();		
end


function DynamicText_AddMsg(texts)

	text:SetText(texts);
	str_width = text:GetTextWidth();
	text:SetPosition(cont_width , y);	

end

function DynamicText_OnUpdate()

	if not OnHovered then
		x , y = text:GetPosition();
		text:SetPosition( x - 3 , y);
		if x <= -str_width then
			text:SetPosition(cont_width , y);
			text:SetText("");
		end
	end
end


function DynamicText_OnHovered()
	OnHovered = true;
end

function DynamicText_OnLeft()
	OnHovered = false;
end










