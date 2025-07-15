namespace example;

using System;
using System.IO;

using SDL3.Raw;

class Program
{
	static SDL_Window* window = null;
	static SDL_Renderer* renderer = null;

	public static void Main()
	{
		if(!SDL_Init(.SDL_INIT_VIDEO))
		{
			Console.WriteLine("Unable to initialize sdl3");
			Console.Read();
		}

		if(!SDL_CreateWindowAndRenderer("SDL3 - Hello world", 720, 360, .SDL_WINDOW_OPENGL, &window, &renderer))
		{
			Console.WriteLine("Unable to create a renderer");
			Console.Read();
		}

#if BF_PLATFORM_WASM
        emscripten_set_main_loop(=> EmscriptenMainLoop, 0, 1);
#else
        while (RunOneFrame()) {}
#endif

		SDL_DestroyRenderer(renderer);
		SDL_DestroyWindow(window);
		SDL_Quit();
	}

    private static bool RunOneFrame() {
    	SDL_Event e = .();

		while(SDL_PollEvent(&e))
		{
			if((SDL_EventType)e.type == .SDL_EVENT_QUIT)
				return false;
		}

		SDL_SetRenderDrawColor(renderer, 0, 0, 0, 255);

		SDL_RenderClear(renderer);

		SDL_FRect r = .() {x = 720/2-5, y = 360/2-5, w = 10, h = 10};
		SDL_SetRenderDrawColor(renderer, 255, 0, 0, 255);
		SDL_RenderRect(renderer, &r);
		SDL_RenderPresent(renderer);

        return true;
    }

#if BF_PLATFORM_WASM
	private function void em_callback_func();

	[CLink, CallingConvention(.Stdcall)]
	private static extern void emscripten_set_main_loop(em_callback_func func, int32 fps, int32 simulateInfinteLoop);

	[CLink, CallingConvention(.Stdcall)]
	private static extern int32 emscripten_set_main_loop_timing(int32 mode, int32 value);

	[CLink, CallingConvention(.Stdcall)]
	private static extern double emscripten_get_now();

	private static void EmscriptenMainLoop()
	{
		RunOneFrame();
	}
#endif
}