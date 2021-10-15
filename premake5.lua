project "assimp"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("obj/" .. outputdir .. "/%{prj.name}")

	files
	{
		"code/**.cpp",
    		"code/**.h",
		"code/**.inl",
		"include/**.h",
		"include/**.hpp",
		"include/**.inl"
	}

	filter "system:Windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "on"

	filter "system:Linux"
		pic "on"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "on"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
