require 'test_helper'

class SleeplogsControllerTest < ActionDispatch::IntegrationTest
  test "that a sleeplog is valid" do
    log = Sleeplog.new(
      night_of_date: "10/20/2021",
      bedtime: "11:55:00 PM",
      approximate_sleep_time: "12:40:00 AM",
      sleep_interrupted: 1,
      sleep_lost_from_interruptions: 0.50,
      wake_up_time: "08:45:00 AM",
      ate_spicy: true,
      drank_alcohol: false,
      sleep_meds: true,
      user_id: 6,
      notes: "slept well",
      useMarijuana: false
    )
    assert log.valid?, "Didn't save valid sleeplog"
  end
end
