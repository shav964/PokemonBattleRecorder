class Pokemon < ApplicationRecord
  def increment_victories
    self.victories += 1
    check_badge
    save
  end
  private

  def check_badge
    if victories >= 10 && !badge_earned?
      self.badge_earned = true
      #バッジの表示や何らかの通知を行う処理を追加できる
    end
  end 
end 