
"use strict";

let VisualTrainingFeedback = require('./VisualTrainingFeedback.js');
let JoyTurboActionGoal = require('./JoyTurboActionGoal.js');
let GoToActionFeedback = require('./GoToActionFeedback.js');
let GoToAction = require('./GoToAction.js');
let ExecuteParkingResult = require('./ExecuteParkingResult.js');
let VisualTrainingActionResult = require('./VisualTrainingActionResult.js');
let JoyTurboGoal = require('./JoyTurboGoal.js');
let VisualTrainingActionFeedback = require('./VisualTrainingActionFeedback.js');
let VisualTrainingActionGoal = require('./VisualTrainingActionGoal.js');
let FollowWaypointsGoal = require('./FollowWaypointsGoal.js');
let ExecuteParkingActionResult = require('./ExecuteParkingActionResult.js');
let GoToPOIActionResult = require('./GoToPOIActionResult.js');
let ExecuteParkingAction = require('./ExecuteParkingAction.js');
let GoToActionResult = require('./GoToActionResult.js');
let GoToPOIActionGoal = require('./GoToPOIActionGoal.js');
let ExecuteParkingFeedback = require('./ExecuteParkingFeedback.js');
let FollowWaypointsAction = require('./FollowWaypointsAction.js');
let ExecuteParkingActionFeedback = require('./ExecuteParkingActionFeedback.js');
let GoToPOIGoal = require('./GoToPOIGoal.js');
let GoToGoal = require('./GoToGoal.js');
let JoyTurboActionFeedback = require('./JoyTurboActionFeedback.js');
let JoyPriorityGoal = require('./JoyPriorityGoal.js');
let GoToFeedback = require('./GoToFeedback.js');
let GoToActionGoal = require('./GoToActionGoal.js');
let ExecuteParkingActionGoal = require('./ExecuteParkingActionGoal.js');
let GoToPOIResult = require('./GoToPOIResult.js');
let JoyPriorityAction = require('./JoyPriorityAction.js');
let JoyPriorityActionResult = require('./JoyPriorityActionResult.js');
let JoyPriorityActionFeedback = require('./JoyPriorityActionFeedback.js');
let JoyPriorityFeedback = require('./JoyPriorityFeedback.js');
let JoyTurboResult = require('./JoyTurboResult.js');
let FollowWaypointsFeedback = require('./FollowWaypointsFeedback.js');
let GoToPOIFeedback = require('./GoToPOIFeedback.js');
let JoyTurboFeedback = require('./JoyTurboFeedback.js');
let VisualTrainingResult = require('./VisualTrainingResult.js');
let FollowWaypointsResult = require('./FollowWaypointsResult.js');
let GoToPOIActionFeedback = require('./GoToPOIActionFeedback.js');
let FollowWaypointsActionFeedback = require('./FollowWaypointsActionFeedback.js');
let JoyPriorityResult = require('./JoyPriorityResult.js');
let FollowWaypointsActionResult = require('./FollowWaypointsActionResult.js');
let FollowWaypointsActionGoal = require('./FollowWaypointsActionGoal.js');
let JoyTurboAction = require('./JoyTurboAction.js');
let GoToResult = require('./GoToResult.js');
let JoyTurboActionResult = require('./JoyTurboActionResult.js');
let ExecuteParkingGoal = require('./ExecuteParkingGoal.js');
let VisualTrainingGoal = require('./VisualTrainingGoal.js');
let GoToPOIAction = require('./GoToPOIAction.js');
let JoyPriorityActionGoal = require('./JoyPriorityActionGoal.js');
let VisualTrainingAction = require('./VisualTrainingAction.js');
let TabletPOI = require('./TabletPOI.js');
let MapConfiguration = require('./MapConfiguration.js');
let POI = require('./POI.js');
let ServiceStatus = require('./ServiceStatus.js');
let EulerAnglesStamped = require('./EulerAnglesStamped.js');
let LaserImage = require('./LaserImage.js');
let MissedWaypoint = require('./MissedWaypoint.js');
let NiceMapTransformation = require('./NiceMapTransformation.js');
let PolarReadingScan = require('./PolarReadingScan.js');
let AvailableMaps = require('./AvailableMaps.js');
let Emergency = require('./Emergency.js');
let Waypoint = require('./Waypoint.js');
let VisualLocDB = require('./VisualLocDB.js');
let PolarReading = require('./PolarReading.js');
let POIGroup = require('./POIGroup.js');
let Highways = require('./Highways.js');
let NavigationStatus = require('./NavigationStatus.js');
let EulerAngles = require('./EulerAngles.js');

module.exports = {
  VisualTrainingFeedback: VisualTrainingFeedback,
  JoyTurboActionGoal: JoyTurboActionGoal,
  GoToActionFeedback: GoToActionFeedback,
  GoToAction: GoToAction,
  ExecuteParkingResult: ExecuteParkingResult,
  VisualTrainingActionResult: VisualTrainingActionResult,
  JoyTurboGoal: JoyTurboGoal,
  VisualTrainingActionFeedback: VisualTrainingActionFeedback,
  VisualTrainingActionGoal: VisualTrainingActionGoal,
  FollowWaypointsGoal: FollowWaypointsGoal,
  ExecuteParkingActionResult: ExecuteParkingActionResult,
  GoToPOIActionResult: GoToPOIActionResult,
  ExecuteParkingAction: ExecuteParkingAction,
  GoToActionResult: GoToActionResult,
  GoToPOIActionGoal: GoToPOIActionGoal,
  ExecuteParkingFeedback: ExecuteParkingFeedback,
  FollowWaypointsAction: FollowWaypointsAction,
  ExecuteParkingActionFeedback: ExecuteParkingActionFeedback,
  GoToPOIGoal: GoToPOIGoal,
  GoToGoal: GoToGoal,
  JoyTurboActionFeedback: JoyTurboActionFeedback,
  JoyPriorityGoal: JoyPriorityGoal,
  GoToFeedback: GoToFeedback,
  GoToActionGoal: GoToActionGoal,
  ExecuteParkingActionGoal: ExecuteParkingActionGoal,
  GoToPOIResult: GoToPOIResult,
  JoyPriorityAction: JoyPriorityAction,
  JoyPriorityActionResult: JoyPriorityActionResult,
  JoyPriorityActionFeedback: JoyPriorityActionFeedback,
  JoyPriorityFeedback: JoyPriorityFeedback,
  JoyTurboResult: JoyTurboResult,
  FollowWaypointsFeedback: FollowWaypointsFeedback,
  GoToPOIFeedback: GoToPOIFeedback,
  JoyTurboFeedback: JoyTurboFeedback,
  VisualTrainingResult: VisualTrainingResult,
  FollowWaypointsResult: FollowWaypointsResult,
  GoToPOIActionFeedback: GoToPOIActionFeedback,
  FollowWaypointsActionFeedback: FollowWaypointsActionFeedback,
  JoyPriorityResult: JoyPriorityResult,
  FollowWaypointsActionResult: FollowWaypointsActionResult,
  FollowWaypointsActionGoal: FollowWaypointsActionGoal,
  JoyTurboAction: JoyTurboAction,
  GoToResult: GoToResult,
  JoyTurboActionResult: JoyTurboActionResult,
  ExecuteParkingGoal: ExecuteParkingGoal,
  VisualTrainingGoal: VisualTrainingGoal,
  GoToPOIAction: GoToPOIAction,
  JoyPriorityActionGoal: JoyPriorityActionGoal,
  VisualTrainingAction: VisualTrainingAction,
  TabletPOI: TabletPOI,
  MapConfiguration: MapConfiguration,
  POI: POI,
  ServiceStatus: ServiceStatus,
  EulerAnglesStamped: EulerAnglesStamped,
  LaserImage: LaserImage,
  MissedWaypoint: MissedWaypoint,
  NiceMapTransformation: NiceMapTransformation,
  PolarReadingScan: PolarReadingScan,
  AvailableMaps: AvailableMaps,
  Emergency: Emergency,
  Waypoint: Waypoint,
  VisualLocDB: VisualLocDB,
  PolarReading: PolarReading,
  POIGroup: POIGroup,
  Highways: Highways,
  NavigationStatus: NavigationStatus,
  EulerAngles: EulerAngles,
};
