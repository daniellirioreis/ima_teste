class StatusOs< EnumerateIt::Base
  associate_values :next_service                      => 0,
                   :order_in_progress                 => 1,
                   :waiting_for_approval              => 2,
                   :waiting_for_parts                 => 3,
                   :waiting_for_third_party_services  => 4,
                   :waiting_for_quality_control       => 5,
                   :scheduling                        => 6
end
