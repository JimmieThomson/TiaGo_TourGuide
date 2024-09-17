
"use strict";

let recognizerService = require('./recognizerService.js')
let SoundLocalisationService = require('./SoundLocalisationService.js')
let GetSpeechDuration = require('./GetSpeechDuration.js')
let ASRService = require('./ASRService.js')

module.exports = {
  recognizerService: recognizerService,
  SoundLocalisationService: SoundLocalisationService,
  GetSpeechDuration: GetSpeechDuration,
  ASRService: ASRService,
};
