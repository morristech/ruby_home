require 'spec_helper'

RSpec.describe RubyHome::Characteristic do
  describe '#unsubscribe' do
    it 'removes listener from list of listeners' do
      listener = double('listener')
      door = RubyHome::AccessoryFactory.create(:garage_door_opener)
      characteristic = door.characteristic(:target_door_state)

      characteristic.subscribe(listener)
      expect(characteristic.listeners).to eq [listener]

      characteristic.unsubscribe(listener)
      expect(characteristic.listeners).to eq []
    end

    it 'removes listeners from list of listeners' do
      listener_1 = double('listener')
      listener_2 = double('listener')
      door = RubyHome::AccessoryFactory.create(:garage_door_opener)
      characteristic = door.characteristic(:target_door_state)

      characteristic.subscribe(listener_1)
      characteristic.subscribe(listener_2)
      expect(characteristic.listeners).to include listener_1, listener_2

      characteristic.unsubscribe(listener_1, listener_2)
      expect(characteristic.listeners).to eq []
    end
  end

  describe '#after_update' do
    it 'subscribes to after_update events' do
      listener = spy('listener')
      fan = RubyHome::AccessoryFactory.create(:fan)
      characteristic = fan.characteristic(:on)

      characteristic.subscribe listener
      characteristic.value = true

      expect(listener).to have_received(:after_update).with(characteristic)
    end
  end
end
