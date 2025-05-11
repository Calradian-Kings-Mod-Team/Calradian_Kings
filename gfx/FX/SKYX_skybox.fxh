Includes = {
	"cw/camera.fxh"
}

PixelShader =
{
	TextureSampler SKYX_Skybox
	{
		Index = 15
		MagFilter = "Linear"
		MinFilter = "Linear"
		MipFilter = "Linear"
		SampleModeU = "Clamp"
		SampleModeV = "Clamp"
		Type = "Cube"
		File = "gfx/map/environment/SkyBox.dds"
		srgb = yes
	}

	Code [[
		float4 SKYX_GetSkyboxCubemapSample(float3 WorldSpacePos)
		{
			float3 FromCameraDir = normalize(WorldSpacePos - CameraPosition);

			return PdxTexCube(SKYX_Skybox, FromCameraDir);
		}
	]]
}
