local uiapi     = UIAPI;
-- 主窗体
local win       = nil;
-- 按钮
local petButton = nil;

-- 初始化
function Pet_OnLoad()
	win        = uiapi:GetElement("PetWin");
	
	win:UpdateRenderBuffer();	
end

-- 设置按钮的图标
function UpdatePetButtonIcon(id,state)
	-- state值： 0：已开栏但未有宠物， 1：未开栏, 2: 被选中 3: 取消选中
	petButton = uiapi:GetElement(id);
	if state == 0 then
		petButton:GetChild(0):SetTexturePos(1024,1024);  -- 高亮空
	elseif state == 1 then
		petButton:GetChild(0):SetTexturePos(828,936);  -- 低亮空
	elseif state == 2 then
		petButton:SetTexturePos(0, 582);  -- 选中标志
	elseif state == 3 then
		petButton:SetTexturePos(0, 540);  -- 取消选中标志
	end;
end


Pet_OnLoad();






