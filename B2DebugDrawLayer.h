/****************************************************************************
 * B2DebugDrawLayer.h
 *
 * Created by Stefan Nguyen on Oct 8, 2012.
 *
 * Copyright Vinova Pte. Ltd. All rights reserved.
 ****************************************************************************/

#import "cocos2d.h"
#import "Box2d.h"
#include "GLES-Render.h"

@interface B2DebugDrawLayer : CCLayer
{
    b2World* mB2World;
    GLESDebugDraw* mB2DebugDraw;
    float mPtmRatio;
    
    //  B2DebugDrawLayer(b2World* pB2World, float pPtmRatio);
    //  static B2DebugDrawLayer* create(b2World* pB2World, float pPtmRatio);
    //  virtual bool init();
    //
    //  virtual void draw();
}

+ (id)layerWithWorld:(b2World *)pB2World andPtmRatio:(float)ptmRatio;
- (id)initWithWorld:(b2World *)pB2World andPtmRatio:(float)ptmRatio;
- (void)draw;

@end