Key::VALID_CODES.each_with_index do |code, index|
  Key.create(id: index + 1, code: code)
end
ShortcutCommand::VALID_NAMES.values.each do |(name, id)|
  ShortcutCommand.create(id: id, name: name)
end
