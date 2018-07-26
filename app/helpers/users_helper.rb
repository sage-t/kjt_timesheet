module UsersHelper
    def sum_hours(user, pay_period)
        time = 0

        last_p = nil
        user.punches.select { |p| p.pay_period == pay_period }.each do |p|
            if last_p == nil
                last_p = p
            else
                time += p.time - last_p.time
                last_p = nil
            end
        end

        return (time / 3600).round(2)
    end
end
