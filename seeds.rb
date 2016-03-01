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
BoardSound.create(board: board, sound: sound)
