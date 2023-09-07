Includes = {
	"jomini/jomini_fog_of_war.fxh" # Replaces "gh_vic3_fog_of_war.fxh"
	"gh_snowfall.fxh"
}

PixelShader = {
	Code [[
		float3 GH_ApplyAtmosphericEffects(float3 Color, float3 WorldSpacePos, PdxTextureSampler2D FogOfWarAlphaMask, float ShadowMultiplier = 1.0)
		{
			float3 OutputColor = Color;

			OutputColor = GH_ApplySnowfall(OutputColor, WorldSpacePos);

			#ifndef NO_FOG
				OutputColor = ApplyFogOfWar(OutputColor, WorldSpacePos, FogOfWarAlphaMask/*, ShadowMultiplier*/);
			#endif

			return OutputColor;
		}
	]]
}
