RE.removeEntity(RE.ogreSceneManager():getSceneNode("BackgroundNode"))
node =RE.ogreRootSceneNode()
bgnode =node:createChildSceneNode("BackgroundNode")
ent= RE.createPlane("BG_crowd", 4000, 4000, 20, 20)
ent:setMaterialName("Crowd/Board")
ent:setCastShadows(false)
bgnode:attachObject(ent)
--[[boardLight = RE.ogreSceneManager():createLight("BoardLight")
boardLight:setType(Ogre.Light.LT_DIRECTIONAL)
boardLight:setDirection(-1,-1,-1)
boardLight:setDiffuseColour(0.8,0.8,0.8)
boardLight:setSpecularColour(1.0,1.0,1.0)
bgnode:attachObject(boardLight)

]]--