
"use strict";

let GetSpeechDuration = require('./GetSpeechDuration.js')
let ASRService = require('./ASRService.js')
let recognizerService = require('./recognizerService.js')
let SoundLocalisationService = require('./SoundLocalisationService.js')

module.exports = {
  GetSpeechDuration: GetSpeechDuration,
  ASRService: ASRService,
  recognizerService: recognizerService,
  SoundLocalisationService: SoundLocalisationService,
};
