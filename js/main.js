/* Generated by the Nim Compiler v1.5.1 */
var framePtr = null;
var excHandler = 0;
var lastJSError = null;
if (!Math.trunc) {
  Math.trunc = function(v) {
    v = +v;
    if (!isFinite(v)) return v;
    return (v - v % 1) || (v < 0 ? -0 : v === 0 ? v : 0);
  };
}


function toFloat_33555992(i_33555993) {
  var result_33555994 = 0.0;

    result_33555994 = i_33555993;

  return result_33555994;

}

function HEX2F_33557576(x_33557577, y_33557578) {
  var result_33557579 = 0.0;

    result_33557579 = (toFloat_33555992(x_33557577) / toFloat_33555992(y_33557578));

  return result_33557579;

}
var scene_419430401 = [new THREE.Scene()];
var camera_419430402 = [new THREE.PerspectiveCamera(75, HEX2F_33557576(window.innerWidth, window.innerHeight), 1.0000000000000001e-01, 1000)];
var renderer_419430403 = [new THREE.WebGLRenderer()];
renderer_419430403[0].setSize(window.innerWidth, window.innerHeight, false);
document.body.appendChild(renderer_419430403[0].domElement);
var geometry_419430404 = [new THREE.BoxGeometry(3, 3, 3)];
var material_419430408 = [new THREE.MeshBasicMaterial({color: 65280})];
var cube_419430409 = [new THREE.Mesh(geometry_419430404[0], material_419430408[0])];
scene_419430401[0].add(cube_419430409[0]);
camera_419430402[0].position.z = 5.0000000000000000e+00;

function HEX2BHEX3D_419430492(x_419430494, x_419430494_Idx, y_419430495) {
    x_419430494[x_419430494_Idx] = (x_419430494[x_419430494_Idx] + y_419430495);

  
}

function animate_419430491() {
    window.requestAnimationFrame(animate_419430491);
    HEX2BHEX3D_419430492(cube_419430409[0].rotation, "x", 1.0000000000000000e-02);
    HEX2BHEX3D_419430492(cube_419430409[0].rotation, "y", 1.0000000000000000e-02);
    renderer_419430403[0].render(scene_419430401[0], camera_419430402[0]);

  
}
animate_419430491();
