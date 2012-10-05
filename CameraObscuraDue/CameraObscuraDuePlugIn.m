//
//  CameraObscuraDuePlugIn.m
//  CameraObscuraDue
//
//  Created by Jean-Pierre Mouilleseaux on 29 Sept 2012.
//  Copyright (c) 2012 Chorded Constructions. All rights reserved.
//

#import "CameraObscuraDuePlugIn.h"

#define	kQCPlugIn_Name				@"Camera"
#define	kQCPlugIn_Description		@"DESCRIPTION"

@implementation CameraObscuraDuePlugIn

@dynamic inputSaveFolderLocation, inputCaptureSignal, outputDoneSignal, outputFileLocation;

+ (NSDictionary*)attributes {
    return @{
        QCPlugInAttributeNameKey:kQCPlugIn_Name,
        QCPlugInAttributeDescriptionKey:kQCPlugIn_Description,
        QCPlugInAttributeCategoriesKey: @[@"Source"]
    };
}

+ (NSDictionary*)attributesForPropertyPortWithKey:(NSString*)key {
    if ([key isEqualToString:@"inputSaveFolderLocation"]) {
        return @{QCPortAttributeNameKey: @"Save Folder", QCPortAttributeDefaultValueKey: @"SOMEWHERE"};
    } else if ([key isEqualToString:@"inputCaptureSignal"]) {
        return @{QCPortAttributeNameKey: @"Capture Signal"};
    } else if ([key isEqualToString:@"outputDoneSignal"]) {
        return @{QCPortAttributeNameKey: @"Done Signal"};
    } else if ([key isEqualToString:@"outputFileLocation"]) {
        return @{QCPortAttributeNameKey: @"Image Location"};
    }
	return nil;
}

+ (QCPlugInExecutionMode)executionMode {
	return kQCPlugInExecutionModeProvider;
}

+ (QCPlugInTimeMode)timeMode {
	return kQCPlugInTimeModeNone;
}

- (BOOL)startExecution:(id <QCPlugInContext>)context {
	// Called by Quartz Composer when rendering of the composition starts: perform any required setup for the plug-in.
	// Return NO in case of fatal failure (this will prevent rendering of the composition to start).
	
	return YES;
}

- (void)enableExecution:(id <QCPlugInContext>)context {
	// Called by Quartz Composer when the plug-in instance starts being used by Quartz Composer.
}

- (BOOL)execute:(id <QCPlugInContext>)context atTime:(NSTimeInterval)time withArguments:(NSDictionary*)arguments {
	/*
	Called by Quartz Composer whenever the plug-in instance needs to execute.
	Only read from the plug-in inputs and produce a result (by writing to the plug-in outputs or rendering to the destination OpenGL context) within that method and nowhere else.
	Return NO in case of failure during the execution (this will prevent rendering of the current frame to complete).
	
	The OpenGL context for rendering can be accessed and defined for CGL macros using:
	CGLContextObj cgl_ctx = [context CGLContextObj];
	*/
	
	return YES;
}

- (void)disableExecution:(id <QCPlugInContext>)context {
	// Called by Quartz Composer when the plug-in instance stops being used by Quartz Composer.
}

- (void)stopExecution:(id <QCPlugInContext>)context {
	// Called by Quartz Composer when rendering of the composition stops: perform any required cleanup for the plug-in.
}

@end
