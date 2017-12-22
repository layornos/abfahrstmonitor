require_relative 'kvv'

SCHEDULER.every '20s', :first_in => 0 do
  groetz_id = "de:8212:1521"

  data_groetz = get_update_item(groetz_id)

  send_event('departures_groetz', data_groetz)
end
