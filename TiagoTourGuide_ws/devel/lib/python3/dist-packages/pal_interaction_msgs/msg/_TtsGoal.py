# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pal_interaction_msgs/TtsGoal.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import pal_interaction_msgs.msg

class TtsGoal(genpy.Message):
  _md5sum = "9c88bf4a4d119474b8ae97c98892bc78"
  _type = "pal_interaction_msgs/TtsGoal"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
## goal definition

# utterance will contain indications to construct
# the text to be spoken.
# It must be specified in a section/key format 
# for internationalisation. The actual text will
# be obtained from configuration files as in pal_tts_cfg pkg.
 
I18nText text
TtsText rawtext

# This is to suggest a voice name to the 
# tts engine. For the same language we might have
# a variety of voices available, and this variable 
# is to choose one among them. 
# (not implemented yet)
string speakerName

# Time to wait before synthesising the text itself.
# It can be used to produced delayed speech.
float64 wait_before_speaking


================================================================================
MSG: pal_interaction_msgs/I18nText
# section/key is used as in examples in the pal_tts_cfg pkg.
string section
string key

# language id, must be speficied using RFC 3066
string lang_id

# arguments contain the values by which 
# occurrences of '%s' will be replaced in the 
# main text.
# This only supports up to 2 arguments and no recursion.
# However, recursion and more argumnents are
# planned to be supported in the future.
I18nArgument[] arguments

================================================================================
MSG: pal_interaction_msgs/I18nArgument
# section key, override the value in expanded.
# Use expanded for text that do not need expansion.
# Please note that expanded here will not be translated 
# to any language.

string section
string key
string expanded


================================================================================
MSG: pal_interaction_msgs/TtsText
# this message is to specify 
# raw text to the TTS server. 

string text

# Language id in RFC 3066 format
# This field is mandatory
string lang_id"""
  __slots__ = ['text','rawtext','speakerName','wait_before_speaking']
  _slot_types = ['pal_interaction_msgs/I18nText','pal_interaction_msgs/TtsText','string','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       text,rawtext,speakerName,wait_before_speaking

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TtsGoal, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.text is None:
        self.text = pal_interaction_msgs.msg.I18nText()
      if self.rawtext is None:
        self.rawtext = pal_interaction_msgs.msg.TtsText()
      if self.speakerName is None:
        self.speakerName = ''
      if self.wait_before_speaking is None:
        self.wait_before_speaking = 0.
    else:
      self.text = pal_interaction_msgs.msg.I18nText()
      self.rawtext = pal_interaction_msgs.msg.TtsText()
      self.speakerName = ''
      self.wait_before_speaking = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.text.section
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.text.key
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.text.lang_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.text.arguments)
      buff.write(_struct_I.pack(length))
      for val1 in self.text.arguments:
        _x = val1.section
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.key
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.expanded
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.rawtext.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.rawtext.lang_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.speakerName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.wait_before_speaking
      buff.write(_get_struct_d().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.text is None:
        self.text = pal_interaction_msgs.msg.I18nText()
      if self.rawtext is None:
        self.rawtext = pal_interaction_msgs.msg.TtsText()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.text.section = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.text.section = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.text.key = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.text.key = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.text.lang_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.text.lang_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.text.arguments = []
      for i in range(0, length):
        val1 = pal_interaction_msgs.msg.I18nArgument()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.section = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.section = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.key = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.key = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.expanded = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.expanded = str[start:end]
        self.text.arguments.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.rawtext.text = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.rawtext.text = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.rawtext.lang_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.rawtext.lang_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.speakerName = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.speakerName = str[start:end]
      start = end
      end += 8
      (self.wait_before_speaking,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.text.section
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.text.key
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.text.lang_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.text.arguments)
      buff.write(_struct_I.pack(length))
      for val1 in self.text.arguments:
        _x = val1.section
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.key
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.expanded
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.rawtext.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.rawtext.lang_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.speakerName
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.wait_before_speaking
      buff.write(_get_struct_d().pack(_x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.text is None:
        self.text = pal_interaction_msgs.msg.I18nText()
      if self.rawtext is None:
        self.rawtext = pal_interaction_msgs.msg.TtsText()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.text.section = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.text.section = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.text.key = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.text.key = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.text.lang_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.text.lang_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.text.arguments = []
      for i in range(0, length):
        val1 = pal_interaction_msgs.msg.I18nArgument()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.section = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.section = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.key = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.key = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.expanded = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.expanded = str[start:end]
        self.text.arguments.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.rawtext.text = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.rawtext.text = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.rawtext.lang_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.rawtext.lang_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.speakerName = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.speakerName = str[start:end]
      start = end
      end += 8
      (self.wait_before_speaking,) = _get_struct_d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_d = None
def _get_struct_d():
    global _struct_d
    if _struct_d is None:
        _struct_d = struct.Struct("<d")
    return _struct_d
