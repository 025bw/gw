local uiapi     = UIAPI;
-- 主窗体
local win       = nil;
local petButton = nil;

local button1State;
local button2State;
local str_unite = PET_X0_10;

-- 初始化
function TakingPetUI_OnLoad()
	win = uiapi:GetElement("PetTakeWin");	
	win:UpdateRenderBuffer();
end


-- 设置按钮的文字
function UpdatePetStateButtonIcon(id,state)
	--state值(id: 870004): 0: 携带未唤出 1: 唤出 2: 派遣 3: 打工
	--state值(id: 870005): 0: 停留       1: 跟随 3: 攻击

	petButton = uiapi:GetElement(id);

	if id == 870004 then
		if state == 0 then
			petButton:SetTexturePos(998, 109);
		elseif state == 1 then
			petButton:SetTexturePos(894, 109);
		elseif state == 3 then
			petButton:SetTexturePos(381, 571);			
		end;
		button1State = state;
	elseif id == 870005 then
		if state == 0 then
			petButton:SetTexturePos(919, 109);
		elseif state == 1 then
			petButton:SetTexturePos(944, 109);
		elseif state == 3 then
			petButton:SetTexturePos(969, 109);
		end;
		button2State = state;
	end;
end


function Taking1HelperFunc() 
		str = "";
		if button1State == 0 then
		    str = TPP_X0_1
		elseif button1State == 1 then
			str = TPP_X0_2
		elseif button1State == 3 then	
			str = PETW_X0_17
		else
			str = TPP_X0_3
		end;

	uiapi:Helper(false,str,this:Instance());	
end

function Taking1HelperFunc2() 
	        str = "";
		if button2State == 0 then
		    str = TPP_X0_4
		elseif button2State == 1 then
			str = TPP_X0_5
		elseif button2State == 3 then
			str = TPP_X0_6
		else
			str = TPP_X0_7
		end;

	uiapi:Helper(false,str_unite,this:Instance());	
end

TakingPetUI_OnLoad();






