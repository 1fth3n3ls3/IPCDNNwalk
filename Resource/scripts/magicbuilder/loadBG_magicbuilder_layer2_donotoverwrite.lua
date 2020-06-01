RE.viewpoint():setFOVy(45.000006)
RE.viewpoint().vpos:assign({-1320.105655, 4352.328777, 6820.749128})
RE.viewpoint().vat:assign({1661.877159, -879.189767, 31.341430})
RE.viewpoint():update()

rootnode =RE.ogreRootSceneNode()
bgnode=RE.createChildSceneNode(rootnode , "Floor_layer2")

pNode=RE.createChildSceneNode(bgnode, "l2_h35")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h35", "h35.mesh")
pNode:setPosition(0.000000, 50.000000, -850.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h55")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h55", "h55.mesh")
pNode:setPosition(0.000000, 150.000000, 50.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h6622")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h6622", "h66.mesh")
pNode:setPosition(750.000000, 50.000000, 250.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h6632")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h6632", "h66.mesh")
pNode:setPosition(850.000000, 50.000000, 250.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h66222")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h66222", "h66.mesh")
pNode:setPosition(650.000000, 50.000000, -250.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h66322")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h66322", "h66.mesh")
pNode:setPosition(750.000000, 50.000000, -250.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h23")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h23", "h23.mesh")
pNode:setPosition(550.000000, 150.000000, -400.000000)
pNode:setOrientation(0.707107, 0.000000, 0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h34")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h34", "h34.mesh")
pNode:setPosition(-500.000000, 50.000000, 700.000000)
pNode:setOrientation(0.707107, 0.000000, 0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h54")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h54", "h54.mesh")
pNode:setPosition(950.000000, 150.000000, -350.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h552")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h552", "h55.mesh")
pNode:setPosition(500.000000, 250.000000, 700.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h42")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h42", "h42.mesh")
pNode:setPosition(950.000000, 50.000000, -400.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h453")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h453", "h45.mesh")
pNode:setPosition(950.000000, 50.000000, -300.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h46")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h46", "h46.mesh")
pNode:setPosition(1400.000000, 150.000000, -950.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h4743")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h4743", "h47.mesh")
pNode:setPosition(500.000000, 100.000000, 700.000000)
pNode:setOrientation(0.707107, 0.000000, -0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h6663")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h6663", "h66.mesh")
pNode:setPosition(550.000000, 50.000000, -250.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h322")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h322", "h32.mesh")
pNode:setPosition(750.000000, 50.000000, -500.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h3222")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h3222", "h32.mesh")
pNode:setPosition(550.000000, 50.000000, -200.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h4132")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h4132", "h41.mesh")
pNode:setPosition(550.000000, 50.000000, -300.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h475")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h475", "h47.mesh")
pNode:setPosition(800.000000, 100.000000, 100.000000)
pNode:setOrientation(0.707107, 0.000000, -0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h4722")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h4722", "h47.mesh")
pNode:setPosition(800.000000, 100.000000, 200.000000)
pNode:setOrientation(0.707107, 0.000000, -0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h52222")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h52222", "h52.mesh")
pNode:setPosition(800.000000, 250.000000, 200.000000)
pNode:setOrientation(0.707107, 0.000000, -0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h523")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h523", "h52.mesh")
pNode:setPosition(800.000000, 250.000000, 100.000000)
pNode:setOrientation(0.707107, 0.000000, 0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h1523")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h1523", "h15.mesh")
pNode:setPosition(600.000000, 50.000000, -400.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h4133")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h4133", "h41.mesh")
pNode:setPosition(750.000000, 50.000000, -400.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h2323")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h2323", "h23.mesh")
pNode:setPosition(750.000000, 150.000000, -400.000000)
pNode:setOrientation(0.707107, 0.000000, 0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h2333")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h2333", "h23.mesh")
pNode:setPosition(650.000000, 150.000000, -400.000000)
pNode:setOrientation(0.707107, 0.000000, 0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h15222")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h15222", "h15.mesh")
pNode:setPosition(700.000000, 50.000000, -300.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h2342")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h2342", "h23.mesh")
pNode:setPosition(750.000000, 150.000000, -300.000000)
pNode:setOrientation(0.707107, 0.000000, -0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h23222")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h23222", "h23.mesh")
pNode:setPosition(550.000000, 150.000000, -300.000000)
pNode:setOrientation(0.707107, 0.000000, -0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h23322")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h23322", "h23.mesh")
pNode:setPosition(650.000000, 150.000000, -300.000000)
pNode:setOrientation(0.707107, 0.000000, -0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h553")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h553", "h55.mesh")
pNode:setPosition(1200.000000, 150.000000, -400.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h4532")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h4532", "h45.mesh")
pNode:setPosition(1200.000000, 50.000000, -400.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h4533")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h4533", "h45.mesh")
pNode:setPosition(0.000000, 50.000000, 50.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h454")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h454", "h45.mesh")
pNode:setPosition(300.000000, 50.000000, 700.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h352")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h352", "h35.mesh")
pNode:setPosition(0.000000, 50.000000, -750.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h513")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h513", "h51.mesh")
pNode:setPosition(1100.000000, 250.000000, 150.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h532")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h532", "h53.mesh")
pNode:setPosition(1350.000000, 250.000000, 150.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h433")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h433", "h43.mesh")
pNode:setPosition(1400.000000, 50.000000, 200.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h5224")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h5224", "h52.mesh")
pNode:setPosition(1000.000000, 250.000000, 150.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h4734")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h4734", "h47.mesh")
pNode:setPosition(1150.000000, 100.000000, 100.000000)
pNode:setOrientation(0.707107, 0.000000, 0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h4122")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h4122", "h41.mesh")
pNode:setPosition(1000.000000, 50.000000, 100.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h443")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h443", "h44.mesh")
pNode:setPosition(1000.000000, 50.000000, 100.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h4422")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h4422", "h44.mesh")
pNode:setPosition(1400.000000, 150.000000, 200.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h47322")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h47322", "h47.mesh")
pNode:setPosition(1400.000000, 100.000000, 50.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h47332")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h47332", "h47.mesh")
pNode:setPosition(1300.000000, 100.000000, 50.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h47423")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h47423", "h47.mesh")
pNode:setPosition(1050.000000, 100.000000, 200.000000)
pNode:setOrientation(0.707107, 0.000000, -0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h4142")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h4142", "h41.mesh")
pNode:setPosition(1000.000000, 150.000000, 100.000000)
pNode:setOrientation(0.707107, 0.000000, -0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h5122")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h5122", "h51.mesh")
pNode:setPosition(1200.000000, 250.000000, 150.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h52232")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h52232", "h52.mesh")
pNode:setPosition(1350.000000, 250.000000, 0.000000)
pNode:setOrientation(0.707107, 0.000000, 0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h474222")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h474222", "h47.mesh")
pNode:setPosition(1250.000000, 100.000000, 200.000000)
pNode:setOrientation(0.707107, 0.000000, -0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h342")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h342", "h34.mesh")
pNode:setPosition(450.000000, 50.000000, 50.000000)
pNode:setOrientation(0.707107, 0.000000, 0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h542")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h542", "h54.mesh")
pNode:setPosition(300.000000, 150.000000, 0.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h423")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h423", "h42.mesh")
pNode:setPosition(300.000000, 50.000000, -50.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h4534")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h4534", "h45.mesh")
pNode:setPosition(300.000000, 50.000000, 50.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h5132")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h5132", "h51.mesh")
pNode:setPosition(1200.000000, 250.000000, -900.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h52242")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h52242", "h52.mesh")
pNode:setPosition(1400.000000, 250.000000, -900.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h47342")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h47342", "h47.mesh")
pNode:setPosition(1250.000000, 100.000000, -950.000000)
pNode:setOrientation(0.707107, 0.000000, 0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h41222")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h41222", "h41.mesh")
pNode:setPosition(1100.000000, 50.000000, -950.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h4432")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h4432", "h44.mesh")
pNode:setPosition(1100.000000, 50.000000, -950.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h474232")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h474232", "h47.mesh")
pNode:setPosition(1150.000000, 100.000000, -850.000000)
pNode:setOrientation(0.707107, 0.000000, -0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h41422")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h41422", "h41.mesh")
pNode:setPosition(1100.000000, 150.000000, -950.000000)
pNode:setOrientation(0.707107, 0.000000, -0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h51222")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h51222", "h51.mesh")
pNode:setPosition(1300.000000, 250.000000, -900.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h4742222")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h4742222", "h47.mesh")
pNode:setPosition(1350.000000, 100.000000, -850.000000)
pNode:setOrientation(0.707107, 0.000000, -0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h5522")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h5522", "h55.mesh")
pNode:setPosition(300.000000, 150.000000, 700.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h543")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h543", "h54.mesh")
pNode:setPosition(-650.000000, 150.000000, 650.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h424")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h424", "h42.mesh")
pNode:setPosition(-650.000000, 50.000000, 600.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h4535")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h4535", "h45.mesh")
pNode:setPosition(-650.000000, 50.000000, 700.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h463")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h463", "h46.mesh")
pNode:setPosition(1400.000000, 50.000000, -950.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h522422")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h522422", "h52.mesh")
pNode:setPosition(1100.000000, 250.000000, -900.000000)
pNode:setOrientation(0.000000, 0.000000, 1.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h5523")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h5523", "h55.mesh")
pNode:setPosition(700.000000, 250.000000, 700.000000)
pNode:setOrientation(1.000000, 0.000000, 0.000000, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

pNode=RE.createChildSceneNode(bgnode, "l2_h47432")
entity=RE.ogreSceneManager():createEntity("_l2_entity_h47432", "h47.mesh")
pNode:setPosition(700.000000, 100.000000, 700.000000)
pNode:setOrientation(0.707107, 0.000000, -0.707107, 0.000000)
pNode:setScale(1.000000, 1.000000, 1.000000)
entity:setNormaliseNormals(true)
pNode:attachObject(entity)

