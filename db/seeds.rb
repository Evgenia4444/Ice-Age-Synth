@prototypes_data = [
  {
    name: 'First module / First prototype'
  },
  {
    name: 'First oscillator'
  },
  {
    name: 'Oscillator with React components'
  },
  {
    name: 'Tone.js basics'
  },
  {
    name: 'Tone.js with UI'
  },
  {
    name: 'Tone.js with UI, better change function'
  },
  {
    name: 'Tone.js with UI, composition'
  },
  {
    name: 'Tone.js with UI, sampler'
  },
  {
    name: 'Knob in UI, Show/Hide Instrument, Show/Hide UI Parts'
  },
  {
    name: 'JS Events And Surface UI Element'
  },
  {
    name: 'Effects UI as components'
  },
  {
    name: 'New UI Elements And Interactions (Random)'
  },
  {
    name: 'Settings Presets'
  },
  {
    name: 'My synth'
  }
]

def seed
  reset_db
  create_prototypes
end

def reset_db
  Rake::Task['db:drop'].invoke
  Rake::Task['db:create'].invoke
  Rake::Task['db:migrate'].invoke
end

def create_prototypes
  @prototypes_data.each do |prototype_data|
    prototype = Prototype.create!(prototype_data)
    puts "#{prototype.name} prototype just created"
  end
end

seed



