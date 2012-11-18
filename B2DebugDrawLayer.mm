/****************************************************************************
 * B2DebugDrawLayer.cpp
 *
 * Created by Stefan Nguyen on Oct 8, 2012.
 *
 * Copyright Vinova Pte. Ltd. All rights reserved.
 ****************************************************************************/

#import "B2DebugDrawLayer.h"

@interface B2DebugDrawLayer()

@end

@implementation B2DebugDrawLayer

+ (id)layerWithWorld:(b2World *)pB2World andPtmRatio:(float)ptmRatio
{
    B2DebugDrawLayer *pRet = [[B2DebugDrawLayer alloc] initWithWorld:pB2World andPtmRatio:ptmRatio];
    return pRet;
}

- (id)initWithWorld:(b2World *)pB2World andPtmRatio:(float)ptmRatio
{
    self = [super init];
    if (self)
    {
        mB2World = pB2World;
        mPtmRatio = ptmRatio;
        
        mB2DebugDraw = new GLESDebugDraw( mPtmRatio );
        mB2World->SetDebugDraw(mB2DebugDraw);
        
        uint32 flags = 0;
        flags += b2Draw::e_shapeBit;
//        flags += b2Draw::e_jointBit;
//        flags += b2Draw::e_aabbBit;
//        flags += b2Draw::e_pairBit;
//        flags += b2Draw::e_centerOfMassBit;
        mB2DebugDraw->SetFlags(flags);
    }
    return self;
}

- (void)draw
{
    ccGLEnableVertexAttribs( kCCVertexAttribFlag_Position );
    
    kmGLPushMatrix();
    
    mB2World->DrawDebugData();
    
    kmGLPopMatrix();
}

@end