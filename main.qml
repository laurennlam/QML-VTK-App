// import related modules
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15
 
// import the VTK module
import VTK 9.2
 
// window containing the application
ApplicationWindow {
  // title of the application
  title: qsTr("VTK QtQuick App")
  width: 400
  height: 400
  color: palette.window
 
  SystemPalette {
    id: palette
    colorGroup: SystemPalette.Active
  }
 
  // Instantiate the vtk render window
  VTKRenderWindow {
    id: vtkwindow
    width: 400
    height: 400
  }
 
  // add one or more vtk render items
  VTKRenderItem {
    objectName: "ConeView"
    x: 200
    y: 200
    width: 200
    height: 200
    // Provide the handle to the render window
    renderWindow: vtkwindow
  }
}