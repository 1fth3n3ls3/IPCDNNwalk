RE.removeEntity(RE.ogreSceneManager():getSceneNode("BackgroundNode"))
node =RE.ogreRootSceneNode()
bgnode =node:createChildSceneNode("BackgroundNode")
node2=bgnode:createChildSceneNode()
ent1= RE.ogreSceneManager():createEntity("floor2", "dojo.mesh")
ent1:setCastShadows(false)
node2:attachObject(ent1)
