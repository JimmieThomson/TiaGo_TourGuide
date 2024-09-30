
"use strict";

let SetDatabase = require('./SetDatabase.js')
let StopEnrollment = require('./StopEnrollment.js')
let StartEnrollment = require('./StartEnrollment.js')
let ChangeObjectRecognizerModel = require('./ChangeObjectRecognizerModel.js')
let SelectTexturedObject = require('./SelectTexturedObject.js')
let Recognizer = require('./Recognizer.js')
let AddTexturedObject = require('./AddTexturedObject.js')

module.exports = {
  SetDatabase: SetDatabase,
  StopEnrollment: StopEnrollment,
  StartEnrollment: StartEnrollment,
  ChangeObjectRecognizerModel: ChangeObjectRecognizerModel,
  SelectTexturedObject: SelectTexturedObject,
  Recognizer: Recognizer,
  AddTexturedObject: AddTexturedObject,
};
