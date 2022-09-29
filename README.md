
# QML-VTK-App
## Requirements
This projects works with qt 5.15 and VTK 9.2.0
1. Download qt (it works with qt 5.15)
2. Download and compiile vtk 9.2.0:
- Enable `VTK_GROUP_ENABLE_Qt`
- Enable `VTK_MODULE_ENABLE_VTK_GUISupportQt`
- Enable `VTK_MODULE_ENABLE_VTK_GuiSupportQtQuick`
- Setup Qt5_dir to {your_qt5_install_dir}/lib/cmake/Qt5
- Just to be sure, set `VTK_QT_VERSION` to 5
To prevent possible errors during VTK compilation, disable all modules related to 'Verdict'.
It's also possible to have issue on QQuickVTKInteractorAdapter.
If so, just updates the QueueWheelEvent line :
```
  QWheelEvent* newEvent = new QWheelEvent(this->mapEventPosition(item, p),
    this->mapEventPosition(item, gp), e->pixelDelta(), e->angleDelta(), e->delta(), e->orientation(),
    e->buttons(), e->modifiers(), e->phase());
```