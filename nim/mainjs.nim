
import threejs, dom


var scene {.exportc.} = newScene()
var camera {.exportc.} = newCamera(75, window.innerWidth / window.innerHeight, 0.1, 1000)
var renderer {.exportc.} = newWebGLRenderer()

renderer.setSize(window.innerWidth, window.innerHeight)
document.body.appendChild(renderer.domElement)

var geometry {.exportc.} = newBoxGeometry(3,3,3)
var material {.exportc.} = newMeshBasicMaterial(AnonObj(color:0x00ff00));
var cube {.exportc.} = newMesh(geometry, material)

scene.add(cube)
camera.position.z = 5.0

proc animate() {.exportc.} =
    window.requestAnimationFrame(animate)
    cube.rotation.x += 0.01
    cube.rotation.y += 0.01
    renderer.render(scene,camera)

animate()