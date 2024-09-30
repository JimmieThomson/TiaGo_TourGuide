
"use strict";

let SoundLocalisationService = require('./SoundLocalisationService.js')
let ASRService = require('./ASRService.js')
let GetSpeechDuration = require('./GetSpeechDuration.js')
let recognizerService = require('./recognizerService.js')

module.exports = {
  SoundLocalisationService: SoundLocalisationService,
  ASRService: ASRService,
  GetSpeechDuration: GetSpeechDuration,
  recognizerService: recognizerService,
};
