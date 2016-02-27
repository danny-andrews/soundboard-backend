class Key
  VALID_CODES = [
    'KeyA', 'KeyB', 'KeyC', 'KeyD', 'KeyE', 'KeyF', 'KeyG', 'KeyH', 'KeyI',
    'KeyJ', 'KeyK', 'KeyL', 'KeyM', 'KeyN', 'KeyO', 'KeyP', 'KeyQ', 'KeyR',
    'KeyS', 'KeyT', 'KeyU', 'KeyV', 'KeyW', 'KeyX', 'KeyY', 'KeyZ'
  ]
  include DataMapper::Resource

  property :id, Serial, required: true
  property :code, String, required: true

 validates_within :code, set: VALID_CODES

 has n, :shortcuts
end
