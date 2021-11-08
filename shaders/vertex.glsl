// uniform float time;
varying vec2 vUv;
// varying vec3 vPosition;
// uniform sampler2D texture1;
// float PI = 3.141592653589793;
void main() {
  vUv = uv;
  vec4 mvPosition = modelViewMatrix * vec4(position, 1.);
  gl_PointSize = 50. * (1. / -mvPosition.z);
  gl_Position = projectionMatrix * mvPosition;
}