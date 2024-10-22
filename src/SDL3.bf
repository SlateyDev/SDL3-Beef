namespace SDL3;

using System;
using System.Interop;

public static class SDL
{
	[CRepr]
	struct Event
	{
	}

#region Main

	public enum AppResult : c_int
	{
		Continue = 0,
		Success = 1,
		Failure = 2,
	}

	typealias main_func = function c_int(c_int argc, char8** argv);

	typealias AppInit_func = function AppResult(void** appstate, c_int argc, char8** argv);
	typealias AppIterate_func = function AppResult(void* appstate);
	typealias AppEvent_func = function AppResult(void* appstate, Event* event);
	typealias AppQuit_func = function void(void* appstate, AppResult result);


	[LinkName("SDL_SetMainReady")]
	public static extern void SetMainReady();

	[LinkName("SDL_AppInit")]
	public static extern AppResult AppInit(void** appstate, c_int argc, char8** argv);

	[LinkName("SDL_AppIterate")]
	public static extern AppResult AppIterate(void* appstate);

	[LinkName("SDL_AppEvent")]
	public static extern AppResult AppEvent(void* appstate, Event* event);

	[LinkName("SDL_AppQuit")]
	public static extern void AppQuit(void* appstate, AppResult result);

	[LinkName("SDL_main")]
	public static extern void main(c_int argc, char8** argv);

	[LinkName("SDL_RunApp")]
	public static extern c_int RunApp(c_int argc, char8** argv, main_func mainFunction, void* reserved);

	[LinkName("SDL_EnterAppMainCallbacks")]
	public static extern c_int EnterAppMainCallbacks(c_int argc, char8** argv, AppInit_func appinit, AppIterate_func appiter, AppEvent_func appevent, AppQuit_func appquit);

	[LinkName("SDL_RegisterApp")]
	public static extern bool RegisterApp(char8* name, uint32 style, void* hInst);

	[LinkName("SDL_UnregisterApp")]
	public static extern void UnregisterApp();

	[LinkName("SDL_GDKSuspendComplete")]
	public static extern void GDKSuspendComplete();
#endregion

#region Init

	public enum InitFlags : uint32
	{
		Audio = (.)0x00000010u, //Audio implies Events
		Video = (.)0x00000020u, //Video implies Events
		Joystick = (.)0x00000200u, //Joystick implies Events, should be initialized on the same thread as Video on Windows if you don't set Hint.Joystick_Thread
		Haptic = (.)0x00001000u,
		Gamepad = (.)0x00002000u, //Gamepad implies Joystick
		Events = (.)0x00004000u,
		Sensor = (.)0x00008000u, //Sensor implies Events
		Camera = (.)0x00010000u //Camera implies Events
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
	public static extern bool AddHintCallback(char8* name, HintCallback callback, void* userdata);

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

#region Properties

	typealias PropertiesID = uint32;

	typealias EnumeratePropertiesCallback = function void(void* userdata, PropertiesID props, char8* name);

	public enum PropertyType : c_int
	{
		Invalid = 0,
		Pointer = 1,
		String = 2,
		Number = 3,
		Float = 4,
		Boolean = 5,
	}

	typealias CleanupPropertyCallback = function void(void* userdata, void* value);

	///Clear a property from a group of properties
	[LinkName("SDL_ClearProperty")]
	public static extern bool ClearProperty(PropertiesID props, char8* name);

	///Copy a group of properties
	[LinkName("SDL_CopyProperties")]
	public static extern bool CopyProperties(PropertiesID src, PropertiesID dst);

	///Create a group of properties
	[LinkName("SDL_CreateProperties")]
	public static extern PropertiesID CreateProperties();

	///Destroy a group of properties
	[LinkName("SDL_DestroyProperties")]
	public static extern void DestroyProperties(PropertiesID props);

	///Enumerate the properties contained in a group of properties
	[LinkName("SDL_EnumerateProperties")]
	public static extern bool EnumerateProperties(PropertiesID props, EnumeratePropertiesCallback callback, void* userdata);

	///Get a boolean property from a group of properties
	[LinkName("SDL_GetBooleanProperty")]
	public static extern bool GetBooleanProperty(PropertiesID props, char8* name, bool default_value);

	///Get a floating point property from a group of properties
	[LinkName("SDL_GetFloatProperty")]
	public static extern float GetFloatProperty(PropertiesID props, char8* name, float default_value);

	///Get the global SDL properties
	[LinkName("SDL_GetGlobalProperties")]
	public static extern PropertiesID GetGlobalProperties();

	///Get a number property from a group of properties
	[LinkName("SDL_GetNumberProperty")]
	public static extern int64 GetNumberProperty(PropertiesID props, char8* name, int64 default_value);

	///Get a pointer property from a group of properties
	[LinkName("SDL_GetPointerProperty")]
	public static extern void* GetPointerProperty(PropertiesID props, char8* name, void* default_value);

	///Get the type of a property in a group of properties
	[LinkName("SDL_GetPropertyType")]
	public static extern PropertyType GetPropertyType(PropertiesID props, char8* name);

	///Get a string property from a group of properties
	[LinkName("SDL_GetStringProperty")]
	public static extern char8* GetStringProperty(PropertiesID props, char8* name, char8* default_value);

	///Return whether a property exists in a group of properties
	[LinkName("SDL_HasProperty")]
	public static extern bool HasProperty(PropertiesID props, char8* name);

	///Lock a group of properties
	[LinkName("SDL_LockProperties")]
	public static extern bool LockProperties(PropertiesID props);

	///Set a boolean property in a group of properties
	[LinkName("SDL_SetBooleanProperty")]
	public static extern bool SetBooleanProperty(PropertiesID props, char8* name, bool value);

	///Set a float property in a group of properties
	[LinkName("SDL_SetFloatProperty")]
	public static extern bool SetFloatProperty(PropertiesID props, char8* name, float value);

	///Set a number property in a group of properties
	[LinkName("SDL_SetNumberProperty")]
	public static extern bool SetNumberProperty(PropertiesID props, char8* name, int64 value);

	///Set a pointer property in a group of properties
	[LinkName("SDL_SetPointerProperty")]
	public static extern bool SetPointerProperty(PropertiesID props, char8* name, void* value);

	///Set a pointer property in a group of properties with a cleanup function that is called when the property is deleted
	[LinkName("SDL_SetPointerPropertyWithCleanup")]
	public static extern bool SetPointerPropertyWithCleanup(PropertiesID props, char8* name, void* value, CleanupPropertyCallback cleanup, void* userdata);

	///Set a string property in a group of properties
	[LinkName("SDL_SetStringProperty")]
	public static extern bool SetStringProperty(PropertiesID props, char8* name, char8* value);

	///Unlock a group of properties
	[LinkName("SDL_UnlockProperties")]
	public static extern void UnlockProperties(PropertiesID props);
#endregion

#region Error

	///Clear any previous error message for this thread
	[LinkName("SDL_ClearError")]
	public static extern void ClearError();

	///Retrieve a message about the last error that occurred on the current thread
	[LinkName("SDL_GetError")]
	public static extern char8* GetError();

	///Set an error indicating that memory allocation failed
	[LinkName("SDL_OutOfMemory")]
	public static extern bool OutOfMemory();

	///Set the SDL error message for the current thread
	[LinkName("SDL_SetError")]
	public static extern bool SetError(char8* fmt, ...);

	///Set the SDL error message for the current thread
	[LinkName("SDL_SetErrorV")]
	public static extern bool SetErrorV(char8* fmt, VarArgs ap);
#endregion

#region Log

	typealias LogOutputFunction = function void(void* userdata, c_int category, LogPriority priority, char8* message);

	public enum LogPriority : c_int
	{
		Invalid = 0,
		Trace = 1,
		Verbose = 2,
		Debug = 3,
		Info = 4,
		Warn = 5,
		Error = 6,
		Critical = 7,
		Count = 8
	}

	[LinkName("SDL_SetLogPriorities")]
	public static extern void SetLogPriorities(LogPriority priority);

	[LinkName("SDL_SetLogPriority")]
	public static extern void SetLogPriority(int category, LogPriority priority);

	[LinkName("SDL_LogPriority SDL_GetLogPriority")]
	public static extern LogPriority GetLogPriority(int category);

	[LinkName("SDL_ResetLogPriorities")]
	public static extern void ResetLogPriorities();

	[LinkName("SDL_SetLogPriorityPrefix")]
	public static extern bool SetLogPriorityPrefix(LogPriority priority, char8* prefix);

	[LinkName("SDL_Log")]
	public static extern void Log(char8* fmt, ...);

	[LinkName("SDL_LogTrace")]
	public static extern void LogTrace(c_int category, char8* fmt, ...);

	[LinkName("SDL_LogVerbose")]
	public static extern void LogVerbose(c_int category, char8* fmt, ...);

	[LinkName("SDL_LogDebug")]
	public static extern void LogDebug(c_int category, char8* fmt, ...);

	[LinkName("SDL_LogInfo")]
	public static extern void LogInfo(c_int category, char8* fmt, ...);

	[LinkName("SDL_LogWarn")]
	public static extern void LogWarn(c_int category, char8* fmt, ...);

	[LinkName("SDL_LogError")]
	public static extern void LogError(c_int category, char8* fmt, ...);

	[LinkName("SDL_LogCritical")]
	public static extern void LogCritical(c_int category, char8* fmt, ...);

	[LinkName("SDL_LogMessage")]
	public static extern void LogMessage(c_int category, LogPriority priority, char8* fmt, ...);

	[LinkName("SDL_LogMessageV")]
	public static extern void LogMessageV(c_int category, LogPriority priority, char8* fmt, VarArgs ap);

	[LinkName("SDL_GetDefaultLogOutputFunction")]
	public static extern LogOutputFunction GetDefaultLogOutputFunction();

	[LinkName("SDL_GetLogOutputFunction")]
	public static extern void GetLogOutputFunction(LogOutputFunction* callback, void** userdata);

	[LinkName("SDL_SetLogOutputFunction")]
	public static extern void SetLogOutputFunction(LogOutputFunction callback, void* userdata);
#endregion

#region Assert

	public enum AssertState : c_int
	{
		Retry = 0,
		Break = 1,
		Abort = 2,
		Ignore = 3,
		Always_Ignore = 4,
	}

	[CRepr]
	public struct AssertData
	{
		public bool always_ignore;
		public c_uint trigger_count;
		public char8* condition;
		public char8* filename;
		public c_int linenum;
		public char8* func;
		AssertData* next;
	}

	public typealias AssertionHandler = function AssertState(AssertData* data, void* userdata);

	[LinkName("SDL_ReportAssertion")]
	public static extern AssertState ReportAssertion(AssertData* data, char8* func, char8* file, c_int line);

	[LinkName("SDL_SetAssertionHandler")]
	public static extern void SetAssertionHandler(AssertionHandler handler, void* userdata);

	[LinkName("SDL_GetDefaultAssertionHandler")]
	public static extern AssertionHandler GetDefaultAssertionHandler();

	[LinkName("SDL_GetAssertionHandler")]
	public static extern AssertionHandler GetAssertionHandler(void** puserdata);

	[LinkName("SDL_GetAssertionReport")]
	public static extern AssertData* GetAssertionReport();

	[LinkName("SDL_ResetAssertionReport")]
	public static extern void ResetAssertionReport();
#endregion

#region Version
	[LinkName("SDL_GetVersion")]
	public static extern c_int GetVersion();

	[LinkName("SDL_GetRevision")]
	public static extern char8* GetRevision();
#endregion

#region Video

	public enum SystemTheme : c_int
	{
		Unknown = 0,
		Light = 1,
		Dark = 2,
	}

	public typealias DisplayID = uint32;

	[LinkName("SDL_GetNumVideoDrivers")]
	public static extern c_int GetNumVideoDrivers();

	[LinkName("SDL_GetVideoDriver")]
	public static extern char8* GetVideoDriver(c_int index);

	[LinkName("SDL_GetCurrentVideoDriver")]
	public static extern char8* GetCurrentVideoDriver();

	[LinkName("SDL_GetSystemTheme")]
	public static extern SystemTheme GetSystemTheme();

	[LinkName("SDL_GetDisplays")]
	public static extern DisplayID* GetDisplays(c_int* count);

	[LinkName("SDL_GetPrimaryDisplay")]
	public static extern DisplayID GetPrimaryDisplay();

	[LinkName("SDL_GetDisplayProperties")]
	public static extern PropertiesID GetDisplayProperties(DisplayID displayID);

	[LinkName("SDL_GetDisplayName")]
	public static extern char8* GetDisplayName(DisplayID displayID);

	[LinkName("SDL_GetDisplayBounds")]
	public static extern bool GetDisplayBounds(DisplayID displayID, Rect* rect);

	[LinkName("SDL_GetDisplayUsableBounds")]
	public static extern bool GetDisplayUsableBounds(DisplayID displayID, Rect* rect);

	[LinkName("SDL_GetNaturalDisplayOrientation")]
	public static extern DisplayOrientation GetNaturalDisplayOrientation(DisplayID displayID);

	[LinkName("SDL_GetCurrentDisplayOrientation")]
	public static extern DisplayOrientation GetCurrentDisplayOrientation(DisplayID displayID);

	[LinkName("SDL_GetDisplayContentScale")]
	public static extern float GetDisplayContentScale(DisplayID displayID);

	[LinkName("SDL_GetFullscreenDisplayModes")]
	public static extern DisplayMode** GetFullscreenDisplayModes(DisplayID displayID, c_int* count);

	[LinkName("SDL_GetClosestFullscreenDisplayMode")]
	public static extern bool GetClosestFullscreenDisplayMode(DisplayID displayID, c_int w, c_int h, float refresh_rate, bool include_high_density_modes, DisplayMode* mode);

	[LinkName("SDL_GetDesktopDisplayMode")]
	public static extern DisplayMode* GetDesktopDisplayMode(DisplayID displayID);

	[LinkName("SDL_GetCurrentDisplayMode")]
	public static extern DisplayMode* GetCurrentDisplayMode(DisplayID displayID);

	[LinkName("SDL_GetDisplayForPoint")]
	public static extern DisplayID GetDisplayForPoint(Point* point);

	[LinkName("SDL_GetDisplayForRect")]
	public static extern DisplayID GetDisplayForRect(Rect* rect);

	[LinkName("SDL_GetDisplayForWindow")]
	public static extern DisplayID GetDisplayForWindow(Window* window);

	[LinkName("SDL_GetWindowPixelDensity")]
	public static extern float GetWindowPixelDensity(Window* window);

	[LinkName("SDL_GetWindowDisplayScale")]
	public static extern float GetWindowDisplayScale(Window* window);

	[LinkName("SDL_SetWindowFullscreenMode")]
	public static extern bool SetWindowFullscreenMode(Window* window, DisplayMode* mode);

	[LinkName("SDL_GetWindowFullscreenMode")]
	public static extern DisplayMode* GetWindowFullscreenMode(Window* window);

	[LinkName("SDL_GetWindowICCProfile")]
	public static extern void* GetWindowICCProfile(Window* window, c_size* size);

	[LinkName("SDL_GetWindowPixelFormat")]
	public static extern PixelFormat GetWindowPixelFormat(Window* window);

	[LinkName("SDL_GetWindows")]
	public static extern Window** GetWindows(c_int* count);

	[LinkName("SDL_CreateWindow")]
	public static extern Window* CreateWindow(char8* title, c_int w, c_int h, WindowFlags flags);

	[LinkName("SDL_CreatePopupWindow")]
	public static extern Window* CreatePopupWindow(Window* parent, c_int offset_x, c_int offset_y, c_int w, c_int h, WindowFlags flags);

	[LinkName("SDL_CreateWindowWithProperties")]
	public static extern Window* CreateWindowWithProperties(PropertiesID props);

	[LinkName("SDL_GetWindowID")]
	public static extern WindowID GetWindowID(Window* window);

	[LinkName("SDL_GetWindowFromID")]
	public static extern Window* GetWindowFromID(WindowID id);

	[LinkName("SDL_GetWindowParent")]
	public static extern Window* GetWindowParent(Window* window);

	[LinkName("SDL_GetWindowProperties")]
	public static extern PropertiesID GetWindowProperties(Window* window);

	[LinkName("SDL_GetWindowFlags")]
	public static extern WindowFlags GetWindowFlags(Window* window);

	[LinkName("SDL_SetWindowTitle")]
	public static extern bool SetWindowTitle(Window* window, char8* title);

	[LinkName("SDL_GetWindowTitle")]
	public static extern char8* GetWindowTitle(Window* window);

	[LinkName("SDL_SetWindowIcon")]
	public static extern bool SetWindowIcon(Window* window, Surface* icon);

	[LinkName("SDL_SetWindowPosition")]
	public static extern bool SetWindowPosition(Window* window, c_int x, c_int y);

	[LinkName("SDL_GetWindowPosition")]
	public static extern bool GetWindowPosition(Window* window, int* x, int* y);

	[LinkName("SDL_SetWindowSize")]
	public static extern bool SetWindowSize(Window* window, c_int w, c_int h);

	[LinkName("SDL_GetWindowSize")]
	public static extern bool GetWindowSize(Window* window, int* w, int* h);

	[LinkName("SDL_GetWindowSafeArea")]
	public static extern bool GetWindowSafeArea(Window* window, Rect* rect);

	[LinkName("SDL_SetWindowAspectRatio")]
	public static extern bool SetWindowAspectRatio(Window* window, float min_aspect, float max_aspect);

	[LinkName("SDL_GetWindowAspectRatio")]
	public static extern bool GetWindowAspectRatio(Window* window, float* min_aspect, float* max_aspect);

	[LinkName("SDL_GetWindowBordersSize")]
	public static extern bool GetWindowBordersSize(Window* window, c_int* top, c_int* left, c_int* bottom, c_int* right);

	[LinkName("SDL_GetWindowSizeInPixels")]
	public static extern bool GetWindowSizeInPixels(Window* window, c_int* w, c_int* h);

	[LinkName("SDL_SetWindowMinimumSize")]
	public static extern bool SetWindowMinimumSize(Window* window, c_int min_w, c_int min_h);

	[LinkName("SDL_GetWindowMinimumSize")]
	public static extern bool GetWindowMinimumSize(Window* window, c_int* w, c_int* h);

	[LinkName("SDL_SetWindowMaximumSize")]
	public static extern bool SetWindowMaximumSize(Window* window, c_int max_w, c_int max_h);

	[LinkName("SDL_GetWindowMaximumSize")]
	public static extern bool GetWindowMaximumSize(Window* window, c_int* w, c_int* h);

	[LinkName("SDL_SetWindowBordered")]
	public static extern bool SetWindowBordered(Window* window, bool bordered);

	[LinkName("SDL_SetWindowResizable")]
	public static extern bool SetWindowResizable(Window* window, bool resizable);

	[LinkName("SDL_SetWindowAlwaysOnTop")]
	public static extern bool SetWindowAlwaysOnTop(Window* window, bool on_top);

	[LinkName("SDL_ShowWindow")]
	public static extern bool ShowWindow(Window* window);

	[LinkName("SDL_HideWindow")]
	public static extern bool HideWindow(Window* window);

	[LinkName("SDL_RaiseWindow")]
	public static extern bool RaiseWindow(Window* window);

	[LinkName("SDL_MaximizeWindow")]
	public static extern bool MaximizeWindow(Window* window);

	[LinkName("SDL_MinimizeWindow")]
	public static extern bool MinimizeWindow(Window* window);

	[LinkName("SDL_RestoreWindow")]
	public static extern bool RestoreWindow(Window* window);

	[LinkName("SDL_SetWindowFullscreen")]
	public static extern bool SetWindowFullscreen(Window* window, bool fullscreen);

	[LinkName("SDL_SyncWindow")]
	public static extern bool SyncWindow(Window* window);

	[LinkName("SDL_WindowHasSurface")]
	public static extern bool WindowHasSurface(Window* window);

	[LinkName("SDL_GetWindowSurface")]
	public static extern Surface* GetWindowSurface(Window* window);

	[LinkName("SDL_SetWindowSurfaceVSync")]
	public static extern bool SetWindowSurfaceVSync(Window* window, c_int vsync);

	[LinkName("SDL_GetWindowSurfaceVSync")]
	public static extern bool GetWindowSurfaceVSync(Window* window, c_int* vsync);

	[LinkName("SDL_UpdateWindowSurface")]
	public static extern bool UpdateWindowSurface(Window* window);

	[LinkName("SDL_UpdateWindowSurfaceRects")]
	public static extern bool UpdateWindowSurfaceRects(Window* window, Rect* rects, c_int numrects);

	[LinkName("SDL_DestroyWindowSurface")]
	public static extern bool DestroyWindowSurface(Window* window);

	[LinkName("SDL_SetWindowKeyboardGrab")]
	public static extern bool SetWindowKeyboardGrab(Window* window, bool grabbed);

	[LinkName("SDL_SetWindowMouseGrab")]
	public static extern bool SetWindowMouseGrab(Window* window, bool grabbed);

	[LinkName("SDL_GetWindowKeyboardGrab")]
	public static extern bool GetWindowKeyboardGrab(Window* window);

	[LinkName("SDL_GetWindowMouseGrab")]
	public static extern bool GetWindowMouseGrab(Window* window);

	[LinkName("SDL_GetGrabbedWindow")]
	public static extern Window* GetGrabbedWindow();

	[LinkName("SDL_SetWindowMouseRect")]
	public static extern bool SetWindowMouseRect(Window* window, Rect* rect);

	[LinkName("SDL_GetWindowMouseRect")]
	public static extern Rect* GetWindowMouseRect(Window* window);

	[LinkName("SDL_SetWindowOpacity")]
	public static extern bool SetWindowOpacity(Window* window, float opacity);

	[LinkName("SDL_GetWindowOpacity")]
	public static extern float GetWindowOpacity(Window* window);

	[LinkName("SDL_SetWindowParent")]
	public static extern bool SetWindowParent(Window* window, Window* parent);

	[LinkName("SDL_SetWindowModal")]
	public static extern bool SetWindowModal(Window* window, bool modal);

	[LinkName("SDL_SetWindowFocusable")]
	public static extern bool SetWindowFocusable(Window* window, bool focusable);

	[LinkName("SDL_ShowWindowSystemMenu")]
	public static extern bool ShowWindowSystemMenu(Window* window, c_int x, c_int y);

	[LinkName("SDL_SetWindowHitTest")]
	public static extern bool SetWindowHitTest(Window* window, HitTest callback, void* callback_data);

	[LinkName("SDL_SetWindowShape")]
	public static extern bool SetWindowShape(Window* window, Surface* shape);

	[LinkName("SDL_FlashWindow")]
	public static extern bool FlashWindow(Window* window, FlashOperation operation);

	[LinkName("SDL_DestroyWindow")]
	public static extern void DestroyWindow(Window* window);

	[LinkName("SDL_ScreenSaverEnabled")]
	public static extern bool ScreenSaverEnabled();

	[LinkName("SDL_EnableScreenSaver")]
	public static extern bool EnableScreenSaver();

	[LinkName("SDL_DisableScreenSaver")]
	public static extern bool DisableScreenSaver();

	[LinkName("SDL_GL_LoadLibrary")]
	public static extern bool GL_LoadLibrary(char8* path);

	[LinkName("SDL_GL_GetProcAddress")]
	public static extern FunctionPointer GL_GetProcAddress(char8* proc);

	[LinkName("SDL_EGL_GetProcAddress")]
	public static extern FunctionPointer EGL_GetProcAddress(char8* proc);

	[LinkName("SDL_GL_UnloadLibrary")]
	public static extern void GL_UnloadLibrary();

	[LinkName("SDL_GL_ExtensionSupported")]
	public static extern bool GL_ExtensionSupported(char8* extension);

	[LinkName("SDL_GL_ResetAttributes")]
	public static extern void GL_ResetAttributes();

	[LinkName("SDL_GL_SetAttribute")]
	public static extern bool GL_SetAttribute(GLattr attr, c_int value);

	[LinkName("SDL_GL_GetAttribute")]
	public static extern bool GL_GetAttribute(GLattr attr, c_int* value);

	[LinkName("SDL_GL_CreateContext")]
	public static extern GLContext GL_CreateContext(Window* window);

	[LinkName("SDL_GL_MakeCurrent")]
	public static extern bool GL_MakeCurrent(Window* window, GLContext context);

	[LinkName("SDL_GL_GetCurrentWindow")]
	public static extern Window* GL_GetCurrentWindow();

	[LinkName("SDL_GL_GetCurrentContext")]
	public static extern GLContext GL_GetCurrentContext();

	[LinkName("SDL_EGL_GetCurrentDisplay")]
	public static extern EGLDisplay EGL_GetCurrentDisplay();

	[LinkName("SDL_EGL_GetCurrentConfig")]
	public static extern EGLConfig EGL_GetCurrentConfig();

	[LinkName("SDL_EGL_GetWindowSurface")]
	public static extern EGLSurface EGL_GetWindowSurface(Window* window);

	[LinkName("SDL_EGL_SetAttributeCallbacks")]
	public static extern void EGL_SetAttributeCallbacks(EGLAttribArrayCallback platformAttribCallback,

		[LinkName("SDL_GL_SetSwapInterval")]
		public static extern bool GL_SetSwapInterval(c_int interval);

	[LinkName("SDL_GL_GetSwapInterval")]
	public static extern bool GL_GetSwapInterval(c_int* interval);

	[LinkName("SDL_GL_SwapWindow")]
	public static extern bool GL_SwapWindow(Window* window);

	[LinkName("SDL_GL_DestroyContext")]
	public static extern bool GL_DestroyContext(GLContext context);
#endregion
}
