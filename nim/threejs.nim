from dom import Node, window, Window


# temporary
type
    AnonObj* = object # for passing object with fields as parameter for material variable
        color*: cint
proc requestAnimationFrame*(w: Window,callback: proc()) {.importcpp.} # for animation proc


# three.js wrapper
type
    Scene* = ref object
    Position* = object # temp for PerspectiveCamera
        x*,y*,z* {.importc.}: cfloat
    Camera* = ref object of RootObj
    PerspectiveCamera* = ref object of Camera
        fov*,far*{.importc.}: cint
        aspect*, near* {.importc.}: cfloat
        position*: Position # temporary... couldn't find 'position' in documentation for camera/perpsective camera
    WebGLRenderer* = ref object
        domElement*{.importc.}: Node #needed from dom apparently
    BoxGeometry* = ref object
    MeshBasicMaterial* = ref object
    Mesh* = ref object
        rotation*{.importc.}: Position # temporary

proc newScene*(): Scene {.importc: "new THREE.Scene".}
proc newCamera*(fov: cint, aspect, near: cfloat, far: cint): PerspectiveCamera {.importc: "new THREE.PerspectiveCamera".}
proc newWebGLRenderer*(): WebGLRenderer {.importc: "new THREE.WebGLRenderer".}
proc setSize*(renderer: WebGLRenderer, width, height: int, updateStyle: bool = false) {.importcpp.}
proc newBoxGeometry*(): BoxGeometry {.importc:"new THREE.BoxGeometry",varargs.}
proc newMeshBasicMaterial*[T](parameters: T): MeshBasicMaterial {.importc:"new THREE.MeshBasicMaterial".}
proc newMesh*(geometry: BoxGeometry, material: MeshBasicMaterial): Mesh {.importc:"new THREE.Mesh".}
proc add*(scene: Scene, mesh: Mesh) {.importcpp.}
proc render*(renderer: WebGLRenderer, scene: Scene, camera: PerspectiveCamera) {.importcpp.}