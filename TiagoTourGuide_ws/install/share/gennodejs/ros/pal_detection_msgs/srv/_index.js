
"use strict";

let StopEnrollment = require('./StopEnrollment.js')
let SelectTexturedObject = require('./SelectTexturedObject.js')
let Recognizer = require('./Recognizer.js')
let AddTexturedObject = require('./AddTexturedObject.js')
let SetDatabase = require('./SetDatabase.js')
let ChangeObjectRecognizerModel = require('./ChangeObjectRecognizerModel.js')
let StartEnrollment = require('./StartEnrollment.js')

module.exports = {
  StopEnrollment: StopEnrollment,
  SelectTexturedObject: SelectTexturedObject,
  Recognizer: Recognizer,
  AddTexturedObject: AddTexturedObject,
  SetDatabase: SetDatabase,
  ChangeObjectRecognizerModel: ChangeObjectRecognizerModel,
  StartEnrollment: StartEnrollment,
};
