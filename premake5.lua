workspace "SFML_Solution"
	configurations { "Debug", "Release" }

	--platforms {"Win64"}
	architecture  "x86_64"
	language "C++"
	cppdialect "C++17"

	-- includes for the whole solution
	files
	{
		"src/**.hpp",
		"src/**.cpp"
	}

	includedirs
	{
		"src/",
		"external/SFML/include",
	}

	outputdir = "build/%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"
	projectsdir = "projects/"


project "My_SFML_Project"

	location (projectsdir .. "My_SFML_Project")

	-- Todo: What kinds of "kind":s are there?
	kind "ConsoleApp"
	
	targetdir ("bin/" .. outputdir .. "/%{prj.name}")

	-- Project-specific includes
	files
	{
		"src/%{prj.name}/**.hpp",
		"src/%{prj.name}/**.cpp"
	}

	-- Project-specific includes (e.g. Test lib includes)
	includedirs {"src/%{prj.name}/"}

	libdirs {"external/SFML/lib"}

	links { "opengl32.lib", "freetype.lib", "winmm.lib", "gdi32.lib", "openal32.lib", "flac.lib", "vorbisenc.lib", "vorbisfile.lib", "vorbis.lib", "ogg.lib", "ws2_32.lib" }

	filter "system:windows"
    	systemversion "latest"
  		defines { "GAME_PLATFORM_WINDOWS", "SFML_STATIC" }

	filter "configurations:Debug"
		-- Defines a flag
		defines {"DEBUG"}
		symbols "On"

		links { "sfml-audio-s-d.lib", "sfml-graphics-s-d.lib", "sfml-network-s-d.lib", "sfml-system-s-d.lib", "sfml-window-s-d.lib" }

	filter "configurations:Release"
		defines {"NDEBUG"}
		optimize "On"

		links { "sfml-audio-s.lib", "sfml-graphics-s.lib", "sfml-network-s.lib", "sfml-system-s.lib", "sfml-window-s.lib" }
