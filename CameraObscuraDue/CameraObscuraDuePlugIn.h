//
//  CameraObscuraDuePlugIn.h
//  CameraObscuraDue
//
//  Created by Jean-Pierre Mouilleseaux on 29 Sept 2012.
//  Copyright (c) 2012 Chorded Constructions. All rights reserved.
//

#import <Quartz/Quartz.h>

@interface CameraObscuraDuePlugIn : QCPlugIn
@property (nonatomic) BOOL inputCaptureSignal;
@property (nonatomic) NSUInteger inputOperationMode;
@property (nonatomic) BOOL outputDoneSignal;
@end
