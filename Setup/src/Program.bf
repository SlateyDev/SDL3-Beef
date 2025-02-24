namespace Setup;

using System;
using System.Diagnostics;

class Program
{
	public static void Main()
	{
		if(AttemptToDownload() case .Ok)
			return;
	}

	public static Result<void> AttemptToDownload()
	{
		ProcessStartInfo info = scope .();
		info.UseShellExecute = false;
		info.SetFileNameAndArguments("curl -o sdl3.zip -L https://github.com/libsdl-org/SDL/releases/download/release-3.2.4/SDL3-devel-3.2.4-mingw.zip");

		SpawnedProcess p = scope .();
		if(p.Start(info) case .Err)
			return .Err;

		while(!p.HasExited) {}

		if(p.ExitCode != 0)
			return .Err;
		return .Ok;
	}
}