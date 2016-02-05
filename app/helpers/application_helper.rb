module ApplicationHelper
  def selected_class min, max, referrals_count
    referrals_count >= min and referrals_count < max ? 'selected' : ''
  end

  def width_class referrals_count
    case referrals_count
    when 5..9 then '36%'
    when 10..24 then '54%'
    when 25..49 then '73%'
    when 50..1000 then '91%'
    end
  end
end
