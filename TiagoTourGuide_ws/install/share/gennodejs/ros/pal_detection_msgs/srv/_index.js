
"use strict";

let SetDatabase = require('./SetDatabase.js')
let StopEnrollment = require('./StopEnrollment.js')
let SelectTexturedObject = require('./SelectTexturedObject.js')
let ChangeObjectRecognizerModel = require('./ChangeObjectRecognizerModel.js')
let AddTexturedObject = require('./AddTexturedObject.js')
let Recognizer = require('./Recognizer.js')
let StartEnrollment = require('./StartEnrollment.js')

module.exports = {
  SetDatabase: SetDatabase,
  StopEnrollment: StopEnrollment,
  SelectTexturedObject: SelectTexturedObject,
  ChangeObjectRecognizerModel: ChangeObjectRecognizerModel,
  AddTexturedObject: AddTexturedObject,
  Recognizer: Recognizer,
  StartEnrollment: StartEnrollment,
};
