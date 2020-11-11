
local str_plsInput_srcpet = PETINO_X0_1;
local str_plsInput_tagpet = PETINO_X0_2;
local str_cantUp          = PETINO_X0_3;
local str_inosculate_pet  = PETINO_X0_4;
local str_contiue         = PETINO_X0_5;
local str_close           = PETINO_X0_6;


local str_base_add        = PETINO_X0_7;
local str_base_add_1      = PETINO_X0_8;

local str_viewinfo_1      = PETINO_X0_9;
local str_viewinfo_2      = PETINO_X0_10;
local str_viewinfo_3      = PETINO_X0_11;

local uiapi = UIAPI;
local win   = nil;

-- 初始化
function petInosculate_onLoad()
	win = uiapi:GetElement("BondWin");
	win:UpdateRenderBuffer();
end

-- 请放入主宠
function set_pls_inputSrcPet()	
	srcPetName = win:GetChild("SrcPetName");
	srcPetName:SetText(str_plsInput_srcpet);
	print "set_pls_inputSrcPet"
end

-- 请放入副宠
function set_pls_inputTagPet()
	tagPetName = win:GetChild("TagPetName");
	tagPetName:SetText(str_plsInput_tagpet);
	print "set_pls_inputTagPet"
end

-- 无法提升
function set_cantUp(eleID) 
	local elem = uiapi:GetElement(eleID);
	elem:SetText(str_cantUp);
end

-- 操作按钮状态改变
function operBtn_change(state)
	operBtn  = uiapi:GetElement(860007);	
	viewinfo = uiapi:GetElement(860009);	
	baseText = uiapi:GetElement(860008);
	
	if state == 1 then
		operBtn:SetText(str_inosculate_pet);
		viewinfo:SetText(str_viewinfo_1);
		baseText:SetText(str_base_add_1);
	elseif state == 2 then
		operBtn:SetText(str_contiue);
		viewinfo:SetText(str_viewinfo_2);
		baseText:SetText(str_base_add_1);
	elseif state == 3 then		
		operBtn:SetText(str_close);
		viewinfo:SetText(str_viewinfo_3);
		baseText:SetText(str_base_add);		
	end	  
end

petInosculate_onLoad();




