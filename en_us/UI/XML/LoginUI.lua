--message config
local uiapi = UIAPI

local win = nil;
local LastServerText = nil;
local MoreServerBtn = nil;
local SvrContent = nil;
local SvrContent1 = nil;

local Num = 0;


function Login_OnLoad()

	win = uiapi:GetElement("InterfaceWin");
	win:UpdateRenderBuffer();

end

function InterfaceBtn_OnClick()

	win:Visible(not win:IsVisible());

end

function MoreServerBtn_OnClick()
	win = uiapi:GetElement("SelectServerWin");
    ServerListText = win:GetChild("ServerListText");
	MoreServerBtn = win:GetChild("MoreServerBtn");
	
	

	
    
	if Num == 0 then
	  ServerListText:SetText(LS_X0_1);
	  MoreServerBtn:SetText(LS_X0_2);
	  Num = 1;
	elseif Num == 1 then
	  ServerListText:SetText(LS_X0_3);
	  MoreServerBtn:SetText(LS_X0_4);
	  Num = 0;
	end
end

Login_OnLoad();
