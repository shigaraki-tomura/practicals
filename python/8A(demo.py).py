import geometry
def pointyShapeVolume(x,y,squareBase):
     if squareBase==True:
         print("Square area:",geometry.squareArea(x))
     else:
         print("Circle area:",geometry.circleArea(x))
print(dir(geometry))
pointyShapeVolume(2,3,True)
pointyShapeVolume(2,4,False)
