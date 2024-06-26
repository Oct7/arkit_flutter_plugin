import ARKit

func deserizlieVector3(_ coords: [Double]) -> SCNVector3 {
    let point = SCNVector3(coords[0], coords[1], coords[2])
    return point
}

func deserizlieVector4(_ coords: [Double]) -> SCNVector4 {
    let point = SCNVector4(coords[0], coords[1], coords[2], coords[3])
    return point
}

func deserializeMatrix4(_ c: [NSNumber]) -> SCNMatrix4 {
    let coords = c.map { Float(truncating: $0) }
    let matrix = SCNMatrix4(m11: coords[0], m12: coords[1], m13: coords[2], m14: coords[3], m21: coords[4], m22: coords[5], m23: coords[6], m24: coords[7], m31: coords[8], m32: coords[9], m33: coords[10], m34: coords[11], m41: coords[12], m42: coords[13], m43: coords[14], m44: coords[15])
    return matrix
}
