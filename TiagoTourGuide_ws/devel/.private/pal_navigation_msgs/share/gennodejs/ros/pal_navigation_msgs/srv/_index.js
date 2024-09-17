
"use strict";

let SaveMap = require('./SaveMap.js')
let SafetyZone = require('./SafetyZone.js')
let GetSubMap = require('./GetSubMap.js')
let SetPOI = require('./SetPOI.js')
let FinalApproachPose = require('./FinalApproachPose.js')
let Acknowledgment = require('./Acknowledgment.js')
let GetNodes = require('./GetNodes.js')
let GetPOI = require('./GetPOI.js')
let ChangeBuilding = require('./ChangeBuilding.js')
let SetMapConfiguration = require('./SetMapConfiguration.js')
let ChangeMap = require('./ChangeMap.js')
let SetSubMapFloor = require('./SetSubMapFloor.js')
let RegisterSync = require('./RegisterSync.js')
let ChangeSyncMap = require('./ChangeSyncMap.js')
let ListMaps = require('./ListMaps.js')
let RenameMap = require('./RenameMap.js')
let VisualLocRecognize = require('./VisualLocRecognize.js')
let GetMapConfiguration = require('./GetMapConfiguration.js')
let DisableEmergency = require('./DisableEmergency.js')

module.exports = {
  SaveMap: SaveMap,
  SafetyZone: SafetyZone,
  GetSubMap: GetSubMap,
  SetPOI: SetPOI,
  FinalApproachPose: FinalApproachPose,
  Acknowledgment: Acknowledgment,
  GetNodes: GetNodes,
  GetPOI: GetPOI,
  ChangeBuilding: ChangeBuilding,
  SetMapConfiguration: SetMapConfiguration,
  ChangeMap: ChangeMap,
  SetSubMapFloor: SetSubMapFloor,
  RegisterSync: RegisterSync,
  ChangeSyncMap: ChangeSyncMap,
  ListMaps: ListMaps,
  RenameMap: RenameMap,
  VisualLocRecognize: VisualLocRecognize,
  GetMapConfiguration: GetMapConfiguration,
  DisableEmergency: DisableEmergency,
};
