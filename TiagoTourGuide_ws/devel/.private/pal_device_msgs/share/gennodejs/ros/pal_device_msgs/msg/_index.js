
"use strict";

let LedFixedColorParams = require('./LedFixedColorParams.js');
let LedFlowParams = require('./LedFlowParams.js');
let LedBlinkParams = require('./LedBlinkParams.js');
let LedEffectParams = require('./LedEffectParams.js');
let LedPreProgrammedParams = require('./LedPreProgrammedParams.js');
let LedProgressParams = require('./LedProgressParams.js');
let LedGroup = require('./LedGroup.js');
let BatteryState = require('./BatteryState.js');
let LedFadeParams = require('./LedFadeParams.js');
let LedEffectViaTopicParams = require('./LedEffectViaTopicParams.js');
let LedRainbowParams = require('./LedRainbowParams.js');
let LedDataArrayParams = require('./LedDataArrayParams.js');
let Bumper = require('./Bumper.js');
let DoTimedLedEffectFeedback = require('./DoTimedLedEffectFeedback.js');
let DoTimedLedEffectResult = require('./DoTimedLedEffectResult.js');
let DoTimedLedEffectActionResult = require('./DoTimedLedEffectActionResult.js');
let DoTimedLedEffectActionFeedback = require('./DoTimedLedEffectActionFeedback.js');
let DoTimedLedEffectGoal = require('./DoTimedLedEffectGoal.js');
let DoTimedLedEffectAction = require('./DoTimedLedEffectAction.js');
let DoTimedLedEffectActionGoal = require('./DoTimedLedEffectActionGoal.js');

module.exports = {
  LedFixedColorParams: LedFixedColorParams,
  LedFlowParams: LedFlowParams,
  LedBlinkParams: LedBlinkParams,
  LedEffectParams: LedEffectParams,
  LedPreProgrammedParams: LedPreProgrammedParams,
  LedProgressParams: LedProgressParams,
  LedGroup: LedGroup,
  BatteryState: BatteryState,
  LedFadeParams: LedFadeParams,
  LedEffectViaTopicParams: LedEffectViaTopicParams,
  LedRainbowParams: LedRainbowParams,
  LedDataArrayParams: LedDataArrayParams,
  Bumper: Bumper,
  DoTimedLedEffectFeedback: DoTimedLedEffectFeedback,
  DoTimedLedEffectResult: DoTimedLedEffectResult,
  DoTimedLedEffectActionResult: DoTimedLedEffectActionResult,
  DoTimedLedEffectActionFeedback: DoTimedLedEffectActionFeedback,
  DoTimedLedEffectGoal: DoTimedLedEffectGoal,
  DoTimedLedEffectAction: DoTimedLedEffectAction,
  DoTimedLedEffectActionGoal: DoTimedLedEffectActionGoal,
};
