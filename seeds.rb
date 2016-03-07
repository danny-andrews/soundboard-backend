Key::VALID_CODES.each_with_index do |code, index|
  Key.create(id: index + 1, code: code)
end
ShortcutCommand::VALID_NAMES.each do |(name, id)|
  ShortcutCommand.create(id: id, name: name)
end
dj = Dj.create(stage_name: 'B-Trak')
board = Board.create(dj: dj, name: 'Main Board')
Config.create(dj: dj)
sound = Sound.create(
  display_name: 'Wow',
  filename: 'wow.mp3',
  uuid: 'wow.mp3'
)
sound = Sound.create(
  display_name: 'Ahh Victory',
  filename: 'wow.mp3',
  uuid: 'wow.mp3'
)
sound = Sound.create(
  display_name: 'AIRHORN',
  filename: 'AIRHORN.mp3',
  uuid: 'AIRHORN.mp3'
)
sound = Sound.create(
  display_name: 'Ahh Victory',
  filename: 'Ahh Victory.mp3',
  uuid: 'Ahh Victory.mp3'
)
sound = Sound.create(
  display_name: 'Behold, Me',
  filename: 'Behold, Me.mp3',
  uuid: 'Behold, Me.mp3'
)
sound = Sound.create(
  display_name: 'Do it live',
  filename: 'Do it live.mp3',
  uuid: 'Do it live.mp3'
)
sound = Sound.create(
  display_name: 'Dogs Barking',
  filename: 'Dogs Barking.mp3',
  uuid: 'Dogs Barking.mp3'
)
sound = Sound.create(
  display_name: 'Dramatic Beaver',
  filename: 'Dramatic Beaver.mp3',
  uuid: 'Dramatic Beaver.mp3'
)
sound = Sound.create(
  display_name: 'Fatality',
  filename: 'Fatality.mp3',
  uuid: 'Fatality.mp3'
)
sound = Sound.create(
  display_name: 'Fog Horn',
  filename: 'Fog Horn.mp3',
  uuid: 'Fog Horn.mp3'
)
sound = Sound.create(
  display_name: 'Kramer Oh YEAH',
  filename: 'Kramer Oh YEAH.mp3',
  uuid: 'Kramer Oh YEAH.mp3'
)
sound = Sound.create(
  display_name: 'Laugh Track',
  filename: 'Laugh Track.mp3',
  uuid: 'Laugh Track.mp3'
)
sound = Sound.create(
  display_name: 'Nelson Haha',
  filename: 'Nelson Haha.mp3',
  uuid: 'Nelson Haha.mp3'
)
sound = Sound.create(
  display_name: 'Off and On Again',
  filename: 'Off and On Again.mp3',
  uuid: 'Off and On Again.mp3'
)
sound = Sound.create(
  display_name: 'Razz Dazzler',
  filename: 'Razz Dazzler.mp3',
  uuid: 'Razz Dazzler.mp3'
)
sound = Sound.create(
  display_name: 'SIKE Thats the wrong number',
  filename: 'SIKE Thats the wrong number.mp3',
  uuid: 'SIKE Thats the wrong number.mp3'
)
sound = Sound.create(
  display_name: 'YEEEEAAAAAAAAHH',
  filename: 'YEEEEAAAAAAAAHH.mp3',
  uuid: 'YEEEEAAAAAAAAHH.mp3'
)
sound = Sound.create(
  display_name: 'Yeah',
  filename: 'Yeah.mp3',
  uuid: 'Yeah.mp3'
)
sound = Sound.create(
  display_name: 'and-his-name-is-john-cena-1',
  filename: 'and-his-name-is-john-cena-1.mp3',
  uuid: 'and-his-name-is-john-cena-1.mp3'
)
sound = Sound.create(
  display_name: 'cricket',
  filename: 'cricket.mp3',
  uuid: 'cricket.mp3'
)
sound = Sound.create(
  display_name: 'inception',
  filename: 'inception.mp3',
  uuid: 'inception.mp3'
)
sound = Sound.create(
  display_name: 'intervention',
  filename: 'intervention.mp3',
  uuid: 'intervention.mp3'
)
BoardSound.create(board: board, sound: sound)
