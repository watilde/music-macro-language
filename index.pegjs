/**
 * Based on
 * https://github.com/pegjs/pegjs/blob/master/examples/javascript.pegjs
 * https://github.com/KatsuomiK/mml2smf/blob/master/parser/mml.pegjs
 * http://flmml.codeplex.com/wikipage?title=Reference
 **/

// Initial
Start = Track+

Track = (Commands:Command*) NextTrack {
  return Commands;
}

NextTrack = _ ";" _ {
  return null;
}

_ = (_WhiteSpace / _LineTerminatorSequence / _MultiLineCommentNoLineTerminator / Comment)*

Command = Comment / Note / Rest / Octave / OctaveUp / OctaveDown /
  NoteShiftAbsolute / NoteShiftRelative / OctaveReverse

// Interval
Note = _ tone:[CDEFGAB] _ accidentals:[-+]* _ length:$([0-9]*) _ dots:"."* _ {
  return {
    command: "note",
    tone: tone,
    accidentals: accidentals,
    length: +length,
    dots: dots
  };
}

Rest = _ "R" _ length:$([0-9]*) _ dots:"."* _ {
  return {
    command: "rest",
    length: +length,
    dots: dots
  };
}

Octave = _ "O" _ number:$("-"? [0-9]+) _ {
  if (0 > number || number > 8) {
    error("RangeError: Octave must be between 0 and 8");
  }
  return {
    command: "octave",
    number: +number
  };
}

OctaveUp = _ "<" _ {
  return {
    command: "octave_up"
  };
}

OctaveDown = _ ">" _ {
  return {
    command: "octave_down"
  };
}

NoteShiftAbsolute = _ "NS" _ number:$("-"? [0-9]+) _ {
  return {
    command: "node_shift",
    type: "absolute",
    number: +unmber
  };
}

NoteShiftRelative = _ "@NS" _ number:$("-"? [0-9]+) _ {
  return {
    command: "node_shift",
    type: "relative",
    number: +number
  }
}

OctaveReverse = _ "#OCTAVE REVERSE" _ {
  return {
    command: "octave_reverse"
  }
}

Detune = _ "@D" _ number:$("-"? [0-9]+) _ {
  return {
    command: "detune",
    number: +number
  }
}

// Meta
_SourceCharacter
  = .

_LineTerminator
  = [\n\r\u2028\u2029]

_MultiLineComment
  = "/*" (!"*/" _SourceCharacter)* "*/"

_SingleLineComment
  = "//" (!_LineTerminator _SourceCharacter)*

_WhiteSpace "whitespace"
  = "\t"
  / "\v"
  / "\f"
  / " "
  / "\u00A0"
  / "\uFEFF"

_LineTerminatorSequence "end of line"
  = "\n"
  / "\r\n"
  / "\r"
  / "\u2028"
  / "\u2029"

_MultiLineCommentNoLineTerminator
  = "/*" (!("*/" / _LineTerminator) _SourceCharacter)* "*/"

Comment "comment"
  = _MultiLineComment
  / _SingleLineComment
