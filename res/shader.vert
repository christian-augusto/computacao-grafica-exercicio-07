#version 400

uniform mat4 u_projectionMatrix;
uniform mat4 u_modelViewMatrix;
uniform vec4 u_color;

in vec4 vertex;

out vec4 color;

void main(void) {

	color = u_color;

	vec4 xvertex = u_modelViewMatrix * vertex;
	gl_Position = u_projectionMatrix * xvertex;
};