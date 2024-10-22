namespace SDL3;

using System;
using System.Interop;


public static class SDL
{

#region Main
#endregion

#region Init

	public enum InitFlags : uint32
	{
		Audio = 0x00000010u, //Audio implies Events
		Video = 0x00000020u, //Video implies Events
		Joystick = 0x00000200u, //Joystick implies Events, should be initialized on the same thread as Video on Windows if you don't set Hint.Joystick_Thread
		Haptic = 0x00001000u,
		Gamepad = 0x00002000u, //Gamepad implies Joystick
		Events = 0x00004000u,
		Sensor = 0x00008000u, //Sensor implies Events
		Camera = 0x00010000u //Camera implies Events
	}

	///Get metadata about your app
	[LinkName("SDL_GetAppMetadataProperty")]
	public static extern char8* GetAppMetadataProperty(char8* name);

	///Initialize the SDL library
	[LinkName("SDL_Init")]
	public static extern bool Init(InitFlags flags);

	///Compatibility function to initialize the SDL library
	[LinkName("SDL_InitSubSystem")]
	public static extern bool InitSubSystem(InitFlags flags);

	///Clean up all initialized subsystems
	[LinkName("SDL_Quit")]
	public static extern void Quit();

	///Shut down specific SDL subsystems
	[LinkName("SDL_QuitSubSystem")]
	public static extern void QuitSubSystem(InitFlags flags);

	///Specify basic metadata about your app
	[LinkName("SDL_SetAppMetadata")]
	public static extern bool SetAppMetadata(char8* appname, char8* appversion, char8* appidentifier);

	///Specify metadata about your app through a set of properties
	[LinkName("SDL_SetAppMetadataProperty")]
	public static extern bool SetAppMetadataProperty(char8* name, char8* value);

	///Get a mask of the specified subsystems which are currently initialized
	[LinkName("SDL_WasInit")]
	public static extern InitFlags WasInit(InitFlags flags);
#endregion

#region Hints

	public typealias HintCallback = function void(void* userdata, char8* name, char8* oldValue, char8* newValue);

	public enum HintPriority : c_int
	{
		Default = 0,
		Normal = 1,
		Override = 2,
	}

	///Add a function to watch a particular hint
	[LinkName("SDL_AddHintCallback")]
	public static extern bool AddHintCallback(char8* name, HintCallback callback,void* userdata);

	///Get the value of a hint
	[LinkName("SDL_GetHint")]
	public static extern char8* GetHint(char8* name);

	///Get the boolean value of a hint variable
	[LinkName("SDL_GetHintBoolean")]
	public static extern bool GetHintBoolean(char8* name, bool default_value);

	///Remove a function watching a particular hint
	[LinkName("SDL_RemoveHintCallback")]
	public static extern void RemoveHintCallback(char8* name, HintCallback callback, void* userdata);

	///Reset a hint to the default value
	[LinkName("SDL_ResetHint")]
	public static extern bool ResetHint(char8* name);

	///Set a hint with normal priority
	[LinkName("SDL_ResetHint")]
	public static extern bool SetHint(char8* name, char8* value);

	///Set a hint with a specific priority
	[LinkName("SDL_SetHintWithPriority")]
	public static extern bool SetHintWithPriority(char8* name, char8* value, HintPriority priority);
#endregion
}