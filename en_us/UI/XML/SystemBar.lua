Base:dofile("./Localization/en_us/UI/XML/AutoFight.lua");
local uiapi=UIAPI;
local auto = nil;
local win = nil;
local Num = 0;
local isRobot = false;

function SystemBar_OnLoad()

	auto = uiapi:GetElement("AutoFightWindow");
end

function AutoFight_OnClick()
	Default_OnClick();
	auto:Visible(not auto:IsVisible());
	if auto:IsVisible() then
		auto:Top();
	end

	win = uiapi:GetElement("AutoFightWindow");
end

function AutoFightButton_OnUpdate()
	AutoFight_OnUpdate();
end

function F12_OnClick()
	isRobot = not isRobot;

	AutoRun_OnClick(true);

	--win = uiapi:GetElement("AutoWin");
	--win:Visible(not win:IsVisible());
end


function Pet_OnClick()
	PetAPI:pet_showMainUI();
end

function UpBtn_OnClick()
    win = uiapi:GetElement("SystemBar");
	Constellation = win:GetChild("Constellation");
	Pet = win:GetChild("pet");
	Auto = win:GetChild("auto");
	System = win:GetChild("system");
	Help = win:GetChild("help");
	UpBtn = win:GetChild("UpBtn");
	LiveSkill = win:GetChild("LiveSkill");

    Constellation:Visible(not Constellation:IsVisible());
	if Constellation:IsVisible() then
		Constellation:Top();
	end

	Pet:Visible(not Pet:IsVisible());
	if Pet:IsVisible() then
		Pet:Top();
	end

	Auto:Visible(not Auto:IsVisible());
	if win:IsVisible() then
		Auto:Top();
	end

	System:Visible(not System:IsVisible());
	if System:IsVisible() then
		System:Top();
	end

     LiveSkill:Visible(not LiveSkill:IsVisible());
	if LiveSkill:IsVisible() then
		LiveSkill:Top();
	end

	if Num == 0 then
	  UpBtn:SetTexturePos(798,200);
	  Num = 1;
	elseif Num == 1 then
	  UpBtn:SetTexturePos(839,200);
	  Num = 0;
	end
end




