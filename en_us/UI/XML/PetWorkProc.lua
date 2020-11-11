local uiapi     = UIAPI;
-- 主窗体
local win       = nil;
local opButton  = nil;

-- 初始化
function PetWork_OnLoad()
	win = uiapi:GetElement("PetWorkWin");	
	opButton = uiapi:GetElement(851011);	
	win:UpdateRenderBuffer();
end

-- 状态变化
function PetWork_onStateChange(state)
	-- 状态 0: 要去打工状态 1: 可以中止打工
	local text1 = uiapi:GetElement(851014);	
	local text2 = uiapi:GetElement(851015);
	local opBtn = uiapi:GetElement(851010); 	
	if 0 == state then
		opBtn:SetText(PETW_X0_14);
		text1:SetText(PETW_X0_1);
		text2:SetText(PETW_X0_3);
	elseif 1 == state then
		opBtn:SetText(PETW_X0_15);
		text1:SetText(PETW_X0_19);
		text2:SetText(PETW_X0_18);
	end;
end;

PetWork_OnLoad();