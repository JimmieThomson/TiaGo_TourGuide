
"use strict";

let actiontag = require('./actiontag.js');
let VoiceActivity = require('./VoiceActivity.js');
let asrresult = require('./asrresult.js');
let Input = require('./Input.js');
let TTSstate = require('./TTSstate.js');
let AudioDeviceDescription = require('./AudioDeviceDescription.js');
let ASREvent = require('./ASREvent.js');
let asrupdate = require('./asrupdate.js');
let DirectionOfArrival = require('./DirectionOfArrival.js');
let InputArgument = require('./InputArgument.js');
let EnablingSoundLocalisation = require('./EnablingSoundLocalisation.js');
let TtsMark = require('./TtsMark.js');
let ASRStatus = require('./ASRStatus.js');
let AudioPlayerState = require('./AudioPlayerState.js');
let ASRActivation = require('./ASRActivation.js');
let ASRLanguage = require('./ASRLanguage.js');
let ASRSrvRequest = require('./ASRSrvRequest.js');
let ASRSrvResponse = require('./ASRSrvResponse.js');
let TtsText = require('./TtsText.js');
let audiosignal = require('./audiosignal.js');
let I18nText = require('./I18nText.js');
let WebGuiEvent = require('./WebGuiEvent.js');
let ASRLangModelMngmt = require('./ASRLangModelMngmt.js');
let I18nArgument = require('./I18nArgument.js');
let SoundActionFeedback = require('./SoundActionFeedback.js');
let SoundActionResult = require('./SoundActionResult.js');
let SoundActionGoal = require('./SoundActionGoal.js');
let AudioPlayActionGoal = require('./AudioPlayActionGoal.js');
let TtsActionGoal = require('./TtsActionGoal.js');
let ASRFileActionResult = require('./ASRFileActionResult.js');
let ASRFileActionGoal = require('./ASRFileActionGoal.js');
let TtsAction = require('./TtsAction.js');
let SoundFeedback = require('./SoundFeedback.js');
let TtsGoal = require('./TtsGoal.js');
let AudioPlayResult = require('./AudioPlayResult.js');
let TtsActionResult = require('./TtsActionResult.js');
let SoundAction = require('./SoundAction.js');
let AudioPlayActionFeedback = require('./AudioPlayActionFeedback.js');
let AudioPlayGoal = require('./AudioPlayGoal.js');
let AudioPlayFeedback = require('./AudioPlayFeedback.js');
let ASRFileResult = require('./ASRFileResult.js');
let ASRFileAction = require('./ASRFileAction.js');
let TtsActionFeedback = require('./TtsActionFeedback.js');
let SoundResult = require('./SoundResult.js');
let SoundGoal = require('./SoundGoal.js');
let TtsResult = require('./TtsResult.js');
let AudioPlayAction = require('./AudioPlayAction.js');
let ASRFileActionFeedback = require('./ASRFileActionFeedback.js');
let ASRFileGoal = require('./ASRFileGoal.js');
let AudioPlayActionResult = require('./AudioPlayActionResult.js');
let TtsFeedback = require('./TtsFeedback.js');
let ASRFileFeedback = require('./ASRFileFeedback.js');

module.exports = {
  actiontag: actiontag,
  VoiceActivity: VoiceActivity,
  asrresult: asrresult,
  Input: Input,
  TTSstate: TTSstate,
  AudioDeviceDescription: AudioDeviceDescription,
  ASREvent: ASREvent,
  asrupdate: asrupdate,
  DirectionOfArrival: DirectionOfArrival,
  InputArgument: InputArgument,
  EnablingSoundLocalisation: EnablingSoundLocalisation,
  TtsMark: TtsMark,
  ASRStatus: ASRStatus,
  AudioPlayerState: AudioPlayerState,
  ASRActivation: ASRActivation,
  ASRLanguage: ASRLanguage,
  ASRSrvRequest: ASRSrvRequest,
  ASRSrvResponse: ASRSrvResponse,
  TtsText: TtsText,
  audiosignal: audiosignal,
  I18nText: I18nText,
  WebGuiEvent: WebGuiEvent,
  ASRLangModelMngmt: ASRLangModelMngmt,
  I18nArgument: I18nArgument,
  SoundActionFeedback: SoundActionFeedback,
  SoundActionResult: SoundActionResult,
  SoundActionGoal: SoundActionGoal,
  AudioPlayActionGoal: AudioPlayActionGoal,
  TtsActionGoal: TtsActionGoal,
  ASRFileActionResult: ASRFileActionResult,
  ASRFileActionGoal: ASRFileActionGoal,
  TtsAction: TtsAction,
  SoundFeedback: SoundFeedback,
  TtsGoal: TtsGoal,
  AudioPlayResult: AudioPlayResult,
  TtsActionResult: TtsActionResult,
  SoundAction: SoundAction,
  AudioPlayActionFeedback: AudioPlayActionFeedback,
  AudioPlayGoal: AudioPlayGoal,
  AudioPlayFeedback: AudioPlayFeedback,
  ASRFileResult: ASRFileResult,
  ASRFileAction: ASRFileAction,
  TtsActionFeedback: TtsActionFeedback,
  SoundResult: SoundResult,
  SoundGoal: SoundGoal,
  TtsResult: TtsResult,
  AudioPlayAction: AudioPlayAction,
  ASRFileActionFeedback: ASRFileActionFeedback,
  ASRFileGoal: ASRFileGoal,
  AudioPlayActionResult: AudioPlayActionResult,
  TtsFeedback: TtsFeedback,
  ASRFileFeedback: ASRFileFeedback,
};
