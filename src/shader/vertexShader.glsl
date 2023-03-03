uniform float uTime;

void main(){
    vec3 newPosition=position.xyz;
    newPosition.x=newPosition.x*sin(uTime);
    vec4 worldPosition=modelMatrix*vec4(newPosition,1.);
    vec4 mvPosition=viewMatrix*worldPosition;
    gl_Position=projectionMatrix*mvPosition;
}