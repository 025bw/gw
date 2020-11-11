
--[[
	xml config 

	OnLoad ,     ui load,						进入主逻辑时，UI控件调用，
	OnEvent ,   receive event  					控件接受消息，可以接受多消息，
	OnClick ,    button on click  					按钮左键单击事件
	OnRClick ,  button on mouse right  button click	按钮右键单击事件
	OnChecked , checkbox checked				选择框选择事件
	OnSelected ,  on list selected				列表选择事件
	OnUpdate , on update ,						控件刷新事件，每秒30次，慎用，
	OnEnter,     editor on enter,					输入框输入事件
	OnChange, scrollbar change				滚动条改变事件
	OnTabChange, tab change					tabbar切换事件

	OnHovered, element on hovered,				控件获得焦点事件
	OnLeft, element on left					控件失去焦点事件

	OnSound,element on sound ,,				控件发出声音
	OnHotKey,element on hotkey,				控件响应快捷键

	OnTextHovered, text on hovered			文本 获得焦点事件
	OnTextLeft, text on left					文本 失去焦点事件
	OnTextSelect, text on select				文本 选择事件

	OnOpen, windows open, no recursion			窗口打开事件，禁止递归
	OnClose, windows close, no recursion		窗口关闭事件，禁止递归
	
	
	Parent,	（str）							设置父UI

	OnScaleX,（double）						X轴缩放
	OnScaleY,（double）						Y轴缩放

	CanHovered;	（0-1）						设置是否相应消息事件，window，text有效

	ID;										设置ID
	CloseID;									关闭按钮ID（没啥用的项），window有效

	Visible，（0-1）							是否可见
	Enable，（0-1）							是否可用，window是否可拖动

	Type，(str)								设置类型
			
		"Text",
		"Button",
		"CheckBox",
		"MultilineEditBox",
		"EditBox",
		"ListItem",
		"ListBox",
		"ScrollBar",
		"Tab",
		"TabBar",
		"Container",
		"Window",
		"MessageBox",
		"ChatEditBoxEx",
		
	Texture，(str)							设置贴图
	LocalTexture，（str）					本地目录+贴图路径
	TexturePos,(x,y)							设置贴图偏移

	Modal，（0-1）							是否模态
	Layer，（0-5）							图层，
	Phyle，									种族，同一种族window只有一个可见	

	Rectangle，（l,t,r,b）						控件矩形大小
	ImageColor，(lua)						贴图偏色

	BtnRect,(l,t,r,b)							滚动条按钮矩形大小
	BtnPos,(x,y)								滚动条按钮贴图偏移
	Horizontal，（0-1）						滚动条垂直或水平
	
	Font，（lua）							字体
	FontColor，（lua）						字体偏色
	
	BtnTopTexture，（str）					按钮或选择框遮罩贴图
	BtnTopPos，（x,y）						按钮或选择框遮罩贴图偏移
	BtnTopRect，（l,t,r,b）					按钮或选择框遮罩矩形大小

	Height（!=0)								列表每列高度
	MaskTexture，（str）					列表每列遮罩贴图
	MaskPos，（x,y）						列表每列遮罩贴图偏移
	ItemOffset								列表每列偏移

	Text，（str）							设置文字
	SText，（lua）							设置文字
	TextOffset，（l,t,r,b）					设置文字偏移
	TextFormat，(参考font.lua)				设置文字格式
	TextWeight，参考font.lua)				设置文字描边

	MaxText，								输入框最大字符
	ResponseMouse，（0-1）					输入框响应鼠标点击
	Number，（0-1）							输入框只能输入数字
	Password，（0-1）						输入框密文
	Right，（0-1）							输入框居右显示
	Ctrl，（0-1）							输入框是否接受ctrl c，ctrl v

	ScrollTexture，（str）					容器，列表的滚动条贴图
	ScrollRect，（l,t,r,b）						容器，列表的滚动条矩形大小
	ScrollPos，(x,y)							容器，列表的滚动条贴图偏移

	WinRect;								window拼接4角矩形大小
	WinPixel;								window拼接4边宽度
	WinBody;(x,y)							window拼接，中间贴图偏移
	WinTop;	(x,y)							window拼接，上边贴图偏移
	WinBottom;(x,y)							window拼接，下边贴图偏移
	WinLeft;(x,y)							window拼接，左边贴图偏移
	WinRight;(x,y)							window拼接，右边贴图偏移
	WinTopLeft;	(x,y)						window拼接，左上贴图偏移
	WinTopRight;(x,y)						window拼接，右上贴图偏移
	WinBottomLeft;(x,y)						window拼接，左下贴图偏移
	WinBottomRight;	(x,y)					window拼接，右下贴图偏移

	MoveRect(l,t,r,b)							window移动限制

	UseEsc，								相应exc关闭，window有效

	Rotation，（double）						贴图旋转
	RotCenter，（x,y）						贴图旋转中心

	Auto ，（0-1）							是否自动排版，text，container有效
	AutoRelease，（0，静态，1，状态机变化）	自动释放
	
	HotKey(0-255 + 1024? + 2048? + 4096?)		热键
	{
		Ctrl = 1024,
		Shift = 2048,
		Alt = 4096,

		hotkey = ctrl ? + shift ? + alt ? + key
	}
]]--


--[[
	UIAPI API ,

	{GetElement(id)} , return element by id				获得UI控件
	{GetElement("name")} , return element by name			获得UI控件
	{GetEvent()} , return evnet							获得消息

	{Message("string")} , message box 					通用提示框
	{"Helper" , },Helper(string id? , string , element)		通用帮助提示
	{HyperLink("www.xxxx.xxx")} , HyperLink			超链接
	{"ChatMacro" }, ChatMacro("command" , "function"),	注册聊天宏
	
	{"Remove"} , Remove(element),						移除UI控件
	{"Release" }, Release(element),						释放UI控件
	
	{"AddText"} , AddText("uitemplate" , parent element),	添加Text控件
	{"AddButton"} , AddButton("uitemplate" , parent element),添加Button控件
	{"AddItem"} , AddItem("uitemplate" , parent element),	添加List item

	{"GetListCount"}, , GetListCount(elemnet)				获得List count	
	{"GetListItem"},, GetListItem(index , element)			获得List item 
	{"RmoveItem"} , RmoveItem(index , element);			移除List item	
	{"ClearItem"} , ClearItem(element),					清空List item
	{"ActiveList"},  ActiveList(index , element)			选中List item
	
	{"ActiveTab"} , ActiveTab(index  , element)			选中Tab
	{"GetActiveTab"}, GetActiveTab(element),			获得选中的Tab

	{SetChecked(bool)},,								选中单选框
	{IsChecked()},,									单选框是否选中

	{"GetScrollPos"},  GetScrollPos(element),				获得滚动条位置0.0 - 1.0
	{"SetScrollPos"}, ,SetScrollPos(pos , element),			设置滚动条位置0.0 - 1.0

	{"RunScript"},,RunScript(str)						运行脚本

]]--

--[[
	Sound API,,
	
	{"Load"}, , Load("file")									加载声音文件
	{"UnLoad"}, , UnLoad("file")							卸载声音文件
	{"Play"},	 , Play("file")									播放声音文件
	{"Stop"},	 , Stop("file")								停止播放声音文件
	{"Pause"}, , Pause("file")								暂停播放
	{"IsPlaying"}, , IsPlaying()								是否播放
	{"SetVolume"}, , SetVolume("file" , vol)					设置音量
	{"GetVolume"}, , GetVolume()							获得音量
]]--


--[[
	this API , or element API this is UI last call element
	"this" is lib ,, this:Instance() is element

	{RegisterEvent(event)} , Register Event , call back function is OnEvent in xml config	注册消息
	{RegisterEvent(event,callback)} , Register Event , call back function					注册消息
	{UpdateRenderBuffer()}  , 														更新渲染队列
	{Top()} , draw front  															设置成置顶窗口

	{"IsVisible" }, IsVisible,														是否可见
	{"IsEnable" }, IsEnabled,														是否可用

	{Visible(bool)} ,																设置可见
	{Enable(bool)} ,																设置可用

	{"SetTexture(path)" },SetTexture,												设置贴图
	{"SetTexturePos(x,y)" },SetTexturePos,											设置贴图便宜
	{SetImageColor(r , g , b , a) } , set image color ,									设置贴图偏色
	{SetFontColor(r , g , b , a) } , set font color ,										设置字体偏色
	{GetImageColor()},get image color , a,r,g,b										获得贴图偏色
	{GetFontColor},get font color , a,r,g,b												获得字体偏色

	{"SetImageAlpha"},, set Image Alpha,											设置贴图透明通道
	{"SetFontAlpha"} , set Font Alpha,												设置字体透明通道
	{GetImageAlpha},get image Alpha												获得贴图透明通道
	{GetFontAlpha},get font Alpha													获得字体透明通道

	{SetNumber(double) } , set number 												设置数字
	{SetText(text)}  , set text														设置字符串
	{"GetText()" }, GetText,														获得字符串

	{SetPosition(x , y)} , set position ,												设置控件位置
	{GetPosition},get position ,														获得控件位置
	{GetHeight},get height															获得控件高度
	{GetWidth},get width															获得控件宽度

	{GetParent()} , return the parent													获得父控件
	{GetChild(index)},return the child , index ,,										获得子控件
	{GetChild("name")} , return the child with name									获得子控件
	{GetType} , return type															获得控件类型

	{Auto},auto , text or container auto												自动排列

	{Number() , ThisGetNumber} , get double											获得数字
	{Name() },return the name														获得控件名字
	{ID() }, return the id															获得控件ID
	{OnScale(x,y)},																缩放
	
	{Instance()} , this:Instance(),													获得实例
	
	{SetImageRotation(float)}, set image rotation										设置贴图旋转
	{GetImageRotation() }, get image rotation											获得贴图旋转
	{SetImageRotCenter(x,y) }, set image rot center									设置贴图旋转中心

	{SetFontRotation(float) },set font rotation										设置字体旋转
	{GetFontRotation()}, get font rotation											获得字体旋转
	{SetFontRotCenter(x,y) }, set font rot center										设置字体旋转中心
]]--


--[[
	evnet  ,

	{GetType()} , get event type														获得事件类型
	{MouseWheel()} , mouse wheel delta, usually 1,2,3,4 or -1,-2,-3,-4...					获得鼠标中键
	{MouseX()} ,  X position of mouse cursor											获得鼠标X位置
	{MouseY()} , Y position of mouse cursor											获得鼠标Y位置
	{Char()} , Key which has been pressed or released									获得键盘按下字符
	{Alt()} , true if alt was also pressed												Alt是否按下
	{Ctrl()} , true if ctrlwas also pressed												Ctrl是否按下
	{Shift()} , true if Shift was also pressed											Shift是否按下
]]--



Base = {}

local uiapi = UIAPI;
local gameapi = GameAPI;

function Base:new (o)
	o = o or {}
	setmetatable(o, self);
	self.__index = self
	return o
end

function Base:dofile (filename)
	print("Base.dofile " ..filename);
    local f = assert(loadfile(filename))
    return f()
end

function Base:Print(str)
	--gameapi:DefaultAddText(str);
end

function Base:Run(str)
	uiapi:RunScript(str);
end
