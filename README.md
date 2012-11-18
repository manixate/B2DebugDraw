B2DebugDraw
===========

Box2d debug draw for cocos2d-iphone.

We created a CCLayer to wrap debug drawing. By putting this layer on top, debug
drawing won't be overlaid by other CCNode.

#### Usage 

Just create a new instance of B2DebugDrawLayer, then add it to your CCLayer just as a normal CCNode.

Make sure to give it highest z-order.

    [myLayer addChild:[B2DebugDrawLayer layerWithWorld:world andPtmRatio:ptmRatio] z:9999];

#### Compatibility

Tested with cocos2d-iphone 2.0.2 using XCode 4.4