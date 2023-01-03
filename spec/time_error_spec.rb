require 'time_error'


RSpec.describe TimeError do
    it "returns the difference between remote and server time " do
       spoof_requester = double :requester
        allow(spoof_requester).to receive(:get).with(URI("http://worldtimeapi.org/api/timezone/Europe/London")).and_return('{"abbreviation":"GMT","client_ip":"8.8.8.8","datetime":"2023-01-01T23:43:14.593534+00:00","day_of_week":0,"day_of_year":1,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1672616594,"utc_datetime":"2023-01-01T23:43:14.593534+00:00","utc_offset":"+00:00","week_number":52}')
        time = Time.new(2023, 1, 1, 23, 43, 14)
        time_error = TimeError.new(spoof_requester)
        
        expect(time_error.error(time)).to eq 0.593534
    end

end