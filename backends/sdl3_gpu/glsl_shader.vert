#version 450 core
layout(location = 0) in vec2 aPos;
layout(location = 1) in vec2 aUV;
layout(location = 2) in vec4 aColor;

layout (set = 1, binding = 0) uniform vs_params {
    mat4 Trans;
} uniforms;

out gl_PerVertex {
    vec4 gl_Position;
};

layout(location = 0) out struct {
    vec4 Color;
    vec2 UV;
} Out;

void main()
{
    Out.Color = aColor;
    Out.UV = aUV;
    gl_Position = uniforms.Trans * vec4(aPos.x, aPos.y, 0, 1);
}
