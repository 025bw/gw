local PetInfo_MSG = {};

-- 性别
PetInfo_MSG.PETSEX1 = PETDP_X0_13;
PetInfo_MSG.PETSEX2 = PETDP_X0_14;

local uiapi     = UIAPI;
-- 主窗体
local PetInfo_win       = nil;
-- 类型
local PetInfo_pettype   = nil;
-- 资质
local PetInfo_aptitude  = nil;
-- 性别
local PetInfo_petsex       = nil;
-- 星座
local PetInfo_petConstellation = nil;


-- 初始化
function PetInfo_OnLoad()
	PetInfo_win        = uiapi:GetElement("PetInfoWin");
	PetInfo_pettype    = PetInfo_win:GetChild("PetType");
	PetInfo_aptitude   = PetInfo_win:GetChild("PetAptitude");
	PetInfo_petsex     = PetInfo_win:GetChild("PetSex");
	PetInfo_petConstellation = PetInfo_win:GetChild("PetConstellation");

	PetInfo_win:UpdateRenderBuffer();
end


-- 设置性别
function PetInfo_PetSetSex(value)
	if value == 1 then
		PetInfo_petsex:SetText(PetInfo_MSG.PETSEX1);
	else
		PetInfo_petsex:SetText(PetInfo_MSG.PETSEX2);
	end;
end


-- 设置类型
function PetInfo_PetSetType(value)
	if value == 1 then
		PetInfo_pettype:SetText(PETTYPE1);
	elseif value == 2 then
		PetInfo_pettype:SetText(PETTYPE2);
	elseif value == 3 then
		PetInfo_pettype:SetText(PETTYPE3);
	elseif value == 4 then
		PetInfo_pettype:SetText(PETTYPE4);
	elseif value == 5 then
		PetInfo_pettype:SetText(PETTYPE5);
	elseif value == 6 then
		PetInfo_pettype:SetText(PETTYPE6);
	elseif value == 7 then
		PetInfo_pettype:SetText(PETTYPE7);
	elseif value == 8 then
		PetInfo_pettype:SetText(PETTYPE8);
	elseif value == 9 then
		PetInfo_pettype:SetText(PETTYPE9);
	elseif value == 10 then
		PetInfo_pettype:SetText(PETTYPE10);
	elseif value == 11 then
		PetInfo_pettype:SetText(PETTYPE11);
	elseif value == 12 then
		PetInfo_pettype:SetText(PETTYPE12);
	elseif value == 13 then
		PetInfo_pettype:SetText(PETTYPE13);
    elseif value == 14 then
		PetInfo_pettype:SetText(PETTYPE14);
	elseif value == 15 then
		PetInfo_pettype:SetText(PETTYPE15);
	elseif value == 16 then
		PetInfo_pettype:SetText(PETTYPE16);
	elseif value == 17 then
		PetInfo_pettype:SetText(PETTYPE17);
	elseif value == 18 then
		PetInfo_pettype:SetText(PETTYPE18);
	elseif value == 19 then
		PetInfo_pettype:SetText(PETTYPE19);
	elseif value == 20 then
		PetInfo_pettype:SetText(PETTYPE20);
	elseif value == 21 then
		PetInfo_pettype:SetText(PETTYPE21);
	elseif value == 22 then
		PetInfo_pettype:SetText(PETTYPE22);
    elseif value == 23 then
		PetInfo_pettype:SetText(PETTYPE23);
	elseif value == 24 then
		PetInfo_pettype:SetText(PETTYPE24);
	elseif value == 25 then
		PetInfo_pettype:SetText(PETTYPE25);
	elseif value == 26 then
		PetInfo_pettype:SetText(PETTYPE26);
	elseif value == 27 then
		PetInfo_pettype:SetText(PETTYPE27);
	elseif value == 28 then
		PetInfo_pettype:SetText(PETTYPE28);
	elseif value == 29 then
		PetInfo_pettype:SetText(PETTYPE29);
	elseif value == 30 then
		PetInfo_pettype:SetText(PETTYPE30);
	elseif value == 31 then
		PetInfo_pettype:SetText(PETTYPE31);
	elseif value == 32 then
		PetInfo_pettype:SetText(PETTYPE32);
    elseif value == 33 then
		PetInfo_pettype:SetText(PETTYPE33);
	elseif value == 34 then
		PetInfo_pettype:SetText(PETTYPE34);
	elseif value == 35 then
		PetInfo_pettype:SetText(PETTYPE35);
	elseif value == 36 then
		PetInfo_pettype:SetText(PETTYPE36);
	elseif value == 37 then
		PetInfo_pettype:SetText(PETTYPE37);
	elseif value == 38 then
		PetInfo_pettype:SetText(PETTYPE38);
	elseif value == 39 then
		PetInfo_pettype:SetText(PETTYPE39);
	elseif value == 40 then
		PetInfo_pettype:SetText(PETTYPE40);
	elseif value == 41 then
		PetInfo_pettype:SetText(PETTYPE41);
	elseif value == 42 then
		PetInfo_pettype:SetText(PETTYPE42);
	elseif value == 43 then
		PetInfo_pettype:SetText(PETTYPE43);
	elseif value == 44 then
		PetInfo_pettype:SetText(PETTYPE44);
	end;
end

-- 设置资质
function PetInfo_PetSetAptitude(value)
	if value == 1 then
		PetInfo_aptitude:SetText(PETAPTITUDE1);
	elseif value == 2 then
		PetInfo_aptitude:SetText(PETAPTITUDE2);
	elseif value == 3 then
		PetInfo_aptitude:SetText(PETAPTITUDE3);
	elseif value == 4 then
		PetInfo_aptitude:SetText(PETAPTITUDE4);
	elseif value == 5 then
		PetInfo_aptitude:SetText(PETAPTITUDE5);
	elseif value == 6 then
		PetInfo_aptitude:SetText(PETAPTITUDE6);
	elseif value == 7 then
		PetInfo_aptitude:SetText(PETAPTITUDE7);
	elseif value == 8 then
		PetInfo_aptitude:SetText(PETAPTITUDE8);
	elseif value == 9 then
		PetInfo_aptitude:SetText(PETAPTITUDE9);
	elseif value == 10 then
		PetInfo_aptitude:SetText(PETAPTITUDE10);
	elseif value == 11 then
		PetInfo_aptitude:SetText(PETAPTITUDE11);
	elseif value == 12 then
		PetInfo_aptitude:SetText(PETAPTITUDE12);
	elseif value == 13 then
		PetInfo_aptitude:SetText(PETAPTITUDE13);
	elseif value == 14 then
		PetInfo_aptitude:SetText(PETAPTITUDE14);
	elseif value == 15 then
		PetInfo_aptitude:SetText(PETAPTITUDE15);
	end;
end

-- 设置星座值
function PetInfo_UpdatePetConstellation(id)
	if id == 0 then
		PetInfo_petConstellation:SetText(NF_L0_XZ8);
        elseif id == 1 then
		PetInfo_petConstellation:SetText(NF_L0_XZ9);
        elseif id == 2 then
		PetInfo_petConstellation:SetText(NF_L0_XZ10);
        elseif id == 3 then
		PetInfo_petConstellation:SetText(NF_L0_XZ11);
        elseif id == 4 then
		PetInfo_petConstellation:SetText(NF_L0_XZ12);
        elseif id == 5 then
		PetInfo_petConstellation:SetText(NF_L0_XZ13);
        elseif id == 6 then
		PetInfo_petConstellation:SetText(NF_L0_XZ14);
        elseif id == 7 then
		PetInfo_petConstellation:SetText(NF_L0_XZ15);
        elseif id == 8 then
		PetInfo_petConstellation:SetText(NF_L0_XZ16);
        elseif id == 9 then
		PetInfo_petConstellation:SetText(NF_L0_XZ17);
        elseif id == 10 then
		PetInfo_petConstellation:SetText(NF_L0_XZ18);
        elseif id == 11 then
		PetInfo_petConstellation:SetText(NF_L0_XZ19);
	end;
end

PetInfo_OnLoad();






